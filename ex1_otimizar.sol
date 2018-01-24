pragma solidity ^0.4.0;

contract StorageGasChallenge {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public constant returns (uint) {
        return storedData;
    }

    function increaseStorageBy(int value) public{
      for(int i = 0; i < value; i++){
        storedData += 1;
      }
    }

    function decreaseStorageBy(int value) public{
      for(int i = 0; i < value; i++){
        storedData -= 1;
      }
    }

    function isOdd(uint256 num) public returns (bool){
      if (num == 2**256 - 1){
        return true;
      } else if (num == 0){
        return false;
      }

      return isOdd(num + 2);
    }

    function isGreaterThanStoredData(uint256 num) public returns (bool){
        if(num > storedData){
            return true;
        }else{
            return false;
        }
    }
}
