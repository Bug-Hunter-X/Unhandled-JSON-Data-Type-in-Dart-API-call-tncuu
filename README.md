# Unhandled JSON Data Type in Dart API call

This repository demonstrates a common error in Dart applications that involves handling JSON data from an API. The application crashes because it assumes a specific data structure that the API does not always return.  This example showcases how to robustly handle this potential issue.

## Bug
The `fetchData` function in `bug.dart` attempts to parse JSON data from an API. If the API response doesn't match the expected type (list of maps in this case), the code throws an exception, leading to an application crash.

## Solution
The `bugSolution.dart` file demonstrates a solution to the problem using type checking and error handling. It checks the JSON data type before casting and includes more comprehensive error handling to prevent application crashes.