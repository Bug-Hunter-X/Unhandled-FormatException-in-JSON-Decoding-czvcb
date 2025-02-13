```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
      } catch (e) {
        // Handle JSON decoding error
        if (e is FormatException) {
          print('Invalid JSON format: $e');
        } else {
          print('Error decoding JSON: $e');
        }
        rethrow;
      }
    } else {
      // Handle HTTP error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    rethrow; 
  }
}
```