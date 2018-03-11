var TestToken = artifacts.require("TestToken");
var TestSupplier = artifacts.require("TestTokenSupplier")

module.exports = function(deployer) {
  const rate = new web3.BigNumber(1000);
  const wallet = "0x627306090abab3a6e1400e9345bc60c78a8bef57";
  

  deployer.deploy(TestToken).then(function() {
      return deployer.deploy(TestSupplier, rate, wallet, TestToken.address);
   });

};

