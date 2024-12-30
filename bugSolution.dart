```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if jsonData is a list before casting
      if (jsonData is List) {
        final data = jsonData.cast<Map<String, dynamic>>();
        //Further process the data
      } else {
        print('Error: Unexpected JSON data type. Expected List, got: ${jsonData.runtimeType}');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //Appropriate error handling, perhaps retry logic, or display a user-friendly message
  }
}
```