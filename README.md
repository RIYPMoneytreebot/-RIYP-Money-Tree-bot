// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IStrategy
/// @notice Defines a generic interface for DeFi automation strategies
/// @dev All strategies must be non-custodial and parameter constrained
interface IStrategy {
    /// @notice Execute a strategy action
    /// @param data Encoded parameters defining execution constraints
    function execute(bytes calldata data) external;

    /// @notice Validate strategy parameters before execution
    /// @param data Encoded parameters
    /// @return valid True if parameters are valid
    function validate(bytes calldata data) external view returns (bool valid);
}
