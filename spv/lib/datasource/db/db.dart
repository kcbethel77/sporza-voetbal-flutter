import 'package:spv/models/network/news.dart';
import 'package:spv/datasource/db/db_helper.dart';

abstract class Db {
  void saveNewsItems(List<News> newsItems);
}

class DbImpl implements Db {
  final DatabaseHelper dbHelper;

  DbImpl(this.dbHelper);

  @override
  void saveNewsItems(List<News> newsItems) {
    newsItems.map((news) => news.to)
  }


}
