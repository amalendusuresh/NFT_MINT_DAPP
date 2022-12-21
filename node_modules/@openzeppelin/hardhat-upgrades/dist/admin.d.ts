import type { HardhatRuntimeEnvironment } from 'hardhat/types';
import { Contract } from 'ethers';
export type ChangeAdminFunction = (proxyAddress: string, newAdmin: string) => Promise<void>;
export type TransferProxyAdminOwnershipFunction = (newOwner: string) => Promise<void>;
export type GetInstanceFunction = () => Promise<Contract>;
export declare function makeChangeProxyAdmin(hre: HardhatRuntimeEnvironment): ChangeAdminFunction;
export declare function makeTransferProxyAdminOwnership(hre: HardhatRuntimeEnvironment): TransferProxyAdminOwnershipFunction;
export declare function makeGetInstanceFunction(hre: HardhatRuntimeEnvironment): GetInstanceFunction;
export declare function getManifestAdmin(hre: HardhatRuntimeEnvironment): Promise<Contract>;
//# sourceMappingURL=admin.d.ts.map