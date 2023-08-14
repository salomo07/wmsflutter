// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:wmsflutter/views/screens/landing_screen.dart' as _i3;
import 'package:wmsflutter/views/screens/login_screen.dart' as _i4;
import 'package:wmsflutter/widgets/login/formloginwidget.dart' as _i1;
import 'package:wmsflutter/widgets/login/formresetwidget.dart' as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    FormLogin.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FormLogin(),
      );
    },
    FormResetPasswordWidget.name: (routeData) {
      final args = routeData.argsAs<FormResetPasswordWidgetArgs>(
          orElse: () => const FormResetPasswordWidgetArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.FormResetPasswordWidget(key: args.key),
      );
    },
    LandingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LandingScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FormLogin]
class FormLogin extends _i5.PageRouteInfo<void> {
  const FormLogin({List<_i5.PageRouteInfo>? children})
      : super(
          FormLogin.name,
          initialChildren: children,
        );

  static const String name = 'FormLogin';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FormResetPasswordWidget]
class FormResetPasswordWidget
    extends _i5.PageRouteInfo<FormResetPasswordWidgetArgs> {
  FormResetPasswordWidget({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          FormResetPasswordWidget.name,
          args: FormResetPasswordWidgetArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'FormResetPasswordWidget';

  static const _i5.PageInfo<FormResetPasswordWidgetArgs> page =
      _i5.PageInfo<FormResetPasswordWidgetArgs>(name);
}

class FormResetPasswordWidgetArgs {
  const FormResetPasswordWidgetArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'FormResetPasswordWidgetArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LandingScreen]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
