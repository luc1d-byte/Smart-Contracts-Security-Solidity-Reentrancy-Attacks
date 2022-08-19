function withdraw(uint withdrawAmount) public returns (uint) {
			
  			//Checks = verifications
           	require(withdrawAmount <= balances[msg.sender]);
	   		
  			//Effects = actions that will be executed, 
			//in this case, subtract the value of the wallet/contract
  			balances[msg.sender] -= withdrawAmount;
  			
  
  			//Interactions = withdraw the value of the wallet
  			msg.sender.call.value(withdrawAmount)("");

			return balances[msg.sender];
}
