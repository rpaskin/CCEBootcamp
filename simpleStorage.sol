// Versão do solidity
pragma solidity ^0.4.0;

contract SimpleStorage
{
    uint storedData;
    address owner;

    // O que é um modifier?
    modifier onlyOwner()
    {
      require(msg.sender == owner);

      // Qual o proposito desse simbolo?
      _ ;
    }

    // Construtor
    function SimpleStorage(uint _storedData) public
    {
      storedData = _storedData;
      owner = msg.sender;
    }

    // Funcao Set
    function set(uint x) public onlyOwner
    {
        storedData = x;
    }

    // Funcao get, o que é a o view?
    function get() public view returns (uint)
    {
        return storedData;
    }
}

