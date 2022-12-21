import { DeployOpts, ProxyKindOption, StandaloneValidationOptions, ValidationOptions } from '@openzeppelin/upgrades-core';
export type StandaloneOptions = StandaloneValidationOptions & DeployOpts & {
    constructorArgs?: unknown[];
    useDeployedImplementation?: boolean;
};
export type UpgradeOptions = ValidationOptions & StandaloneOptions;
export declare function withDefaults(opts?: UpgradeOptions): Required<UpgradeOptions>;
export type GetTxResponse = {
    getTxResponse?: boolean;
};
type Initializer = {
    initializer?: string | false;
};
export type DeployBeaconProxyOptions = ProxyKindOption & Initializer;
export type DeployBeaconOptions = StandaloneOptions;
export type DeployImplementationOptions = StandaloneOptions & GetTxResponse;
export type DeployProxyAdminOptions = DeployOpts;
export type DeployProxyOptions = StandaloneOptions & Initializer;
export type ForceImportOptions = ProxyKindOption;
export type PrepareUpgradeOptions = UpgradeOptions & GetTxResponse;
export type UpgradeBeaconOptions = UpgradeOptions;
export type UpgradeProxyOptions = UpgradeOptions & {
    call?: {
        fn: string;
        args?: unknown[];
    } | string;
};
export type ValidateImplementationOptions = StandaloneValidationOptions;
export type ValidateUpgradeOptions = ValidationOptions;
export {};
//# sourceMappingURL=options.d.ts.map