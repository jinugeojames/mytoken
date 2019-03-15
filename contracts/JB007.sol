pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";

contract JamesBondToken is ERC20,ERC20Burnable,ERC20Capped,ERC20Detailed,ERC20Mintable,ERC20Pausable{
    uint256 public totalSupply;  
    string public name;  
    uint32 public decimals;
    constructor() public {  
        symbol = "JB007";  
        name = "James Bond Token";  
        decimals = 5;  
        totalSupply = 100000000000000;  
        
        owner = msg.sender;  
        balances[msg.sender] = totalSupply;  
        
        emit Transfer(0x0, msg.sender, totalSupply);  
    }
}

