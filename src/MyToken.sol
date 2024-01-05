// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC2O/ERC20.sol";

contract MyToken is ERC20{
    
    constructor() ERC20("MyTokenName","MTN"){}
}