// Versão do solidity
pragma solidity ^0.4.0;

contract SimpleToken
{
    uint supply;
    mapping ( address => uint ) balance;

    // Construtor
    function SimpleToken(uint _supply) public
    {
      supply = _supply;
      balance[msg.sender] = supply;
    }

    function getBalance() public returns (uint)
    {
      return balance[msg.sender];
    }

    // Funcao transfer
    function transferTo(address to, uint amount) public
    {
      // Considerar overflow
      require( balance[to] + amount > balance[to]);

      balance[msg.sender] -= amount;
      balance[to] += amount;
    }
}


