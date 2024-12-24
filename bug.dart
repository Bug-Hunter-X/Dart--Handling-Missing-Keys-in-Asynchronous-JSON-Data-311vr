```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data
      for (final item in data) {
        // Accessing data incorrectly; potential error
        final value = item['some_key']; // May throw an error if 'some_key' is missing
        print(value);
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors gracefully
    print('Error: $e');
  }
}
```