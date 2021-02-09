import 'package:pizzaria_delivery_dw/application/routers/i_router_configure.dart';
import 'package:pizzaria_delivery_dw/modules/users/controller/user_controller.dart';
import 'package:shelf_router/shelf_router.dart';

class UsersRouter implements IRouterConfigure {
  @override
  void configure(Router router) {
    router.mount('/user/', UserController().router);
  }
}
