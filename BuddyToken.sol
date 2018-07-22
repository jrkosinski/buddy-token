pragma solidity ^0.4.17; 

import "./ERC20.sol"; 
import "./SafeMath.sol";

contract BuddyToken is ERC20 {
    mapping (address => uint) userToBalance;
    mapping (address => value) approvals; 

    struct Approval {
        address from; 
        address to; 
        uint value; 
    }

    using SafeMath for uint; 

    function totalSupply() public view returns (uint) {
        return 1000; 
    }

    function balanceOf(address _owner) public view returns (uint) {
        return userToBalance[_owner]; 
    }

    function transfer(address _to, uint _value) public returns (bool) {
        return transferFrom(msg.sender, _to, value); 
    }

    function transferFrom(address _from, address _to, uint _value) public returns (bool) {
        if (balanceOf(_from) < _value) 
            return false; 
        
        userToBalance[_to] = userToBalance[_to].add(_value); 
        userToBalance[_from] = userToBalance[_from].add(_value); 

        emit Transfer(_from, _to, _value); 
        return true; 
    }

    function approve(address _spender, uint _value) public returns (bool) {
        if (userToBalace[address(this)] < value) 
            return false;

        approvals[_spender] = value; 
        emit Approval(address(this), _spender, value); 
        return true; 
    }

    function allowance(address _owner, address _spender) public view returns (uint) {
        return 0;
    }
}