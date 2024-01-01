// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {MyContract} from "../src/MyContract.sol";

contract MyContractTest is Test {
    MyContract public myContract;

    function setUp() public {
        myContract = new MyContract();
    }

    function testIAlwaysGetZero() public {
        uint256 data = 0;
        myContract.doStuff(data);
        assert(myContract.shouldAlwaysBeZero() == 0);
    }

     function testIAlwaysGetZeroFuzz( uint256 data) public {
        //uint256 data = 0;
        myContract.doStuff(data);
        assert(myContract.shouldAlwaysBeZero() == 0);
    }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
