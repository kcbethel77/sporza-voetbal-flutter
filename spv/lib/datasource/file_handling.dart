import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

mixin FileHandling {
  String get testPath;

  String _documentsDir;

  Future<String> get documentsDir async {
    if (_documentsDir == null) {
      _documentsDir = Platform.isAndroid || Platform.isIOS ? (await getApplicationDocumentsDirectory()).path : testPath;
    }
    return _documentsDir;
  }

  Future<FileSystemEntity> removeDir(final String path) async => File(join(path)).delete(recursive: true);

  Future<File> getFolder(final String path, final String file, {final String suffix = ".json"}) async {
    final File newsDir = File(join(await documentsDir, path, "$file$suffix"));
    await newsDir.create(recursive: true);
    return newsDir;
  }
}