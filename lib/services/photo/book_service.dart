import 'package:wmsflutter/models/Book.dart';
import 'package:http/http.dart' as http;
import 'package:wmsflutter/config/configapp.dart';

class BookService {
  ConfigApp config = ConfigApp();
  String? urlEndPoint;
  Future<List<Book>> fetchBooks() async {
    
    print("sss");
    final response = await http.post(
      Uri.parse(config.baseUrl + "/book/getbook"),
    );
    List<Book> b = bookFromJson(response.body);
    return b;
  }
}
