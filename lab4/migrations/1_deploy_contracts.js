const Counter = artifacts.require("Counter");
const Voting = artifacts.require("Voting");
module.exports = function(deployer) {
  deployer.deploy(Counter);
  deployer.deploy(Voting);
  
};