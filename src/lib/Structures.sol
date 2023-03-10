// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../interface/IAccount.sol";
import "../interface/IAggregator.sol";

struct UserOperation {
    address sender;
    uint256 nonce;
    bytes initCode;
    bytes callData;
    uint256 callGasLimit;
    uint256 verificationGasLimit;
    uint256 preVerificationGas;
    uint256 maxFeePerGas;
    uint256 maxPriorityFeePerGas;
    bytes paymasterAndData;
    bytes signature;
}

struct UserOpsPerAggregator {
    UserOperation[] userOps;
    IAggregator aggregator;
    bytes signature;
}

struct ReturnInfo {
    uint256 preOpGas;
    uint256 prefund;
    bool sigFailed;
    uint64 validAfter;
    uint64 validUntil;
    bytes paymasterContext;
}

struct DepositInfo {
    uint112 deposit;
    uint112 stake;
    uint64 withdrawTime;
    uint32 unstakeDelaySec;
    bool staked;
}

struct AggregatorStakeInfo {
    address actualAggregator;
    DepositInfo depositInfo;
}