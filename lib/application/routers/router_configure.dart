import 'package:pizzaria_delivery_dw/application/routers/i_router_configure.dart';
import 'package:pizzaria_delivery_dw/modules/users/users_router.dart';
import 'package:shelf_router/shelf_router.dart';

class RouterConfigure {
  final Router _router;
  final List<IRouterConfigure> routers = [
    UsersRouter(),
  ];

  RouterConfigure(this._router);

  void configure() => routers.forEach((r) => r.configure(_router));
}
