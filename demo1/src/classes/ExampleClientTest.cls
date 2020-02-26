@isTest public class ExampleClientTest {
 
 	private static final String TEST_CUSTOMER_NUMBER = 'cust123';
 	private static final String TEST_PART_NUMBER = 'part456';
 	private static final String TEST_ORDER_NUMBER = 'order456';
	private static final Date TEST_SHIP_DATE = System.today().addDays(30);
 	
    @testSetup static void setup() {
 	 		Account myAccount = new Account (name = 'Test Account');
 	 		insert myAccount;
 	 		Contact myContact = new Contact (FirstName = 'John',
 	 										LastName = 'Done',
 	 										AccountId = myAccount.Id);
 	 		insert myContact;								 
 	}   
 	 
 	private static testMethod void createSampleOrderTest() {
 	 	
 	 	// Set up Mock responses
        WebServiceMockImpl myMock = new WebServiceMockImpl();
        Test.setMock(WebServiceMock.class, myMock);
        
        ExampleWebServiceStub.upsertCustomerResponse_element upsertCustomerResponse
        		 = new ExampleWebServiceStub.upsertCustomerResponse_element();
        upsertCustomerResponse.result = TEST_CUSTOMER_NUMBER;
        myMock.addResponse(upsertCustomerResponse);
         
        ExampleWebServiceStub.createSampleOrderResponse_element createOrderResponse
        		 = new ExampleWebServiceStub.createSampleOrderResponse_element();
        createOrderResponse.result = TEST_ORDER_NUMBER;
        myMock.addResponse(createOrderResponse); 
        
        ExampleWebServiceStub.getShipDateResponse_element getShipDateResponse
        		 = new ExampleWebServiceStub.getShipDateResponse_element();
        getShipDateResponse.result = TEST_SHIP_DATE;
        myMock.addResponse(getShipDateResponse);
        
        // Get the setup data we need to test.
        Contact myContact = [ select Id, FirstName, LastName from Contact limit 1];
        
        // Run the test functionality.
        Test.startTest();
        Id orderId = ExampleClient.createSampleOrderForContact(myContact.Id, TEST_PART_NUMBER);
        Test.stopTest();       
        
        // Check that proper parameters were passed to each callout.
        ExampleWebServiceStub.upsertCustomer_element reqCust 
        			= (ExampleWebServiceStub.upsertCustomer_element) myMock.getRequest(); 
        System.assertEquals(myContact.id, reqCust.contactId, 'Incorrect contact Id passed to upsertCustomer.');
        System.assertEquals(myContact.FirstName, reqCust.FirstName, 'Incorrect FirstName passed to upsertCustomer.');
        System.assertEquals(myContact.LastName, reqCust.LastName, 'Incorrect LastName passed to upsertCustomer.');
        
        ExampleWebServiceStub.createSampleOrder_element reqOrder 
        			= (ExampleWebServiceStub.createSampleOrder_element) myMock.getRequest(); 
        System.assertEquals(TEST_CUSTOMER_NUMBER, reqOrder.customerId, 'Incorrect Customer Number passed to createSampleOrder.');
        System.assertEquals(TEST_PART_NUMBER, reqOrder.partNumber, 'Incorrect Part Number passed to createSampleOrder.');
        
        ExampleWebServiceStub.getShipDate_element reqShipDate 
        			= (ExampleWebServiceStub.getShipDate_element) myMock.getRequest(); 
        System.assertEquals(TEST_ORDER_NUMBER, reqShipDate.orderId, 'Incorrect Order Number passed to getShipDate.');
        
        // Check the results performed by the method. 
        SampleOrder__c resultOrder = [ select Name, Contact__c, Part_Number__c, Scheduled_Ship_Date__c 
        								from  SampleOrder__c 
        								where Id = :orderId ];
        System.assertEquals(myContact.Id, resultOrder.Contact__c, 'Incorrect Contact on Sample Order.');  								
        System.assertEquals(TEST_PART_NUMBER, resultOrder.Part_Number__c, 'Incorrect Part Number on Sample Order.');  								
        System.assertEquals(TEST_SHIP_DATE, resultOrder.Scheduled_Ship_Date__c, 'Incorrect Scheduled Ship Date on Sample Order.');  								

 	 }
}
