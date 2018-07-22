pragma solidity ^0.4.17; 

contract ERC20 {
    // Get the total token supply
    function totalSupply() view returns (uint);
 
    // Get the account balance of another account with address _owner
    function balanceOf(address _owner) view returns (uint balance);
 
    // Send _value amount of tokens to address _to
    function transfer(address _to, uint _value) returns (bool success);
 
    // Send _value amount of tokens from address _from to address _to
    function transferFrom(address _from, address _to, uint _value) returns (bool success);
 
    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    // If this function is called again it overwrites the current allowance with _value.
    // this function is required for some DEX functionality
    function approve(address _spender, uint _value) returns (bool success);
 
    // Returns the amount which _spender is still allowed to withdraw from _owner
    function allowance(address _owner, address _spender) view returns (uint remaining);
 
    // Triggered when tokens are transferred.
    event Transfer(address indexed _from, address indexed _to, uint _value);
 
    // Triggered whenever approve(address _spender, uint _value) is called.
    event Approval(address indexed _owner, address indexed _spender, uint _value);
7}