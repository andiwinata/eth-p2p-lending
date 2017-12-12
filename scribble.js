/* eslint-disable */
// get balance
web3.eth.getBalance('0x1cda875dc3f79a4c3418627194e7f91be2412180').toString();
web3.fromWei(web3.eth.getBalance('0x05058c65fbe27f5bd2539c387348ef6a396c4570')).toString();

// createLendingOffer
P2PLending.deployed().then(x => x.createLendingOffer(500, { value: web3.toWei(1, 'ether') }))

// assign P2PLending contract and get all event logs for LendingOfferCreated
let inst;
P2PLending.deployed().then(x => inst = x);

let lendingCreatedEvent = inst.LendingOfferCreated({}, { fromBlock: 0, toBlock: 'latest' });
lendingCreatedEvent.get((err, logs) => logs.forEach(l => console.log(l.args)))