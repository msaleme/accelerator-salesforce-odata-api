
# accelerator-salesforce-odata-api

This is an OData API, which can be used to create an Salesforce Connect 
External Datasource in Salesforce. This API follows the OData Standard 
Notations. This API calls OMS System API to fetch order data. 

**Note:** Due to a deficiency in the OData plug-in module, the API
specification cannot be provided as an Exchange dependency for this
implementation.

## Available operations

### Get orders

The endpoint get:/api/odata.svc/orders is implemented to 
query order history data. The following query params act as filters in the
SQL query:
```
$format=json&startDate=2019-07-01&endDate=2020-09-27&top=5&skip=20&select=CUSTOMER_ID,SALES_ORDER_STATUS
```


### Get customer orders

The endpoint get:/api/odata.svc/orders('1') is implemented to 
query order history data for specific customer. The following query params act as filters in the
SQL query:
```
$format=json&startDate=2019-07-01&endDate=2020-09-27&select=CUSTOMER_ID,SALES_ORDER_STATUS
```

# Installation Instructions For Studio

The following instructions assume you have already configured your Maven 
`settings.xml` file according to the Setup Guide.

- Install the OData Plugin using the instructions in [this link](https://docs.mulesoft.com/apikit/4.x/creating-an-odata-api-with-apikit)
- Clone the project using any Github client or Anypoint Studio Git plugin
- Import the project into your workspace
- Modify the `config-local.yaml` properties appropriately
- To run the project, right-click the project and select Run As --> Mule Application

## Deployment instructions for CloudHub

Ensure the Maven profile `CloudHub-DEV` has been properly configured in your 
`settings.xml` file. In particular, make sure the Anypoint MQ client ID and secret 
are provided.

Update the `config-dev.yaml` properties appropriately and then use one of the following 
scripts to deploy application to Cloud Hub:
   
- packageDeploy.sh or deployOnly.sh (Mac/Linux)
- packageDeploy.cmd or deployOnly.cmd (Windows)
