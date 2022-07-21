// ignore_for_file: depend_on_referenced_packages

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

import 'serverHandler.dart';

void main() async {
  var _server = new Serverhandler();
  final server = await io.serve(_server.handler, 'localhost', 2612);

  print('Server listening on http://${server.address.host}:${server.port}');
}
