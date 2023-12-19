// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage 
{
    uint256 number;

    uint256 [] listOfNumber;

    mapping(string => uint256) public nameToFavNumber;

    struct Person {
        uint256 favNumber;
        string name;
    }

    Person[] public listOfPerson;

    Person public myFriend = Person({
        name: "Yobel",
        favNumber: 5
    });

    //virtual supaya bisa di override
    function store(uint256 _number) public virtual
    {
        number = _number;
    }

    function retrieve() public view returns(uint256)
    {
        return number;
    }

    function addPerson(string memory _name, uint256 _favNumber) public 
    {
        listOfPerson.push(Person(_favNumber ,_name));
        nameToFavNumber[_name] = _favNumber;
    }
}