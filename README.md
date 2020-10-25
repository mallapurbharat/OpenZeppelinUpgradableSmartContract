# OpenZeppelinUpgradableSmartContract
This sample project shows how to use OpenZeppelin Upgradable Smart Contracts


>>>>>>>>>> OPTIONAL SECTION (IF YOU WANT TO CREATE THIS PROJECT FROM SCRATCH >>>>>>>>>>>
If you wanted to creathe this project from scratch, ignore this section if downloading this project from Github.

HOWTO SETUP A NEW PROJECT WITH OpenZeppelin Upgradable smart contract features.
//setup the project folder
truffle init
npm init --y

//install all the dependencies

//install openzeppelin contracts libraries for ERC20, Roles etc

npm install --save @openzeppelin/contracts

//install openzeppelin libraries for upgradable smart contracts

npm install --save @openzeppelin/upgrades

//install the CLI so that we can interact with the upgradable smart contract using a command-line interface

npm install --save @openzeppelin/cli

>>>>>>>>>END OF OPTIONAL SECTION >>>>>>>>>


>>>>>> SECTION FOR INTERACTING WITH UPGRADABLE SMART CONTRACTS >>>>>>>>>>>

THIS SECTION can be done even after downloading the project from github.


//create OpenZeppelin project with a package.json and track the contracts there when compiled/deployed

oz init

//test if all contracts are compiling properly with all the dependencies

oz compile

//Run ganache-cli in a separate terminal window 

ganache-cli -d

//test if openzeppelin-cli is able to retrieve account information from the ganache-cli instance

oz accounts

//deploys a new upgradeable contract instance of the Add contract -> Select the network, and then select the Add contract to create and deploy the instance to the network


oz create

//now call Add read functions. you can call the u() function to read the current value of u.

oz call

//now call decrement transaction function. decrement u (currrently zero) by 1... An underflow should occur

oz send-tx


//confirm this by calling the u() function to read the underflowed value of u (u should now be 115792089237316195423570985008687907853269984665640564039457584007913129639935 - i.e 2**256 -1

oz call

//next change the Add.sol file to include SafeMath (you'll need to import the openzeppelin/contracts-ethereum-package in the source file)

//first add the evm-package for contracts-ethereum-package

npm install --save @openzeppelin/contracts-ethereum-package

//now lets upgrade the version! comment out the first part in ADD.sol and uncomment out the second part

//first, link the application to the dependency and update ganache-cli network to include this dependency

oz link @openzeppelin/contracts-ethereum-package

//now we ask openzeppelin to deploy the latest source code to the network

oz upgrade


//now we need to read the current value of u - it should still be a huge number 115792089237316195423570985008687907853269984665640564039457584007913129639935


//let's try to add one to this value of u. select the incrementBy function and add 1 to the value of u.
oz send-tx

//It would normally *overflow* to the value 0! But SafeMath add() doesn't allow this to happen and stops the overflow and throws an exception! 
//Hooray, we've fixed the bug in the upgraded smart contract!




