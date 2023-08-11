import 'package:auto_route/auto_route.dart';
import 'package:wmsflutter/utils/routes.gr.dart';
import 'package:wmsflutter/views/screens/login_screen.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LoginRoute.page,
            initial: true,
            path: '/login',
            children: [
              AutoRoute(
                  page: FormWidget.page, initial: true, path: 'frm-login'),
              AutoRoute(page: FormResetPasswordWidget.page, path: 'frm-reset')
            ]),
      ];
}
