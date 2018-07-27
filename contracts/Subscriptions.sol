pragma solidity ^0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

/* this contract is deployed by a user to manage their subscriptions to Grants  */

contract Subscriptions {

	address owner;

	mapping(uint => Subscription) public subscriptions;


	struct Subscription {
			address destination;
			address recipient;
			address agent;
			uint valuePerPeriod;
			uint period;
			uint expiration;
			uint nextWithdrawl;
			uint grantId;
	}

	event newSubscription(
		address _destination,
		address _recipient,
		address _agent,
		uint _valuePerPeriod,
		uint _period,
		uint _expiration,
		uint _grantId
		);

constructor() public {

}

function isValidSubscription() public {

}

function createSubscription(
	address _destination,
	address _recipient,
	address _agent,
	uint _valuePerPeriod,
	uint _period,
	uint _expiration,
	uint _grantId
	)
	public
	{

		Subscription storage sub = subscriptions[_grantId];

		sub.destination = _destination;
		sub.recipient =  _recipient;
		sub.agent = _agent;
		sub.valuePerPeriod = _valuePerPeriod;
		sub.period = _period;
		sub.expiration = _expiration;
		sub.grantId = _grantId;
		sub.nextWithdrawl = now + _period;

		emit newSubscription(_destination, _recipient, _agent, _valuePerPeriod, _period, _expiration, _grantId);
}

function editSubscription() public {

}

function cancelSubscription() public {

}

function executeSubscription() public {

}


function getSubsrciption() view {

}

function getUserSubscriptions() view {

}

}
