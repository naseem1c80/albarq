import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://localhost/delivery_app/api.php';

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl?getusers'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {

      throw Exception('Failed to load posts');
    }
  }

  Future<void> createPost(String title, String content) async {
    final response = await http.post(
      Uri.parse('$baseUrl/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'title': title,
        'content': content,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create post');
    }
  }
}
