# Unhandled FormatException in JSON Decoding (Dart)

This repository demonstrates a common error in Dart applications involving asynchronous HTTP requests and JSON parsing. The initial code lacks proper error handling for `FormatException` that can occur if the JSON data received from the server is malformed.

The `bug.dart` file showcases the faulty code, while `bugSolution.dart` provides a corrected version with robust error handling.

## Bug

The primary issue is the lack of a `try-catch` block specifically for the `jsonDecode` function. If the server returns invalid JSON, a `FormatException` is thrown, leading to an unhandled exception and application crash.

## Solution

The solution involves wrapping the `jsonDecode` call within a `try-catch` block. This allows for graceful handling of the `FormatException`, preventing application crashes and providing a more user-friendly experience.
