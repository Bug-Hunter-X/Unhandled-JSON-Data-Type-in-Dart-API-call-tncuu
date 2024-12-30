```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final jsonData = jsonDecode(response.body);
      //This line can throw an error if jsonData is not a list
      final data = jsonData.cast<Map<String, dynamic>>(); 
      //Further process the data
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Handle error appropriately
  }
}
```