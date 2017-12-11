var P2PLending = artifacts.require('./P2PLending.sol')

module.exports = function(deployer) {
  deployer.deploy(P2PLending)
}
