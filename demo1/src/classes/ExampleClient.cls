public with sharing class ExampleClient {
    
    // This method verifies there is a customer in our external system for a Contact,
    //   creates a sample order for a specified part number for that customer,
    //   gets the scheduled shipping date for that order,
    //   and records the order in a custom object.
    public static Id createSampleOrderForContact(Id contactId, String partNumber) {
		
		ExampleWebServiceStub.ExampleWebService stub = new ExampleWebServiceStub.ExampleWebService(); 
		Contact myContact = [ select Id, FirstName, LastName
								from Contact
								where Id =: contactId];
		
		String customerNumber = stub.upsertCustomer(myContact.id, myContact.FirstName, myContact.LastName);
		
		String orderNumber = stub.createSampleOrder(customerNumber, partNumber); 
		
		Date shipDate = stub.getShipDate(orderNumber);
		
		SampleOrder__c sampleOrder = new SampleOrder__c (	Name = orderNumber,
															contact__c = myContact.id,
															part_number__c = partNumber,
															Scheduled_Ship_Date__c = shipDate);
		insert sampleOrder;
		
    	return sampleOrder.Id;
    }

}