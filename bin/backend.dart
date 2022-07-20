// ignore_for_file: depend_on_referenced_packages

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() async {
  final server =
      await io.serve((request) => Response(200, body: 'ok'), 'localhost', 2612);

  print('Server listening on http://${server.address.host}:${server.port}');
}
