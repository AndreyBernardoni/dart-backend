import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class Serverhandler {
  Handler get handler {
    final router = Router();

    router.get('/', (request) {
      return new Response.ok('Hello, world!');
    });

    return router;
  }
}
