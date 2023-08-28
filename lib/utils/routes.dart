import 'package:auto_route/auto_route.dart';
import 'package:wmsflutter/utils/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LoginRoute.page,
            initial: true,
            path: '/login',
            children: [
              AutoRoute(page: FormLogin.page, path: 'frm-login', initial: true),
              AutoRoute(page: FormLogin.page, path: 'frm-login/:token'),
              // AutoRoute(page: FormLogin.page, path: 'confirm'),
              // AutoRoute(page: FormLogin.page, path: 'frm-login/:user/:pass'),
              AutoRoute(page: LandingRoute.page, path: 'landing'),
              AutoRoute(page: FormResetPasswordWidget.page, path: 'frm-reset')
            ]),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
