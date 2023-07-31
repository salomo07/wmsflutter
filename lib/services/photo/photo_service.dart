import 'package:wmsflutter/models/Photos.dart';
import 'package:http/http.dart' as http;

class PhotoService {
  Future<Photo> fetchPhotos(String url) async {
    final response = await http.Client().get(Uri.parse(url));
    Photo a = photoFromJson(response.body);
    return a;
  }
}
