# Dart: Handling Missing Keys in Asynchronous JSON Data

This repository demonstrates a common error in Dart when handling asynchronous JSON data: accessing keys that might be missing from the response.  The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a corrected version.

**Problem:** The original code assumes that all JSON objects in the response will have a specific key ('some_key').  If this key is missing, it throws a runtime error.

**Solution:** The solution demonstrates safer access to JSON data by using the `containsKey` method to check for the existence of keys and handling cases where keys are missing gracefully, preventing crashes.