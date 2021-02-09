import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'user_controller.g.dart';

class UserController {
  @Route.get('/')
  Future<Response> helloWorld(Request request) async {
    return Response.ok(
      jsonEncode({'name': 'HelloWorld'}),
    );
  }

  Router get router => _$UserControllerRouter(this);
}
