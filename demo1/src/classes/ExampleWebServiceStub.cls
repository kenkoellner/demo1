//Generated by wsdl2apex

public class ExampleWebServiceStub {
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] level_type_info = new String[]{'level','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class address {
        public String city;
        public String country;
        public String countryCode;
        public String geocodeAccuracy;
        public String postalCode;
        public String state;
        public String stateCode;
        public String street;
        private String[] city_type_info = new String[]{'city','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] country_type_info = new String[]{'country','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] countryCode_type_info = new String[]{'countryCode','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] geocodeAccuracy_type_info = new String[]{'geocodeAccuracy','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] postalCode_type_info = new String[]{'postalCode','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] state_type_info = new String[]{'state','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] stateCode_type_info = new String[]{'stateCode','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] street_type_info = new String[]{'street','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'city','country','countryCode','geocodeAccuracy','postalCode','state','stateCode','street'};
    }
    public class createSampleOrder_element {
        public String customerId;
        public String partNumber;
        private String[] customerId_type_info = new String[]{'customerId','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] partNumber_type_info = new String[]{'partNumber','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'customerId','partNumber'};
    }
    public class getShipDate_element {
        public String orderId;
        private String[] orderId_type_info = new String[]{'orderId','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'orderId'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class DebuggingHeader_element {
        public ExampleWebServiceStub.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class upsertCustomer_element {
        public String contactId;
        public String firstName;
        public String lastName;
        private String[] contactId_type_info = new String[]{'contactId','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] firstName_type_info = new String[]{'firstName','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] lastName_type_info = new String[]{'lastName','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'contactId','firstName','lastName'};
    }
    public class getShipDateResponse_element {
        public Date result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class createSampleOrderResponse_element {
        public String result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class upsertCustomerResponse_element {
        public String result;
        private String[] result_type_info = new String[]{'result','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','true'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class SessionHeader_element {
        public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class location {
        public Double latitude;
        public Double longitude;
        private String[] latitude_type_info = new String[]{'latitude','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] longitude_type_info = new String[]{'longitude','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'latitude','longitude'};
    }
    public class AllowFieldTruncationHeader_element {
        public Boolean allowFieldTruncation;
        private String[] allowFieldTruncation_type_info = new String[]{'allowFieldTruncation','http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService','true','false'};
        private String[] field_order_type_info = new String[]{'allowFieldTruncation'};
    }
    public class ExampleWebService {
        public String endpoint_x = 'https://na8.salesforce.com/services/Soap/class/learn2turn/ExampleWebService';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public ExampleWebServiceStub.DebuggingInfo_element DebuggingInfo;
        public ExampleWebServiceStub.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public ExampleWebServiceStub.CallOptions_element CallOptions;
        public ExampleWebServiceStub.SessionHeader_element SessionHeader;
        public ExampleWebServiceStub.DebuggingHeader_element DebuggingHeader;
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService';
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService', 'ExampleWebServiceStub'};
        public String upsertCustomer(String contactId,String firstName,String lastName) {
            ExampleWebServiceStub.upsertCustomer_element request_x = new ExampleWebServiceStub.upsertCustomer_element();
            request_x.contactId = contactId;
            request_x.firstName = firstName;
            request_x.lastName = lastName;
            ExampleWebServiceStub.upsertCustomerResponse_element response_x;
            Map<String, ExampleWebServiceStub.upsertCustomerResponse_element> response_map_x = new Map<String, ExampleWebServiceStub.upsertCustomerResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'upsertCustomer',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'upsertCustomerResponse',
              'ExampleWebServiceStub.upsertCustomerResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public String createSampleOrder(String customerId,String partNumber) {
            ExampleWebServiceStub.createSampleOrder_element request_x = new ExampleWebServiceStub.createSampleOrder_element();
            request_x.customerId = customerId;
            request_x.partNumber = partNumber;
            ExampleWebServiceStub.createSampleOrderResponse_element response_x;
            Map<String, ExampleWebServiceStub.createSampleOrderResponse_element> response_map_x = new Map<String, ExampleWebServiceStub.createSampleOrderResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'createSampleOrder',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'createSampleOrderResponse',
              'ExampleWebServiceStub.createSampleOrderResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
        public Date getShipDate(String orderId) {
            ExampleWebServiceStub.getShipDate_element request_x = new ExampleWebServiceStub.getShipDate_element();
            request_x.orderId = orderId;
            ExampleWebServiceStub.getShipDateResponse_element response_x;
            Map<String, ExampleWebServiceStub.getShipDateResponse_element> response_map_x = new Map<String, ExampleWebServiceStub.getShipDateResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke( 
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'getShipDate',
              'http://soap.sforce.com/schemas/class/learn2turn/ExampleWebService',
              'getShipDateResponse',
              'ExampleWebServiceStub.getShipDateResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
}