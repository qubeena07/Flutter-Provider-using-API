import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_api/model/post_model.dart';

class DataUtil {
  Future<List<PostModel>> getData() async {
    List<PostModel> listData = [];
    try {
      var request = http.Request(
          'GET', Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var rawData = await response.stream.bytesToString();
        List<dynamic> data = jsonDecode(rawData);
        for (var element in data) {
          PostModel model = PostModel.fromJson(element);
          listData.add(model);
        }
        return listData;
      } else {
        print(response.reasonPhrase);
        return [];
      }
    } catch (e) {
      print("Exception in Data $e");
      rethrow;
    }
  }
}
