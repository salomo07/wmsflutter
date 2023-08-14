import 'package:auto_route/auto_route.dart';
import 'package:wmsflutter/utils/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true, children: [
          AutoRoute(page: FormLogin.page, path: 'frm-login'),
          AutoRoute(page: LandingRoute.page, path: 'landing'),
          AutoRoute(page: FormResetPasswordWidget.page, path: 'frm-reset')
        ]),
      ];
}
