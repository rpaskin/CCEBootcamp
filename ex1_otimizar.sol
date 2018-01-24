pragma solidity ^0.4.0;

contract StorageGasChallenge 
{
    uint storedData;
    uint[] employees;
    function set(uint x) public 
    {
        storedData = x;
    }

    function addEmployee(uint id)
    {
        employees.push(id);
    }
    
    function validEmployee(uint id, uint[] list) public returns(bool)
    {
        for(uint i = 0; i < list.length; i++)
        {
            if(list[i]==id)
            {
                return true;
            }
            
        }
        return false;
    }
    
    function get() public constant returns (uint) 
    {
        return storedData;
    }

    function increaseStorageBy(uint value) public
    {
      for(uint i = 0; i < value; i++)
      {
        storedData += 1;
      }
    }

    function decreaseStorageBy(uint value) public
    {
      for(uint i = 0; i < value; i++)
      {
        storedData -= 1;
      }
    }

    function isOdd(uint256 num) public returns (bool)
    {
      if (num == 2**256 - 1)
      {
        return true;
      }
      else if (num == 0)
      {
        return false;
      }

      return isOdd(num + 2);
    }

    function isGreaterThanStoredData(uint256 num) public returns (bool)
    {
        if(num > storedData)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    
    
    function isDataPrime() public view returns (bool) 
    {
        uint num = 2;
        
        while ( num < storedData )
        {
            if ( storedData % num == 0 )
            {
                return false;
            }
            
            num = num + 1;
        }
        return true;
    }
    
    function findTheClosestPowerofTwoToStoreData() public view returns (uint)
    {
        uint power = 1;
        uint num = 2;
        
        while ( num < storedData )
        {
            uint iterations = num ;
            while ( iterations > 0 )
            {
                num = num + 1;
                iterations = iterations - 1;
            }
            
            power = power + 1;
        }
        
        return power;
    }
}
