# Example workflows

## Creating a table and uploading data

Creating a table and uploading table so that it is queryable involves the following steps.

1. Creating the table using the [create table](#createtableusingpost) endpoint. This sets your table schema and defines the standards that imported files will need to adhere to to be correctly imported.

2. Import a CSV file that adheres to the schema defined in step one. This involves using the [upload file](#uploadusingpost) endpoint which accepts either a CSV file or a zip file with a single CSV file. Using a zip file simply reduces the file size before upload. If multiple files are in the zip file, a single file is randomly chosen. The response contains an id field which is the unique identifier for that file.

3. Once the file is uploaded, it now needs to be imported into the table. This process involves validating the file and converting it into a format that's smaller and faster to query. At this time, additional data can be added to the import, such as tags. Here, you can also perform column mapping if you need to map columns in the uploaded file to the columns in the table. The import data should be used with the [import file](#importfileusingpost) endpoint. This endpoint returns a file meta entity that contains a status. At this stage, assuming the import endpoint returned a success status, the file meta's status should be "IMPORTING".

4. Use the [get file meta](#getfileusingget) endpoint to poll on the status of the import. Once done, the file meta will either be in the "IMPORTED" state which indicates the file has been successfully uploaded or it will revert back to the "STAGED" state which indicates there was an issue with the upload. The file meta entity will then indicate errors using the "numErrors" field. If this is greater than 0, a call can be made to the [get import errors](#geterrorsusingget) endpoint to get a list of errors.

## Querying table data

Query a table's data involves the following steps:

1. Create a query via the [create query](#createqueryusingpost) endpoint. This query is a persistent object that is available to reuse either as is or dynamically by using query parameters. If the query contains query parameters, then these parameters can be overridden when the query is run and if the query parameters do no contain default values then they must be overridden at runtime.

2. Create a query result using the [run query](#runqueryusingpost) endpoint. This returns a query result entity that contains an id and a status. The status, assuming this call completed correctly, will be "NOT_STARTED" or "RUNNING".

3. Poll on the query result using the [get query result](#getqueryresultusingget) endpoint and the query result id. When the query completes or encounters an error, the status will change to "COMPLETE" or "ERROR" respectively. If status is set to error, then the "error" field on the query result will be populated.

4. Download the result of the query using the [download query results](#downloadqueryresultsusingget) endpoint. The results will be in CSV format and will be an ordinary CSV file. This file adheres to the [RFC4180](https://tools.ietf.org/html/rfc4180) standard.

## Updating a file

Updating an already imported file can be done as follows:

1. Unimport the file using the [unimport file](#unimportfileusingdelete) endpoint. This removes the file from the imported data and it will no longer contribute to any query results.

2. Delete the file from the system using the [delete file](#deletefileusingdelete) endpoint.

3. Follow steps 2 through 3 in the create table and import data workflow.
