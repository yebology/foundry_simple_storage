// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import { Script } from "forge-std/Script.sol";
import { SimpleStorage } from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script
{
    function run() external returns(SimpleStorage)
    {
        vm.startBroadcast(); // buat persiapan broadcast ke RPC
        SimpleStorage simpleStorage = new SimpleStorage(); // bakal dibroadcast ke RPC
        vm.stopBroadcast(); // berhenti broadcast ke RPC
        return simpleStorage;
    }
}