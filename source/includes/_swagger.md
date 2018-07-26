<h1 id="Cerebral-API">Cerebral API v1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Entrypoint into table.

Base URLs:

* <a href="//h.app.wdesk.com/s/cerebral">//h.app.wdesk.com/s/cerebral</a>

Email: <a href="mailto:dustin.hiatt@workiva.com">Dustin Hiatt</a> Web: <a href="https://github.com/dustinhiatt-wf">Dustin Hiatt</a> 

<h1 id="Cerebral-API-admin-controller">admin-controller</h1>

Admin Controller

## exportAccountUsingGET

<a id="opIdexportAccountUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/admin/export \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/admin/export HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/admin/export',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/admin/export',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/admin/export',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/admin/export', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/admin/export");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/admin/export", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/admin/export`

*exportAccount*

<h3 id="exportaccountusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "objectId": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="exportaccountusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_TokenDto_](#schemabaseresponse_tokendto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## importDataUsingPOST

<a id="opIdimportDataUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/admin/import \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/admin/import HTTP/1.1
Host: null
Content-Type: multipart/form-data
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/admin/import',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "file": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/admin/import',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/admin/import',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/admin/import', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/admin/import");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/admin/import", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/admin/import`

*importData*

> Body parameter

```yaml
file: string

```

<h3 id="importdatausingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|object|false|none|
|» file|body|string(binary)|true|file|

> Example responses

> 201 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="importdatausingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_string_](#schemabaseresponse_string_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getWorkspaceFilesBySizeUsingGET

<a id="opIdgetWorkspaceFilesBySizeUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/filesBySize", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/admin/usage/filesBySize`

*getWorkspaceFilesBySize*

<h3 id="getworkspacefilesbysizeusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "columnMappings": {
        "property1": "string",
        "property2": "string"
      },
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "metadata": {
        "property1": {
          "property1": {},
          "property2": {}
        },
        "property2": {
          "property1": {},
          "property2": {}
        }
      },
      "name": "string",
      "numErrors": 0,
      "numRecords": 0,
      "originalFileSize": 0,
      "source": "string",
      "status": "STAGING",
      "tableId": "string",
      "tags": {
        "property1": "string",
        "property2": "string"
      },
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="getworkspacefilesbysizeusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_List_FileMetaDto_](#schemabaseresponse_list_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getWorkspaceQueryUsageUsingGET

<a id="opIdgetWorkspaceQueryUsageUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/query", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/admin/usage/query`

*getWorkspaceQueryUsage*

<h3 id="getworkspacequeryusageusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|startDate|query|string|false|startDate|
|stopDate|query|string|false|stopDate|

> Example responses

> 200 Response

```json
{
  "body": 0,
  "code": 0
}
```

<h3 id="getworkspacequeryusageusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_long_](#schemabaseresponse_long_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getWorkspaceUploadUsageUsingGET

<a id="opIdgetWorkspaceUploadUsageUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/admin/usage/upload", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/admin/usage/upload`

*getWorkspaceUploadUsage*

<h3 id="getworkspaceuploadusageusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|startDate|query|string|false|startDate|
|stopDate|query|string|false|stopDate|

> Example responses

> 200 Response

```json
{
  "body": 0,
  "code": 0
}
```

<h3 id="getworkspaceuploadusageusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_long_](#schemabaseresponse_long_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-file-controller">file-controller</h1>

This API provides an interface for interacting with files and their metadata. Files are imported into a table in the following lifecycle: this upload file method in this controller moves a file status to STAGED. Then the import method in the table controller is called to move a file to IMPORTED. If the file contains an error, the file is moved back to STAGED and numerrors will be greater than zero. The import error endpoints can be used to download a list of errors. To delete an imported file, it must first be unimported via the table controller. Then the file can be deleted via the delete file method in this controller. To update a file, it must first be deleted and then re-imported. Any attempt to upload a file when the same name already exists in that table will result in an error.

## getFilesUsingGET

<a id="opIdgetFilesUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/file?tableId=string \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/file?tableId=string HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file',
  method: 'get',
  data: '?tableId=string',
  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file?tableId=string',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/file',
  params: {
  'tableId' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/file', params={
  'tableId': 'string'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file?tableId=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/file", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/file`

*getFiles*

<h3 id="getfilesusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|query|string|true|tableId|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "columnMappings": {
        "property1": "string",
        "property2": "string"
      },
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "metadata": {
        "property1": {
          "property1": {},
          "property2": {}
        },
        "property2": {
          "property1": {},
          "property2": {}
        }
      },
      "name": "string",
      "numErrors": 0,
      "numRecords": 0,
      "originalFileSize": 0,
      "source": "string",
      "status": "STAGING",
      "tableId": "string",
      "tags": {
        "property1": "string",
        "property2": "string"
      },
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="getfilesusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_FileMetaDto_](#schemabaseresponse_collection_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## uploadUsingPOST

<a id="opIduploadUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/file \
  -H 'Content-Type: multipart/form-data' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/file HTTP/1.1
Host: null
Content-Type: multipart/form-data
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "file": "string",
  "tableId": "string"
}';
const headers = {
  'Content-Type':'multipart/form-data',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/form-data',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/file',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/form-data',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/file', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/form-data"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/file", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/file`

*Accepts CSV files or a ZIP file with a single CSV file contained within. The file in the ZIP file must be CSV and the name of the CSV is used to name the imported file. Downloading this file again will download the CSV.*

> Body parameter

```yaml
file: string
tableId: string

```

<h3 id="uploadusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|object|false|none|
|» file|body|string(binary)|true|file|
|» tableId|body|string|true|associated table id|

> Example responses

> 201 Response

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="uploadusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_FileMetaDto_](#schemabaseresponse_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## deleteFileUsingDELETE

<a id="opIddeleteFileUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/file/{fileId}`

*deleteFile*

<h3 id="deletefileusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|fileId|path|string|true|fileId|

> Example responses

> 200 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="deletefileusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_string_](#schemabaseresponse_string_)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getErrorsUsingGET

<a id="opIdgetErrorsUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/error", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/file/{fileId}/error`

*getErrors*

<h3 id="geterrorsusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|fileId|path|string|true|fileId|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "code": 0,
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "message": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="geterrorsusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_ImportErrorDto_](#schemabaseresponse_collection_importerrordto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## exportFileToSpreadsheetsUsingPOST

<a id="opIdexportFileToSpreadsheetsUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "url": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/file/{fileId}/export", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/file/{fileId}/export`

*exportFileToSpreadsheets*

> Body parameter

```json
{
  "url": "string"
}
```

<h3 id="exportfiletospreadsheetsusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|fileId|path|string|true|fileId|
|body|body|[ExportFileDto](#schemaexportfiledto)|true|exportFileDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "sheetId": "string",
    "workbookId": "string"
  },
  "code": 0
}
```

<h3 id="exportfiletospreadsheetsusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_SpreadsheetInfoDto_](#schemabaseresponse_spreadsheetinfodto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getFileUsingGET

<a id="opIdgetFileUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/file/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/file/{id} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/file/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/file/{id}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/file/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/file/{id}`

*getFile*

<h3 id="getfileusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|id|path|string|true|id|

> Example responses

> 200 Response

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="getfileusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_FileMetaDto_](#schemabaseresponse_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## downloadFileUsingGET

<a id="opIddownloadFileUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download HTTP/1.1
Host: null

Accept: */*
Authorization: string

```

```javascript
var headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/file/{id}/download", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/file/{id}/download`

*downloadFile*

<h3 id="downloadfileusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|id|path|string|true|id|

> Example responses

> 200 Response

<h3 id="downloadfileusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|the file if it exists|string|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-health-controller">health-controller</h1>

Health Controller

## healthCheckUsingGET

<a id="opIdhealthCheckUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/health \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/health HTTP/1.1
Host: null

Accept: */*
Authorization: string

```

```javascript
var headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/health',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/health',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/health',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/health', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/health");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/health", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /health`

*healthCheck*

<h3 id="healthcheckusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

<h3 id="healthcheckusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Map_string_string_](#schemabaseresponse_map_string_string_)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-iam-controller">iam-controller</h1>

Iam Controller

## meUsingGET

<a id="opIdmeUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/iam/v1/me \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/iam/v1/me HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/iam/v1/me',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/iam/v1/me',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/iam/v1/me',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/iam/v1/me', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/iam/v1/me");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/iam/v1/me", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /iam/v1/me`

*me*

<h3 id="meusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": {
    "firstName": "string",
    "id": "string",
    "lastName": "string",
    "role": "admin",
    "userId": "string",
    "username": "string",
    "workspaceId": "string"
  },
  "code": 0
}
```

<h3 id="meusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_MembershipDto_](#schemabaseresponse_membershipdto_)|

<aside class="success">
This operation does not require authentication
</aside>

## getMembershipsUsingGET

<a id="opIdgetMembershipsUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/iam/v1/membership \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/iam/v1/membership HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/iam/v1/membership',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/iam/v1/membership',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/iam/v1/membership',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/iam/v1/membership', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/iam/v1/membership");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/iam/v1/membership", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /iam/v1/membership`

*getMemberships*

<h3 id="getmembershipsusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "firstName": "string",
      "id": "string",
      "lastName": "string",
      "role": "admin",
      "userId": "string",
      "username": "string",
      "workspaceId": "string"
    }
  ],
  "code": 0
}
```

<h3 id="getmembershipsusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_MembershipDto_](#schemabaseresponse_collection_membershipdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## createMembershipUsingPOST

<a id="opIdcreateMembershipUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/iam/v1/membership \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/iam/v1/membership HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/iam/v1/membership',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "role": "admin",
  "userId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/iam/v1/membership',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/iam/v1/membership',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/iam/v1/membership', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/iam/v1/membership");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/iam/v1/membership", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /iam/v1/membership`

*createMembership*

> Body parameter

```json
{
  "role": "admin",
  "userId": "string"
}
```

<h3 id="createmembershipusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[MembershipDto](#schemamembershipdto)|true|membershipDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "firstName": "string",
    "id": "string",
    "lastName": "string",
    "role": "admin",
    "userId": "string",
    "username": "string",
    "workspaceId": "string"
  },
  "code": 0
}
```

<h3 id="createmembershipusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_MembershipDto_](#schemabaseresponse_membershipdto_)|

<aside class="success">
This operation does not require authentication
</aside>

## updateMembershipUsingPUT

<a id="opIdupdateMembershipUsingPUT"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT //h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
PUT //h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId} HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "role": "admin",
  "userId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.put '//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.put('//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "//h.app.wdesk.com/s/cerebral/iam/v1/membership/{workspaceId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /iam/v1/membership/{workspaceId}`

*updateMembership*

> Body parameter

```json
{
  "role": "admin",
  "userId": "string"
}
```

<h3 id="updatemembershipusingput-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|workspaceId|path|string|true|workspaceId|
|body|body|[MembershipDto](#schemamembershipdto)|true|membershipDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "firstName": "string",
    "id": "string",
    "lastName": "string",
    "role": "admin",
    "userId": "string",
    "username": "string",
    "workspaceId": "string"
  },
  "code": 0
}
```

<h3 id="updatemembershipusingput-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_MembershipDto_](#schemabaseresponse_membershipdto_)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-query-controller">query-controller</h1>

Query Controller

## getQueriesUsingGET

<a id="opIdgetQueriesUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/query \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/query HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/query',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/query', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/query", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/query`

*getQueries*

<h3 id="getqueriesusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
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
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="getqueriesusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_QueryDto_](#schemabaseresponse_collection_querydto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## createQueryUsingPOST

<a id="opIdcreateQueryUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/query \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/query HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "parameters": [
    {
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
  "type": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/query',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/query', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/query", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/query`

*createQuery*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "parameters": [
    {
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
  "type": "string"
}
```

<h3 id="createqueryusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[QueryDto](#schemaquerydto)|true|queryDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
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
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="createqueryusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_QueryDto_](#schemabaseresponse_querydto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## previewQueryUsingPOST

<a id="opIdpreviewQueryUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}?limit=0 \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}?limit=0 HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}',
  method: 'post',
  data: '?limit=0',
  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}?limit=0',
{
  method: 'POST',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}',
  params: {
  'limit' => 'integer(int32)'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}', params={
  'limit': '0'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}?limit=0");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/query/preview/{tableId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/query/preview/{tableId}`

*previewQuery*

<h3 id="previewqueryusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|
|limit|query|integer(int32)|true|limit|
|fileName|query|string|false|fileName|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
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
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="previewqueryusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_QueryDto_](#schemabaseresponse_querydto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getQueryUsingGET

<a id="opIdgetQueryUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/query/{queryId}`

*getQuery*

<h3 id="getqueryusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryId|path|string|true|queryId|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
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
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="getqueryusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_QueryDto_](#schemabaseresponse_querydto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## updateQueryUsingPUT

<a id="opIdupdateQueryUsingPUT"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
PUT //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "parameters": [
    {
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
  "type": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.put '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.put('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /api/v1/query/{queryId}`

*updateQuery*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "parameters": [
    {
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
  "type": "string"
}
```

<h3 id="updatequeryusingput-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryId|path|string|true|queryId|
|body|body|[QueryDto](#schemaquerydto)|true|queryDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
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
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="updatequeryusingput-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_QueryDto_](#schemabaseresponse_querydto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## deleteQueryUsingDELETE

<a id="opIddeleteQueryUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/query/{queryId} HTTP/1.1
Host: null

Accept: */*
Authorization: string

```

```javascript
var headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/query/{queryId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/query/{queryId}`

*deleteQuery*

<h3 id="deletequeryusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryId|path|string|true|queryId|

> Example responses

> 200 Response

<h3 id="deletequeryusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_string_](#schemabaseresponse_string_)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## listQueryResultsUsingGET

<a id="opIdlistQueryResultsUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult?queryId=string \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult?queryId=string HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/queryresult',
  method: 'get',
  data: '?queryId=string',
  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/queryresult?queryId=string',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/queryresult',
  params: {
  'queryId' => 'string'
}, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/queryresult', params={
  'queryId': 'string'
}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/queryresult?queryId=string");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/queryresult", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/queryresult`

*listQueryResults*

<h3 id="listqueryresultsusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryId|query|string|true|queryId|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "bytesScanned": 0,
      "created": "2018-07-26T14:35:18Z",
      "duration": 0,
      "error": "string",
      "id": "string",
      "parameters": {
        "property1": {},
        "property2": {}
      },
      "queryId": "string",
      "queryText": "string",
      "status": "NOT_STARTED",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="listqueryresultsusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_QueryResultDto_](#schemabaseresponse_collection_queryresultdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## runQueryUsingPOST

<a id="opIdrunQueryUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/queryresult \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/queryresult HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/queryresult',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "parameters": {
    "property1": {},
    "property2": {}
  },
  "queryId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/queryresult',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/queryresult',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/queryresult', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/queryresult");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/queryresult", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/queryresult`

*Runs a query and immediately returns a query result entity. This entity has an id that can be used to poll status from the getQueryResult method.*

> Body parameter

```json
{
  "parameters": {
    "property1": {},
    "property2": {}
  },
  "queryId": "string"
}
```

<h3 id="runqueryusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[QueryResultDto](#schemaqueryresultdto)|true|queryResultDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "bytesScanned": 0,
    "created": "2018-07-26T14:35:18Z",
    "duration": 0,
    "error": "string",
    "id": "string",
    "parameters": {
      "property1": {},
      "property2": {}
    },
    "queryId": "string",
    "queryText": "string",
    "status": "NOT_STARTED",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="runqueryusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_QueryResultDto_](#schemabaseresponse_queryresultdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getQueryResultUsingGET

<a id="opIdgetQueryResultUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/queryresult/{queryResultId}`

*getQueryResult*

<h3 id="getqueryresultusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryResultId|path|string|true|queryResultId|

> Example responses

> 200 Response

```json
{
  "body": {
    "bytesScanned": 0,
    "created": "2018-07-26T14:35:18Z",
    "duration": 0,
    "error": "string",
    "id": "string",
    "parameters": {
      "property1": {},
      "property2": {}
    },
    "queryId": "string",
    "queryText": "string",
    "status": "NOT_STARTED",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="getqueryresultusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_QueryResultDto_](#schemabaseresponse_queryresultdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## downloadQueryResultsUsingGET

<a id="opIddownloadQueryResultsUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download HTTP/1.1
Host: null

Accept: */*
Authorization: string

```

```javascript
var headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/download", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/queryresult/{queryResultId}/download`

*downloadQueryResults*

<h3 id="downloadqueryresultsusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryResultId|path|string|true|queryResultId|

> Example responses

> 200 Response

<h3 id="downloadqueryresultsusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|the results of query run|string|

<aside class="success">
This operation does not require authentication
</aside>

## exportQueryResultsToSpreadsheetsUsingPOST

<a id="opIdexportQueryResultsToSpreadsheetsUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "url": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/queryresult/{queryResultId}/export", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/queryresult/{queryResultId}/export`

*exportQueryResultsToSpreadsheets*

> Body parameter

```json
{
  "url": "string"
}
```

<h3 id="exportqueryresultstospreadsheetsusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|queryResultId|path|string|true|queryResultId|
|body|body|[ExportQueryResultDto](#schemaexportqueryresultdto)|true|dto|

> Example responses

> 201 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="exportqueryresultstospreadsheetsusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_string_](#schemabaseresponse_string_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-select-list-controller">select-list-controller</h1>

Select List Controller

## listUsingGET

<a id="opIdlistUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/selectlist \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/selectlist HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/selectlist', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/selectlist");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/selectlist", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/selectlist`

*list*

<h3 id="listusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "description": "string",
      "id": "string",
      "name": "string",
      "type": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "valueType": "boolean",
      "values": [
        {}
      ],
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="listusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_SelectListDto_](#schemabaseresponse_collection_selectlistdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## createUsingPOST

<a id="opIdcreateUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/selectlist \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/selectlist HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "valueType": "boolean",
  "values": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/selectlist',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/selectlist', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/selectlist");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/selectlist", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/selectlist`

*create*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "valueType": "boolean",
  "values": [
    {}
  ]
}
```

<h3 id="createusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[SelectListDto](#schemaselectlistdto)|true|selectListDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "type": "string",
    "updated": "2018-07-26T14:35:18Z",
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

<h3 id="createusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_SelectListDto_](#schemabaseresponse_selectlistdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getUsingGET

<a id="opIdgetUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/selectlist/{selectListId}`

*get*

<h3 id="getusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|selectListId|path|string|true|selectListId|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "type": "string",
    "updated": "2018-07-26T14:35:18Z",
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

<h3 id="getusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_SelectListDto_](#schemabaseresponse_selectlistdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## updateUsingPUT

<a id="opIdupdateUsingPUT"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
PUT //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "valueType": "boolean",
  "values": [
    {}
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.put '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.put('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /api/v1/selectlist/{selectListId}`

*update*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "valueType": "boolean",
  "values": [
    {}
  ]
}
```

<h3 id="updateusingput-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|selectListId|path|string|true|selectListId|
|body|body|[SelectListDto](#schemaselectlistdto)|true|selectListDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "type": "string",
    "updated": "2018-07-26T14:35:18Z",
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

<h3 id="updateusingput-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_SelectListDto_](#schemabaseresponse_selectlistdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## deleteUsingDELETE

<a id="opIddeleteUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/selectlist/{selectListId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/selectlist/{selectListId}`

*delete*

<h3 id="deleteusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|selectListId|path|string|true|selectListId|

> Example responses

> 200 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="deleteusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_string_](#schemabaseresponse_string_)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-table-controller">table-controller</h1>

Table Controller

## getTablesUsingGET

<a id="opIdgetTablesUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/table \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/table HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/table',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/table', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/table", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/table`

*getTables*

<h3 id="gettablesusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "deleted": false,
      "description": "string",
      "id": "string",
      "name": "string",
      "tableSchema": {
        "columns": [
          {
            "alias": "string",
            "description": "string",
            "metadata": {
              "property1": {},
              "property2": {}
            },
            "mode": "nullable",
            "name": "string",
            "type": "boolean"
          }
        ]
      },
      "type": "lookup",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="gettablesusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_TableDto_](#schemabaseresponse_collection_tabledto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## createTableUsingPOST

<a id="opIdcreateTableUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/table \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/table HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "tableSchema": {
    "columns": [
      {
        "alias": "string",
        "description": "string",
        "metadata": {
          "property1": {},
          "property2": {}
        },
        "mode": "nullable",
        "name": "string",
        "type": "boolean"
      }
    ]
  },
  "type": "lookup"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/table',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/table', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/table", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/table`

*createTable*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "tableSchema": {
    "columns": [
      {
        "alias": "string",
        "description": "string",
        "metadata": {
          "property1": {},
          "property2": {}
        },
        "mode": "nullable",
        "name": "string",
        "type": "boolean"
      }
    ]
  },
  "type": "lookup"
}
```

<h3 id="createtableusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[TableDto](#schematabledto)|true|body|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "deleted": false,
    "description": "string",
    "id": "string",
    "name": "string",
    "tableSchema": {
      "columns": [
        {
          "alias": "string",
          "description": "string",
          "metadata": {
            "property1": {},
            "property2": {}
          },
          "mode": "nullable",
          "name": "string",
          "type": "boolean"
        }
      ]
    },
    "type": "lookup",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="createtableusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_TableDto_](#schemabaseresponse_tabledto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## getTableUsingGET

<a id="opIdgetTableUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/table/{id} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/table/{id} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/table/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/table/{id}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/table/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/table/{id}`

*getTable*

<h3 id="gettableusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|id|path|string|true|id|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "deleted": false,
    "description": "string",
    "id": "string",
    "name": "string",
    "tableSchema": {
      "columns": [
        {
          "alias": "string",
          "description": "string",
          "metadata": {
            "property1": {},
            "property2": {}
          },
          "mode": "nullable",
          "name": "string",
          "type": "boolean"
        }
      ]
    },
    "type": "lookup",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="gettableusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_TableDto_](#schemabaseresponse_tabledto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## updateTableUsingPUT

<a id="opIdupdateTableUsingPUT"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
PUT //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId} HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "description": "string",
  "name": "string",
  "tableSchema": {
    "columns": [
      {
        "alias": "string",
        "description": "string",
        "metadata": {
          "property1": {},
          "property2": {}
        },
        "mode": "nullable",
        "name": "string",
        "type": "boolean"
      }
    ]
  },
  "type": "lookup"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.put '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.put('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /api/v1/table/{tableId}`

*Updates an existing table with the provided information. Due to the nature of our datastore, columns can only ever be added. A column is considered new if no existing column can be found with an identical name. This equality check is case insensitive. No columns are ever deleted or modified by this endpoint. Any new columns will appear after other user-defined columns but before any meta columns (columns that start with _).*

> Body parameter

```json
{
  "description": "string",
  "name": "string",
  "tableSchema": {
    "columns": [
      {
        "alias": "string",
        "description": "string",
        "metadata": {
          "property1": {},
          "property2": {}
        },
        "mode": "nullable",
        "name": "string",
        "type": "boolean"
      }
    ]
  },
  "type": "lookup"
}
```

<h3 id="updatetableusingput-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|
|body|body|[TableDto](#schematabledto)|true|tableDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "deleted": false,
    "description": "string",
    "id": "string",
    "name": "string",
    "tableSchema": {
      "columns": [
        {
          "alias": "string",
          "description": "string",
          "metadata": {
            "property1": {},
            "property2": {}
          },
          "mode": "nullable",
          "name": "string",
          "type": "boolean"
        }
      ]
    },
    "type": "lookup",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="updatetableusingput-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_TableDto_](#schemabaseresponse_tabledto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## deleteTableUsingDELETE

<a id="opIddeleteTableUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/table/{tableId}`

*deleteTable*

<h3 id="deletetableusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|

> Example responses

> 200 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="deletetableusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_string_](#schemabaseresponse_string_)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## importFileUsingPOST

<a id="opIdimportFileUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "columnMappings": "{\"import column id\":\"table column id\"}",
  "fileId": "string",
  "metadata": {
    "property1": {
      "property1": {},
      "property2": {}
    },
    "property2": {
      "property1": {},
      "property2": {}
    }
  },
  "tags": "{\"key\": \"value\"}"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/table/{tableId}/import`

*Imports the provided file into the associated table. This immediately returns with a file meta object with an id that can be used to poll the file controller for status.*

> Body parameter

```json
{
  "columnMappings": "{\"import column id\":\"table column id\"}",
  "fileId": "string",
  "metadata": {
    "property1": {
      "property1": {},
      "property2": {}
    },
    "property2": {
      "property1": {},
      "property2": {}
    }
  },
  "tags": "{\"key\": \"value\"}"
}
```

<h3 id="importfileusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|
|body|body|[ImportDto](#schemaimportdto)|true|importDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="importfileusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_FileMetaDto_](#schemabaseresponse_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## unimportFileUsingDELETE

<a id="opIdunimportFileUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/import/{fileId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/table/{tableId}/import/{fileId}`

*unimportFile*

<h3 id="unimportfileusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|
|fileId|path|string|true|fileId|

> Example responses

> 200 Response

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="unimportfileusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_FileMetaDto_](#schemabaseresponse_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## importFromSpreadsheetsUsingPOST

<a id="opIdimportFromSpreadsheetsUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "fileId": "string",
  "name": "string",
  "tags": {
    "property1": "string",
    "property2": "string"
  },
  "url": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/table/{tableId}/spreadsheet/import", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/table/{tableId}/spreadsheet/import`

*Import spreadsheet data and immediately returns a file meta result. This dto has an id that can be used to poll on status via the file controller.*

> Body parameter

```json
{
  "fileId": "string",
  "name": "string",
  "tags": {
    "property1": "string",
    "property2": "string"
  },
  "url": "string"
}
```

<h3 id="importfromspreadsheetsusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tableId|path|string|true|tableId|
|body|body|[ImportFromSpreadsheetDto](#schemaimportfromspreadsheetdto)|true|importFromSpreadsheetDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="importfromspreadsheetsusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_FileMetaDto_](#schemabaseresponse_filemetadto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-tag-controller">tag-controller</h1>

Tag Controller

## listTagsUsingGET

<a id="opIdlistTagsUsingGET"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/tag \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/tag HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/tag',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/tag',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/tag',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/tag', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/tag");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/tag", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/tag`

*listTags*

<h3 id="listtagsusingget-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|

> Example responses

> 200 Response

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "values": [
        "string"
      ],
      "version": 0
    }
  ],
  "code": 0
}
```

<h3 id="listtagsusingget-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_Collection_TagDto_](#schemabaseresponse_collection_tagdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## createTagUsingPOST

<a id="opIdcreateTagUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/tag \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/tag HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/tag',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "key": "string",
  "values": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/tag',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/tag',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/tag', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/tag");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/tag", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/tag`

*createTag*

> Body parameter

```json
{
  "key": "string",
  "values": [
    "string"
  ]
}
```

<h3 id="createtagusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[TagDto](#schematagdto)|true|tagDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "values": [
      "string"
    ],
    "version": 0
  },
  "code": 0
}
```

<h3 id="createtagusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_TagDto_](#schemabaseresponse_tagdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## updateTagUsingPUT

<a id="opIdupdateTagUsingPUT"></a>

> Code samples

```shell
# You can also use wget
curl -X PUT //h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId} \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
PUT //h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId} HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
  method: 'put',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "key": "string",
  "values": [
    "string"
  ]
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.put '//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.put('//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PUT");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PUT", "//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PUT /api/v1/tag/{tagId}`

*updateTag*

> Body parameter

```json
{
  "key": "string",
  "values": [
    "string"
  ]
}
```

<h3 id="updatetagusingput-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tagId|path|string|true|tagId|
|body|body|[TagDto](#schematagdto)|true|tagDto|

> Example responses

> 200 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "values": [
      "string"
    ],
    "version": 0
  },
  "code": 0
}
```

<h3 id="updatetagusingput-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_TagDto_](#schemabaseresponse_tagdto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## deleteTagUsingDELETE

<a id="opIddeleteTagUsingDELETE"></a>

> Code samples

```shell
# You can also use wget
curl -X DELETE //h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId} \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
DELETE //h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId} HTTP/1.1
Host: null

Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
  method: 'delete',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.delete '//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.delete('//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "//h.app.wdesk.com/s/cerebral/api/v1/tag/{tagId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /api/v1/tag/{tagId}`

*deleteTag*

<h3 id="deletetagusingdelete-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tagId|path|string|true|tagId|

> Example responses

> 200 Response

```json
{
  "body": "string",
  "code": 0
}
```

<h3 id="deletetagusingdelete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|OK|[BaseResponse_string_](#schemabaseresponse_string_)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="Cerebral-API-token-controller">token-controller</h1>

Token Controller

## createTokenUsingPOST

<a id="opIdcreateTokenUsingPOST"></a>

> Code samples

```shell
# You can also use wget
curl -X POST //h.app.wdesk.com/s/cerebral/api/v1/token \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: string'

```

```http
POST //h.app.wdesk.com/s/cerebral/api/v1/token HTTP/1.1
Host: null
Content-Type: application/json
Accept: application/json
Authorization: string

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/token',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');
const inputBody = '{
  "objectId": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/token',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json',
  'Authorization' => 'string'
}

result = RestClient.post '//h.app.wdesk.com/s/cerebral/api/v1/token',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': 'string'
}

r = requests.post('//h.app.wdesk.com/s/cerebral/api/v1/token', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/token");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "//h.app.wdesk.com/s/cerebral/api/v1/token", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/token`

*createToken*

> Body parameter

```json
{
  "objectId": "string"
}
```

<h3 id="createtokenusingpost-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|body|body|[TokenDto](#schematokendto)|true|tokenDto|

> Example responses

> 201 Response

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "objectId": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}
```

<h3 id="createtokenusingpost-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created|[BaseResponse_TokenDto_](#schemabaseresponse_tokendto_)|
|400|[Bad Request](https://tools.ietf.org/html/rfc7231#section-6.5.1)|invalid request|[MultiError](#schemamultierror)|
|401|[Unauthorized](https://tools.ietf.org/html/rfc7235#section-3.1)|unauthorized|[SingleError](#schemasingleerror)|
|403|[Forbidden](https://tools.ietf.org/html/rfc7231#section-6.5.3)|forbidden|[SingleError](#schemasingleerror)|
|404|[Not Found](https://tools.ietf.org/html/rfc7231#section-6.5.4)|not found|[SingleError](#schemasingleerror)|
|409|[Conflict](https://tools.ietf.org/html/rfc7231#section-6.5.8)|collision|[SingleError](#schemasingleerror)|
|500|[Internal Server Error](https://tools.ietf.org/html/rfc7231#section-6.6.1)|server error|[SingleError](#schemasingleerror)|

<aside class="success">
This operation does not require authentication
</aside>

## downloadFileUsingGET_1

<a id="opIddownloadFileUsingGET_1"></a>

> Code samples

```shell
# You can also use wget
curl -X GET //h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId} \
  -H 'Accept: */*' \
  -H 'Authorization: string'

```

```http
GET //h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId} HTTP/1.1
Host: null

Accept: */*
Authorization: string

```

```javascript
var headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

$.ajax({
  url: '//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const request = require('node-fetch');

const headers = {
  'Accept':'*/*',
  'Authorization':'string'

};

fetch('//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*',
  'Authorization' => 'string'
}

result = RestClient.get '//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*',
  'Authorization': 'string'
}

r = requests.get('//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        "Authorization": []string{"string"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "//h.app.wdesk.com/s/cerebral/api/v1/token/{tokenId}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/token/{tokenId}`

*downloadFile*

<h3 id="downloadfileusingget_1-parameters">Parameters</h3>

|Parameter|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Oauth authorization header from wdesk|
|tokenId|path|string|true|tokenId|

> Example responses

> 200 Response

<h3 id="downloadfileusingget_1-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|the file if it exists|string|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocScolumndto">ColumnDto</h2>

<a id="schemacolumndto"></a>

```json
{
  "alias": "string",
  "description": "string",
  "metadata": {
    "property1": {},
    "property2": {}
  },
  "mode": "nullable",
  "name": "string",
  "type": "boolean"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alias|string|false|none|optional alias, may be at most 255 characters in length|
|description|string|false|none|may be at most 255 characters in length|
|metadata|object|false|none|Optional type metadata. Types like timestamp have a metadata value such as 'formatString' which allows users to define their own Java8 datetime format string.|
|» **additionalProperties**|object|false|none|none|
|mode|string|false|none|this property is for future use, currently always set to nullable|
|name|string|true|none|may be at most 100 characters in length|
|type|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|mode|nullable|
|mode|required|
|type|boolean|
|type|float|
|type|integer|
|type|string|
|type|timestamp|
|type|date|

<h2 id="tocSexportfiledto">ExportFileDto</h2>

<a id="schemaexportfiledto"></a>

```json
{
  "url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|url|string|false|none|URL of the spreadsheet to export to, if present. If not present, a new spreadsheet will be created.|

<h2 id="tocSexportqueryresultdto">ExportQueryResultDto</h2>

<a id="schemaexportqueryresultdto"></a>

```json
{
  "url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|url|string|false|none|URL of the spreadsheet to export to, if present. If not present, a new spreadsheet will be created.|

<h2 id="tocSfilemetadto">FileMetaDto</h2>

<a id="schemafilemetadto"></a>

```json
{
  "columnMappings": {
    "property1": "string",
    "property2": "string"
  },
  "created": "2018-07-26T14:35:18Z",
  "id": "string",
  "key": "string",
  "metadata": {
    "property1": {
      "property1": {},
      "property2": {}
    },
    "property2": {
      "property1": {},
      "property2": {}
    }
  },
  "name": "string",
  "numErrors": 0,
  "numRecords": 0,
  "originalFileSize": 0,
  "source": "string",
  "status": "STAGING",
  "tableId": "string",
  "tags": {
    "property1": "string",
    "property2": "string"
  },
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|columnMappings|object|false|none|none|
|» **additionalProperties**|string|false|none|none|
|created|string(date-time)|true|read-only|none|
|id|string|true|read-only|none|
|key|string|false|none|none|
|metadata|object|false|none|none|
|» **additionalProperties**|object|false|none|none|
|»» **additionalProperties**|object|false|none|none|
|» name|string|false|none|none|
|» numErrors|integer(int64)|false|none|none|
|» numRecords|integer(int64)|false|read-only|Number of records imported from this file.  This will only be non-zero if the file is in the IMPORTED status.|
|» originalFileSize|integer(int64)|false|read-only|Size of the original file that was uploaded.|
|» source|string|false|read-only|URI that describes the source location of this file if imported from another system. For instance, this will have a spreadsheet URL if this file was imported from spreadsheets. This will be null if the file was uploaded using the data prep API.|
|» status|string|false|none|none|
|» tableId|string|false|none|none|
|» tags|object|false|none|none|
|»» **additionalProperties**|string|false|none|none|
|» updated|string(date-time)|true|read-only|none|
|» userId|string|true|read-only|none|
|» version|integer(int64)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|STAGING|
|status|STAGED|
|status|IMPORTING|
|status|IMPORTED|
|status|ERROR|

<h2 id="tocSimportdto">ImportDto</h2>

<a id="schemaimportdto"></a>

```json
{
  "columnMappings": "{\"import column id\":\"table column id\"}",
  "fileId": "string",
  "metadata": {
    "property1": {
      "property1": {},
      "property2": {}
    },
    "property2": {
      "property1": {},
      "property2": {}
    }
  },
  "tags": "{\"key\": \"value\"}"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|columnMappings|object|false|none|a map of import column names to table column ids|
|» **additionalProperties**|string|false|none|none|
|fileId|string|true|none|id of the file to import to the table|
|metadata|object|false|none|For overriding column metadata specifically for this import. The keys in this object are column identifiers with the values being metadata objects.|
|» **additionalProperties**|object|false|none|none|
|»» **additionalProperties**|object|false|none|none|
|» tags|object|false|none|an object containing keys and values, which becomes the tag map|
|»» **additionalProperties**|string|false|none|none|

<h2 id="tocSimporterrordto">ImportErrorDto</h2>

<a id="schemaimporterrordto"></a>

```json
{
  "code": 0,
  "created": "2018-07-26T14:35:18Z",
  "id": "string",
  "message": "string",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|code|integer(int64)|false|none|none|
|created|string(date-time)|true|read-only|none|
|id|string|true|read-only|none|
|message|string|false|none|none|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|version|integer(int64)|false|read-only|none|

<h2 id="tocSimportfromspreadsheetdto">ImportFromSpreadsheetDto</h2>

<a id="schemaimportfromspreadsheetdto"></a>

```json
{
  "fileId": "string",
  "name": "string",
  "tags": {
    "property1": "string",
    "property2": "string"
  },
  "url": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|fileId|string|false|none|none|
|name|string|true|none|none|
|tags|object|false|none|none|
|» **additionalProperties**|string|false|none|none|
|url|string|true|none|none|

<h2 id="tocSmembershipdto">MembershipDto</h2>

<a id="schemamembershipdto"></a>

```json
{
  "firstName": "string",
  "id": "string",
  "lastName": "string",
  "role": "admin",
  "userId": "string",
  "username": "string",
  "workspaceId": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|firstName|string|true|read-only|none|
|id|string|true|read-only|none|
|lastName|string|true|read-only|none|
|role|string|true|none|none|
|userId|string|true|none|none|
|username|string|true|read-only|none|
|workspaceId|string|true|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|role|admin|
|role|none|
|role|read|
|role|write|

<h2 id="tocSmultierror">MultiError</h2>

<a id="schemamultierror"></a>

```json
{
  "body": [
    "string"
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[string]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSquerydto">QueryDto</h2>

<a id="schemaquerydto"></a>

```json
{
  "created": "2018-07-26T14:35:18Z",
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
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created|string(date-time)|true|read-only|none|
|description|string|false|none|none|
|id|string|true|read-only|none|
|name|string|true|none|none|
|parameters|[[QueryParameterDto](#schemaqueryparameterdto)]|false|none|none|
|primaryQueryResultId|string|false|none|none|
|queryText|string|true|none|Max size is 10000 characters.  Is required.  Must be a valid DML statement.|
|temporary|boolean|false|none|Denotes if this query is meant to be temporary.  Default is false.|
|type|string|false|none|none|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|version|integer(int64)|false|read-only|none|

<h2 id="tocSqueryparameterdto">QueryParameterDto</h2>

<a id="schemaqueryparameterdto"></a>

```json
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

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|choices|[object]|false|read-only|If the parameter is of type select, this is a list of possible choices. This is read only and is for listing and viewing reports to help the user.|
|mode|string|true|none|none|
|name|string|true|none|none|
|selectListId|string|false|none|If mode is select, this must be populated and is a reference to a select list from which choices will be derived.|
|type|string|true|none|none|
|value|object|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|mode|singleSelect|
|mode|scalar|
|type|boolean|
|type|float|
|type|integer|
|type|string|
|type|timestamp|
|type|date|

<h2 id="tocSqueryresultdto">QueryResultDto</h2>

<a id="schemaqueryresultdto"></a>

```json
{
  "bytesScanned": 0,
  "created": "2018-07-26T14:35:18Z",
  "duration": 0,
  "error": "string",
  "id": "string",
  "parameters": {
    "property1": {},
    "property2": {}
  },
  "queryId": "string",
  "queryText": "string",
  "status": "NOT_STARTED",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|bytesScanned|integer(int64)|true|read-only|none|
|created|string(date-time)|true|read-only|none|
|duration|integer(int64)|true|read-only|none|
|error|string|false|read-only|If an error was encountered during the query, this field will be populated with error text.|
|id|string|true|read-only|none|
|parameters|object|false|none|none|
|» **additionalProperties**|object|false|none|none|
|queryId|string|true|none|none|
|queryText|string|true|read-only|none|
|status|string|true|read-only|none|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|version|integer(int64)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|NOT_STARTED|
|status|RUNNING|
|status|COMPLETE|
|status|ERROR|

<h2 id="tocSselectlistdto">SelectListDto</h2>

<a id="schemaselectlistdto"></a>

```json
{
  "created": "2018-07-26T14:35:18Z",
  "description": "string",
  "id": "string",
  "name": "string",
  "type": "string",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "valueType": "boolean",
  "values": [
    {}
  ],
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created|string(date-time)|true|read-only|none|
|description|string|false|none|Description of this select list. Max length: 1024|
|id|string|true|read-only|none|
|name|string|true|none|none|
|type|string|true|read-only|This is currently not used and its value will always be 'static'. In the future, more types will be added.|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|valueType|string|false|none|Defines the type of the items in the list.|
|values|[object]|false|none|List of possible values for the list. These values will be validated against the valueType provided.|
|version|integer(int64)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|valueType|boolean|
|valueType|timestamp|
|valueType|string|
|valueType|integer|
|valueType|float|
|valueType|date|

<h2 id="tocSsingleerror">SingleError</h2>

<a id="schemasingleerror"></a>

```json
{
  "body": "string",
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|string|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSspreadsheetinfodto">SpreadsheetInfoDto</h2>

<a id="schemaspreadsheetinfodto"></a>

```json
{
  "sheetId": "string",
  "workbookId": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|sheetId|string|false|none|none|
|workbookId|string|false|none|none|

<h2 id="tocStabledto">TableDto</h2>

<a id="schematabledto"></a>

```json
{
  "created": "2018-07-26T14:35:18Z",
  "deleted": false,
  "description": "string",
  "id": "string",
  "name": "string",
  "tableSchema": {
    "columns": [
      {
        "alias": "string",
        "description": "string",
        "metadata": {
          "property1": {},
          "property2": {}
        },
        "mode": "nullable",
        "name": "string",
        "type": "boolean"
      }
    ]
  },
  "type": "lookup",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created|string(date-time)|true|read-only|none|
|deleted|boolean|true|read-only|none|
|description|string|false|none|may be at most 255 characters in length|
|id|string|true|read-only|none|
|name|string|false|none|may be at most 150 characters in length|
|tableSchema|[TableSchema](#schematableschema)|true|none|none|
|type|string|true|none|none|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|version|integer(int64)|false|read-only|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|lookup|
|type|data|

<h2 id="tocStableschema">TableSchema</h2>

<a id="schematableschema"></a>

```json
{
  "columns": [
    {
      "alias": "string",
      "description": "string",
      "metadata": {
        "property1": {},
        "property2": {}
      },
      "mode": "nullable",
      "name": "string",
      "type": "boolean"
    }
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|columns|[[ColumnDto](#schemacolumndto)]|true|none|list of columns in the table, must at least one in size|

<h2 id="tocStagdto">TagDto</h2>

<a id="schematagdto"></a>

```json
{
  "created": "2018-07-26T14:35:18Z",
  "id": "string",
  "key": "string",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "values": [
    "string"
  ],
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created|string(date-time)|true|read-only|none|
|id|string|true|read-only|none|
|key|string|true|none|value for the key, maximum 100 characters in length|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|values|[string]|false|none|none|
|version|integer(int64)|false|read-only|none|

<h2 id="tocStokendto">TokenDto</h2>

<a id="schematokendto"></a>

```json
{
  "created": "2018-07-26T14:35:18Z",
  "id": "string",
  "objectId": "string",
  "updated": "2018-07-26T14:35:18Z",
  "userId": "string",
  "version": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|created|string(date-time)|true|read-only|none|
|id|string|true|read-only|none|
|objectId|string|true|none|none|
|updated|string(date-time)|true|read-only|none|
|userId|string|true|read-only|none|
|version|integer(int64)|false|read-only|none|

<h2 id="tocSbaseresponse_collection_filemetadto_">BaseResponse_Collection_FileMetaDto_</h2>

<a id="schemabaseresponse_collection_filemetadto_"></a>

```json
{
  "body": [
    {
      "columnMappings": {
        "property1": "string",
        "property2": "string"
      },
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "metadata": {
        "property1": {
          "property1": {},
          "property2": {}
        },
        "property2": {
          "property1": {},
          "property2": {}
        }
      },
      "name": "string",
      "numErrors": 0,
      "numRecords": 0,
      "originalFileSize": 0,
      "source": "string",
      "status": "STAGING",
      "tableId": "string",
      "tags": {
        "property1": "string",
        "property2": "string"
      },
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[FileMetaDto](#schemafilemetadto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_importerrordto_">BaseResponse_Collection_ImportErrorDto_</h2>

<a id="schemabaseresponse_collection_importerrordto_"></a>

```json
{
  "body": [
    {
      "code": 0,
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "message": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[ImportErrorDto](#schemaimporterrordto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_membershipdto_">BaseResponse_Collection_MembershipDto_</h2>

<a id="schemabaseresponse_collection_membershipdto_"></a>

```json
{
  "body": [
    {
      "firstName": "string",
      "id": "string",
      "lastName": "string",
      "role": "admin",
      "userId": "string",
      "username": "string",
      "workspaceId": "string"
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[MembershipDto](#schemamembershipdto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_querydto_">BaseResponse_Collection_QueryDto_</h2>

<a id="schemabaseresponse_collection_querydto_"></a>

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
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
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[QueryDto](#schemaquerydto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_queryresultdto_">BaseResponse_Collection_QueryResultDto_</h2>

<a id="schemabaseresponse_collection_queryresultdto_"></a>

```json
{
  "body": [
    {
      "bytesScanned": 0,
      "created": "2018-07-26T14:35:18Z",
      "duration": 0,
      "error": "string",
      "id": "string",
      "parameters": {
        "property1": {},
        "property2": {}
      },
      "queryId": "string",
      "queryText": "string",
      "status": "NOT_STARTED",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[QueryResultDto](#schemaqueryresultdto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_selectlistdto_">BaseResponse_Collection_SelectListDto_</h2>

<a id="schemabaseresponse_collection_selectlistdto_"></a>

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "description": "string",
      "id": "string",
      "name": "string",
      "type": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "valueType": "boolean",
      "values": [
        {}
      ],
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[SelectListDto](#schemaselectlistdto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_tabledto_">BaseResponse_Collection_TableDto_</h2>

<a id="schemabaseresponse_collection_tabledto_"></a>

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "deleted": false,
      "description": "string",
      "id": "string",
      "name": "string",
      "tableSchema": {
        "columns": [
          {
            "alias": "string",
            "description": "string",
            "metadata": {
              "property1": {},
              "property2": {}
            },
            "mode": "nullable",
            "name": "string",
            "type": "boolean"
          }
        ]
      },
      "type": "lookup",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[TableDto](#schematabledto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_collection_tagdto_">BaseResponse_Collection_TagDto_</h2>

<a id="schemabaseresponse_collection_tagdto_"></a>

```json
{
  "body": [
    {
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "values": [
        "string"
      ],
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[TagDto](#schematagdto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_filemetadto_">BaseResponse_FileMetaDto_</h2>

<a id="schemabaseresponse_filemetadto_"></a>

```json
{
  "body": {
    "columnMappings": {
      "property1": "string",
      "property2": "string"
    },
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "metadata": {
      "property1": {
        "property1": {},
        "property2": {}
      },
      "property2": {
        "property1": {},
        "property2": {}
      }
    },
    "name": "string",
    "numErrors": 0,
    "numRecords": 0,
    "originalFileSize": 0,
    "source": "string",
    "status": "STAGING",
    "tableId": "string",
    "tags": {
      "property1": "string",
      "property2": "string"
    },
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[FileMetaDto](#schemafilemetadto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_list_filemetadto_">BaseResponse_List_FileMetaDto_</h2>

<a id="schemabaseresponse_list_filemetadto_"></a>

```json
{
  "body": [
    {
      "columnMappings": {
        "property1": "string",
        "property2": "string"
      },
      "created": "2018-07-26T14:35:18Z",
      "id": "string",
      "key": "string",
      "metadata": {
        "property1": {
          "property1": {},
          "property2": {}
        },
        "property2": {
          "property1": {},
          "property2": {}
        }
      },
      "name": "string",
      "numErrors": 0,
      "numRecords": 0,
      "originalFileSize": 0,
      "source": "string",
      "status": "STAGING",
      "tableId": "string",
      "tags": {
        "property1": "string",
        "property2": "string"
      },
      "updated": "2018-07-26T14:35:18Z",
      "userId": "string",
      "version": 0
    }
  ],
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[[FileMetaDto](#schemafilemetadto)]|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_map_string_string_">BaseResponse_Map_string_string_</h2>

<a id="schemabaseresponse_map_string_string_"></a>

```json
{
  "body": {
    "property1": "string",
    "property2": "string"
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|object|false|none|none|
|» **additionalProperties**|string|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_membershipdto_">BaseResponse_MembershipDto_</h2>

<a id="schemabaseresponse_membershipdto_"></a>

```json
{
  "body": {
    "firstName": "string",
    "id": "string",
    "lastName": "string",
    "role": "admin",
    "userId": "string",
    "username": "string",
    "workspaceId": "string"
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[MembershipDto](#schemamembershipdto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_querydto_">BaseResponse_QueryDto_</h2>

<a id="schemabaseresponse_querydto_"></a>

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
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
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[QueryDto](#schemaquerydto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_queryresultdto_">BaseResponse_QueryResultDto_</h2>

<a id="schemabaseresponse_queryresultdto_"></a>

```json
{
  "body": {
    "bytesScanned": 0,
    "created": "2018-07-26T14:35:18Z",
    "duration": 0,
    "error": "string",
    "id": "string",
    "parameters": {
      "property1": {},
      "property2": {}
    },
    "queryId": "string",
    "queryText": "string",
    "status": "NOT_STARTED",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[QueryResultDto](#schemaqueryresultdto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_selectlistdto_">BaseResponse_SelectListDto_</h2>

<a id="schemabaseresponse_selectlistdto_"></a>

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "description": "string",
    "id": "string",
    "name": "string",
    "type": "string",
    "updated": "2018-07-26T14:35:18Z",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[SelectListDto](#schemaselectlistdto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_spreadsheetinfodto_">BaseResponse_SpreadsheetInfoDto_</h2>

<a id="schemabaseresponse_spreadsheetinfodto_"></a>

```json
{
  "body": {
    "sheetId": "string",
    "workbookId": "string"
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[SpreadsheetInfoDto](#schemaspreadsheetinfodto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_tabledto_">BaseResponse_TableDto_</h2>

<a id="schemabaseresponse_tabledto_"></a>

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "deleted": false,
    "description": "string",
    "id": "string",
    "name": "string",
    "tableSchema": {
      "columns": [
        {
          "alias": "string",
          "description": "string",
          "metadata": {
            "property1": {},
            "property2": {}
          },
          "mode": "nullable",
          "name": "string",
          "type": "boolean"
        }
      ]
    },
    "type": "lookup",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[TableDto](#schematabledto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_tagdto_">BaseResponse_TagDto_</h2>

<a id="schemabaseresponse_tagdto_"></a>

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "key": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "values": [
      "string"
    ],
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[TagDto](#schematagdto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_tokendto_">BaseResponse_TokenDto_</h2>

<a id="schemabaseresponse_tokendto_"></a>

```json
{
  "body": {
    "created": "2018-07-26T14:35:18Z",
    "id": "string",
    "objectId": "string",
    "updated": "2018-07-26T14:35:18Z",
    "userId": "string",
    "version": 0
  },
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|[TokenDto](#schematokendto)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_long_">BaseResponse_long_</h2>

<a id="schemabaseresponse_long_"></a>

```json
{
  "body": 0,
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|integer(int64)|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSbaseresponse_string_">BaseResponse_string_</h2>

<a id="schemabaseresponse_string_"></a>

```json
{
  "body": "string",
  "code": 0
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|body|string|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocSmap_string_object_">Map_string_object_</h2>

<a id="schemamap_string_object_"></a>

```json
{
  "property1": {},
  "property2": {}
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|**additionalProperties**|object|false|none|none|

<h2 id="tocSmap_string_string_">Map_string_string_</h2>

<a id="schemamap_string_string_"></a>

```json
{
  "property1": "string",
  "property2": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|**additionalProperties**|string|false|none|none|

