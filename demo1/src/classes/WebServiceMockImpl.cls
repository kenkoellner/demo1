// This class allows callout testing with any WSDL-generatored callout class.
//   The test class should instantiate an instance of this class, then call addResponse() with each response that will be required during the test.
//   Then call Test.setMock() and do the testing.
//   After testing use getRequestList() to get all the requests that were done during the test.
//   Assert any results of the test are correct.
//   Assert the correct number off callouts were done.
//   Assert the correct parameter values were passed to the callouts.
//
@isTest global class  WebServiceMockImpl implements WebServiceMock  {
        
        private List<Object>responseList;
        private List<Object>requestList;
        
        global WebServiceMockImpl() {
            responseList = new List<Object>();
            requestList = new List<Object>();
        }
        
        // Call this at the beginning of your test to set up expected callout results.
        global void addResponse(Object response) {
            responseList.add(response);
        }
        
        // Call this after test to get the list of requests received to check that correct parameters were sent.
        global List<Object>getRequestList() {
            return requestList;
        }

		// Call this affter test to get the requests one at a time.
		global Object getRequest() {
			if (requestList.isEmpty()) {
				return null;
			}
			return requestList.remove(0);
		}
		
        //  Implementation of mock callout requires this method.  
        //    Store the request so it can be checked later.
        //    Return the first element in the response list.
        global void doInvoke(
                Object stub, 
                Object request, 
                Map<String, Object> response,
                String endpoint, 
                String soapAction, 
                String requestName,
                String responseNS, 
                String responseName, 
                String responseType) {
           
            requestList.add(request);
            if (!responseList.isEmpty()) {
                Object responseObj = responseList.remove(0);
                
                System.debug ('responseObj -- ' + responseObj);
                response.put('response_x', responseObj);
            }
            System.assertNotEquals(requestList.size(),0);
            return; 
        }
 
}