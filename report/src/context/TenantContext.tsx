import { createContext, useContext, useState, useMemo } from "react"

// eslint-disable-next-line @typescript-eslint/no-explicit-any
type TenantResult = Record<string, any>

interface TenantContextType {
  tenants: TenantResult[]
  selectedIndex: number
  selectedTenant: TenantResult
  setSelectedIndex: (index: number) => void
}

const TenantContext = createContext<TenantContextType | null>(null)

export function useTenant(): TenantContextType {
  const ctx = useContext(TenantContext)
  if (!ctx) {
    throw new Error("useTenant must be used within a TenantProvider")
  }
  return ctx
}

interface TenantProviderProps {
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  testResults: any
  children: React.ReactNode
}

/**
 * Normalizes test results into a multi-tenant array.
 * Supports both legacy single-tenant format and new multi-tenant format.
 */
// eslint-disable-next-line @typescript-eslint/no-explicit-any
function normalizeTenants(testResults: any): TenantResult[] {
  let rawTenants: any[] = [];
  if (Array.isArray(testResults?.Tenants) && testResults.Tenants.length > 0) {
    rawTenants = testResults.Tenants;
  } else if (testResults) {
    rawTenants = [testResults];
  } else {
    rawTenants = [];
  }

  // Filter each tenant to only include CIS rules/checks, and update counts/blocks
  return rawTenants.map((tenant) => {
    if (!tenant || !Array.isArray(tenant.Tests)) {
      return tenant;
    }

    const cisTests = tenant.Tests.filter((test: any) => {
      const hasCisBlock = test.Block && test.Block.toUpperCase() === 'CIS';
      const hasCisTag = Array.isArray(test.Tag) && test.Tag.some((t: any) => typeof t === 'string' && t.toUpperCase().includes('CIS'));
      return hasCisBlock || hasCisTag;
    });

    const passedCount = cisTests.filter((t: any) => t.Result === 'Passed').length;
    const failedCount = cisTests.filter((t: any) => t.Result === 'Failed').length;
    const errorCount = cisTests.filter((t: any) => t.Result === 'Error').length;
    const investigateCount = cisTests.filter((t: any) => t.Result === 'Investigate').length;
    const skippedCount = cisTests.filter((t: any) => t.Result === 'Skipped').length;
    const notRunCount = cisTests.filter((t: any) => t.Result === 'NotRun').length;
    const totalCount = cisTests.length;

    const cisBlocks = Array.isArray(tenant.Blocks)
      ? tenant.Blocks.filter((block: any) => block.Name && block.Name.toUpperCase() === 'CIS')
      : [];

    if (cisBlocks.length === 0 && cisTests.length > 0) {
      cisBlocks.push({
        Name: "CIS",
        PassedCount: passedCount,
        FailedCount: failedCount,
        ErrorCount: errorCount,
        InvestigateCount: investigateCount,
        SkippedCount: skippedCount,
        NotRunCount: notRunCount,
        TotalCount: totalCount,
      });
    } else {
      for (let i = 0; i < cisBlocks.length; i++) {
        cisBlocks[i] = {
          ...cisBlocks[i],
          PassedCount: passedCount,
          FailedCount: failedCount,
          ErrorCount: errorCount,
          InvestigateCount: investigateCount,
          SkippedCount: skippedCount,
          NotRunCount: notRunCount,
          TotalCount: totalCount,
        };
      }
    }

    return {
      ...tenant,
      Tests: cisTests,
      Blocks: cisBlocks,
      PassedCount: passedCount,
      FailedCount: failedCount,
      ErrorCount: errorCount,
      InvestigateCount: investigateCount,
      SkippedCount: skippedCount,
      NotRunCount: notRunCount,
      TotalCount: totalCount,
    };
  });
}

export function TenantProvider({ testResults, children }: TenantProviderProps) {
  const tenants = useMemo(() => normalizeTenants(testResults), [testResults])
  const [selectedIndex, setSelectedIndex] = useState(0)
  const selectedTenant = tenants[selectedIndex] ?? tenants[0]

  const value = useMemo(
    () => ({ tenants, selectedIndex, selectedTenant, setSelectedIndex }),
    [tenants, selectedIndex, selectedTenant]
  )

  return (
    <TenantContext.Provider value={value}>
      {children}
    </TenantContext.Provider>
  )
}
