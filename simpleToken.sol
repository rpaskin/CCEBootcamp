// Versão do solidity
pragma solidity ^0.4.0;

contract SimpleToken
{
    uint supply;
    mapping ( address => uint ) balance;

    // O que é um modifier?
    modifier onlyOwner()
    {
      require(msg.sender == owner);

      // O que é esse símbolo?
      _ ;
    }

    // Construtor
    function SimpleToken(uint _supply) public
    {
      supply = _supply;
    }

    // Funcao transfer
    function transferTo(address to, uint amount) public onlyOwner
    {
      // Considerar overflow
      require( balance[to] + amount > balance[to]);

      balance[msg.sender] -= amount;
      balance[to] += amount;
    }
}

