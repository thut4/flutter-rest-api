import 'package:flutter_api_test/model/post.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var respone = await client.get(url);
    if (respone.statusCode == 200) {
      var json = respone.body;
      return postFromJson(json);
    }
  }
}
