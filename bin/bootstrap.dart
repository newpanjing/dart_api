import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<HttpServer> createServer() {
  var router = Router()
    ..get("/abc", (req) {
      return Response(200, body: "${DateTime.now()}");
    })
    ..get("/", (req) => Response.ok("ok sadf"));
  final handler = Pipeline().addMiddleware(logRequests()).addHandler(router);
  print("listen: http://localhost:8080");
  return io.serve(handler, "localhost", 8080);
}
