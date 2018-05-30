---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>
  

search: true
---

# Introduction

Welcome to the Workiva Developer API. The Workiva Developer API is designed to support a variety of use cases that help our customers bring more data, from more sources, into the Workiva platform. While the source system may vary, a typical integration will look something like the following four step workflow:

### 4-Step Workflow

1. Fetch data from the source system.
2. Transform the source data into the desired format.
3. Obtain and use a token using a client secret to authenticate with Wdesk.
4. Put data into Wdesk Spreadsheets.

# Setup

The following steps will need to be performed by an administrator of your Wdesk account. If you’re not an administrator, please contact your account administrator to discuss becoming an administrator, or work with them to complete the process of creating an integration user and authentication grant, as outlined below.

## Creating an Integration User

The first thing you’ll want to do is to create a new Wdesk user, or users, that will be used for the integration. In the next section, you’ll create an OAuth2 grant associated with the Wdesk integration user. Any calls using the API will be done on behalf of that user and any historical edits to a Wdesk document will show as being made by the user that is associated with the OAuth2 grant. APIs will respect user permissions, so you will need to ensure that the provided user has appropriate access to the data that you’d like to integrate with.

At this time, we do not provide a separate integration user role, so you’ll need to create a new user and associate that user with the OAuth2 grant. Your integration user will need to be a Creator or Manager in order to make changes to documents. Creating a new user for the integration, instead of using an existing user, will also help limit the documents that the integration has access to, and will mark a clear separation between edits performed by an actual user and those performed through an integration.

**Best Practice:** We recommend creating a unique user for each integration. This will help make it more clear which changes were made by each integration and will allow you to limit the scope of access for each integration to only the documents appropriate for that integration.

## Creating an OAuth2 Grant in Wdesk

Now that you have an integration user, we’ll cover everything needed to create the authentication grant needed to access the Workiva Developer API.

Login into Wdesk as an account administrator and create an OAuth2 grant from the Account Admin People tab:

* Select "Admin" from Wdesk Home.
  * Select "Account Admin" from the “Admin” menu
  ![account admin tab](images/account_admin_tab.png)
* Select the "People" tab.
  * Select the "OAuth2 Grants" tab <br />
  ![oauth2 grants tab](images/oauth2_grant.png)
* In the "Add An OAuth2 Grant" menu enter the information below.
  * **Grant Name** - This is the name of the system that will be authenticated by the grant.
  * **Username** - This is the username that will be used to authentic the user within Wdesk.
  * **Scope** - This specifies the action that the system can take on behalf of this user. For example, to integrate with Spreadsheets, add "Spreadsheets (Read) to allow reading of Spreadsheet data and “Spreadsheets (Write)" to allow writing Spreadsheet data.
  * **Expiration** - This is the date that the grant will expire. This is configurable based on the security policies and preferences of our customers.

Once the grant has been created the Wdesk user will click "Edit" from the “OAuth2 Grants” menu, which will open a dialog that includes the following:

* **Client ID** - This is a randomly generated ID that will be used to identify users of this grant.
* **Client Secret** - This is a randomly generated ID that will be used to authenticate users of this grant.

With the "OAuth2 Grants" still open:

  * Copy the Client ID and Client Secret from the "OAuth2 Grants" Edit window and store it somewhere safe.

# Authentication

The Workiva Developer API is secured using an OAuth 2.0 [Client Credentials Grant](https://tools.ietf.org/html/rfc6749#section-4.4) implementation. This authentication flow follows three steps:

1. Obtain a client id and client secret.
2. Using the client id and client secret, make a POST request to the `oauth2/token` endpoint to exchange these credentials for a bearer token.
3. When accessing the REST API, use the bearer token to authenticate.

Keep in mind that the consumer key/secret pair and the bearer token itself grant access to make requests on your behalf. These values should be considered as sensitive as passwords and must not be shared or distributed to untrusted parties.

This manner of authentication is only secure if SSL is used. Therefore, all requests must use HTTPS.

## Making Authenticated Requests

### Step 1. Obtain a Client Id and Client Secret

First, make sure you have your client id and client secret handy. Store these somewhere safe.

> Example request:

```shell
POST /iam/v1/oauth2/token HTTP/1.1
Host: api.app.wdesk.com
Content-Type: application/x-www-form-urlencoded;charset=UTF-8
client_id=<your-client-id>&client_secret=<your-client-secret>&grant_type=client_credentials
```

> Example response:

```json
HTTP/1.1 200 OK
Content-Type: application/json
Date: Thu, 19 Jan 2017 19:41:37 GMT
{
    "access_token": "ey...",
    "expires_in": 599,
    "scope": "data_tables|r data_tables|w",
    "token_type": "Bearer"
}
```

### Step 2. Exchange Client Credentials for a Bearer Token

The client id and client secret must be exchanged for a bearer token by issuing a POST request to `/iam/v1/oauth2/token`:

* The request must be a HTTPS POST request.
* The request must include a Content-Type header with the value of `application/x-www-form-urlencoded;charset=UTF-8`.
* The body of the request must include `client_id=<your-client-id>`, `client_secret=<your-client-secret>`, and `grant_type=client_credentials`.

**Need to put in example request and example response**

The value associated with the `access_token` field in the response is the bearer token to use on subsequent requests.

> Example request:

```shell
GET /spreadsheets/<version>/spreadsheet/12345
Host: api.app.wdesk.com
Authorization: Bearer ey...
```

### Step 3. Authenticate API requests with the Bearer Token

The bearer token obtained in Step 2 is used to issue requests to Workiva Developer API endpoints. To use the bearer token, construct a normal HTTPS request and include an Authorization header with the value of `Bearer <your-bearer-token>`.

# Create a New Tag
```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"created": "2018-05-25T23:16:35.093Z", "id": "string", "key": "string", "updated": "2018-05-25T23:16:35.093Z", "userId": "string", "values": ["string"], "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "created": "2018-05-25T23:16:35.093Z",
    "id": "string",
    "key": "string",
    "updated": "2018-05-25T23:16:35.093Z",
    "userId": "string",
    "values": [
      "string"
    ],
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/tag`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
tagDto | required | tagDto | body | Object

### Object attributes

**tagDto**

Attribute | Value | Description | Data Type
--------- | --------- | ------- | ----------- | -----------
created | required | Datetime tag was created | string
id | required | tag id | string
key | required | tag key | string
updated | required | Datetime of last update | string
userId | required | Id of the user | string
values | optional | List of values used to populate the drop down | string[]
version | optional | Version number of the model | integer


<aside class="success">
Response Class (Status 201)
Created
</aside>

# Create A New Select List

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"created": "2018-05-25T23:16:34.953Z", "description": "string", "id": "string", "name": "string", "type": "string", "updated": "2018-05-25T23:16:34.953Z", "userId": "string", "valueType": "boolean", "values": [{}], "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "created": "2018-05-25T23:16:34.953Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "type": "string",
    "updated": "2018-05-25T23:16:34.953Z",
    "userId": "string",
    "valueType": "boolean",
    "values": [
      {}
    ],
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/selectlist`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
selectListDto | required | selectListDto | body | Object

### Object attributes

**selectListDto**

Attribute | Value | Description | Data Type
--------- | --------- | ------- | ----------- | -----------
created | required | Datetime select list was created | string
description | optional | Description of select list (Max length: 1024) | string
id | required | Id of select list | string
name | required | name of select list | string
type | required | This is currently not used | string
updated | required | Datetime select list was last updated | string
userId | required | Id of user making changes | string
valueType | optional | Defines the types of items in the list (e.g. 'boolean' or 'integer') | string
values | optional | List of possible values for the list. These will be validated against the valueType provided | array
version | optional | Version number of the select list | integer


<aside class="success">
Response Class (Status 201)
Created
</aside>

# Upload Data to a Table

## Create a new table

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"body": {"created": "2018-05-25T23:16:35.010Z", "deleted": false, "description": "string", "id": "string", "name": "string", "tableSchema": {"columns": [{"alias": "string", "description": "string", "metadata": {}, "mode": "nullable", "name": "string", "type": "boolean"}]}, "type": "lookup", "updated": "2018-05-25T23:16:35.010Z", "userId": "string", "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "created": "2018-05-25T23:16:35.010Z",
    "deleted": false,
    "description": "string",
    "id": "string",
    "name": "string",
    "tableSchema": {
      "columns": [
        {
          "alias": "string",
          "description": "string",
          "metadata": {},
          "mode": "nullable",
          "name": "string",
          "type": "boolean"
        }
      ]
    },
    "type": "lookup",
    "updated": "2018-05-25T23:16:35.010Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/table`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
body | required | body | body | Object

### Object attributes

**TableDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
created | read only | Datetime table was created | string
deleted | read only | Stores whether the table has been deleted | boolean
description | optional | Description of the table (Max length: 255) | string
id | read only | Id of the table | string
name | optional | Name of the table (Max length: 150) | string
tableScheme | | Information about the columns | Object
type | ['lookup', 'data'] | Type of table | string
updated | read only | Time the table was last updated | string
userId | read only | The id of the user who created the table | string
version | optional, read only | Not sure | integer

**TableSchema**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
columns | | List of columns in the table. Must be at least one in size. | Array[ColumnDto]

**ColumnDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
alias | optional | Column alias (Max length: 255) | string
description | optional | Description of column (Max length: 255) | string
metadata | optional | Optional type metadata | inline_model\_0
mode | optional | Set for future use. Currently always set to 'nullable' | ['nullable', 'required']
name | | Name of the column (Max length: 100) | string
type | | Type of data in the column | ['boolean', 'float', 'integer', 'string', 'timestamp']

<aside class="success">
Response Class (Status 201)
Created
</aside>

## Upload data to a file

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"columnMappings": {}, "created": "2018-05-25T23:16:34.748Z", "id": "string", "key": "string", "name": "string", "numErrors": 0, "numRecords": 0, "source": "string", "status": "STAGING", "tableId": "string", "tags": {}, "updated": "2018-05-25T23:16:34.748Z", "userId": "string", "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "columnMappings": {},
    "created": "2018-05-25T23:16:34.748Z",
    "id": "string",
    "key": "string",
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {},
    "updated": "2018-05-25T23:16:34.748Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/file`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
file | required | file | formData | file
tableId | required | associated table id | formData | string

<aside class="success">
Response Class (Status 201)
Created
</aside>

## Insert data into the table

This endpoint inserts data from an uploaded file into a table.

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"columnMappings": {}, "created": "2018-05-25T23:16:35.052Z", "id": "string", "key": "string", "name": "string", "numErrors": 0, "numRecords": 0, "source": "string", "status": "STAGING", "tags": {}, "updated": "2018-05-25T23:16:35.052Z", "userId": "string", "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "columnMappings": {},
    "created": "2018-05-25T23:16:35.052Z",
    "id": "string",
    "key": "string",
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {},
    "updated": "2018-05-25T23:16:35.052Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/table/{tableId}/import`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
tableId | required | tableId | path | string
importDto | required | importDto | body | Object

### Object attributes

**importDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
columnMappings | optional | A map of import column names to table column ids | inline_model\_3
fileId | | id of the file to import to the table | string
metatdata | optional | For overriding column metadata specifically for this import. The keys in this object are column identifiers with the values being metadata objects | inline_model\_4
tags | optional | an object containing keys and values which becomes the tag map | Object inline_model\_5 | Object

<aside class="success">
Response Class (Status 200)
OK
</aside>

# Find And Download Data

## Create a query object

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"created": "2018-05-25T23:16:34.837Z", "description": "string", "id": "string", "name": "string", "parameters": [{"choices": [{}], "mode": "singleSelect", "name": "string", "selectListId": "string", "type": "boolean", "value": {}}], "primaryQueryResultId": "string", "queryText": "string", "temporary": false, "type": "string", "updated": "2018-05-25T23:16:34.838Z", "userId": "string", "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "created": "2018-05-25T23:16:34.837Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "parameters": [
      {
        "choices": [
          {}
        ],
        "mode": "singleSelect",
        "name": "string",
        "selectListId": "string",
        "type": "boolean",
        "value": {}
      }
    ],
    "primaryQueryResultId": "string",
    "queryText": "string",
    "temporary": false,
    "type": "string",
    "updated": "2018-05-25T23:16:34.838Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/query`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
queryDto | required | queryDto | body | Object

### Object attributes

**queryDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
created | read only | Time query was created | string
description | optional | Description of the query | string
id | read only | Id of the query | string
name | optional | Name of the query | string
parameters | optional | Parameters for the query. | Array[QueryParameterDto]
primaryQueryResultId | optional | For future use. Currently not populated. | string
queryText | required | Must be a valid DML statement. (Max size: 10,000) Parameters must be preceded by a colon. For example, "SELECT * WHERE name=:name" | string
temporary | optional | Denotes if the query is meant to be temporary. Default is false. | boolean
type | optional | Depricated. Will be set to "advanced." | string
updated | read only | Time the query was last updated | string
userId | read only | Id of the user who created the query | string
version | optional, read only | Version number of the query | integer

**QueryParameterDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
choices | optional, read only | If the parameter is of type select, this is a list of possible choices. | Array[Inline Model 1]
mode | | Use 'singleSelect' for a select list. Use 'scalar' for a value such as an integer or string. | ['singleSelect', 'scalar']
type | | Type of data | ['boolean', 'float', 'integer', 'string', 'timestamp']
value | optional | Not sure | Object

<aside class="success">
Response Class (Status 201)
Created
</aside>

## Run the query

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  -H "accept: application/json"
  -H "Content-Type application/json"
  -H "Content-Type: application/x-www-form-urlencoded"
  -X POST -d '{"body": {"bytesScanned": 0, "created": "2018-05-28T06:16:44.709Z", "duration": 0, "id": "string", "parameters": {}, "queryId": "string", "queryText": "string", "updated": "2018-05-28T06:16:44.709Z", "userId": "string", "version": 0}, "code": 0}'
  /s/cerebral/api/v0/tag
```

```json
{
  "body": {
    "bytesScanned": 0,
    "created": "2018-05-28T06:16:44.709Z",
    "duration": 0,
    "id": "string",
    "parameters": {},
    "queryId": "string",
    "queryText": "string",
    "updated": "2018-05-28T06:16:44.709Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

### HTTP Request

`POST /s/cerebral/api/v0/queryresult`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
queryResultDto | required | queryResultDto | body | Object

### Object attributes

**queryResultDto**

Attribute | Value | Description | Data Type
--------- | ------- | ----------- | -----------
bytesScanned | read only | Number of bytes scanned | integer
created | read only | Time the result was created | string
duration | read only | Time the query ran (milliseconds | integer
id | read only | Id of the query | string
parameters | optional | Values for parameters | inline_model\_7
queryId | | Id of the query | string
queryText | read only | The result of the query | string
updated | read only | Time the query was last updated | string
userId | read only | Id of the user who ran the query | string
version | optional, read only | Version of the query | integer

<aside class="success">
Response Class (Status 201)
Created
</aside>

## Download the csv results

```shell
curl
  -H "Authorization: Bearer {bearerToken}"
  /s/cerebral/api/v0/queryresult/{queryResultId}/download
```

### HTTP Request

`GET /s/cerebral/api/v0/queryresult/{queryResultId}/download`

### Arguments

Parameter | Value | Description | Parameter Type | Data Type
--------- | --------- | ------- | ----------- | ------- | -----------
Authorization | required | Oauth authorization header from wdesk | header | string
queryResultId | required | queryResultId | path | string

<aside class="success">
Response Class (Status 200)
byte
</aside>