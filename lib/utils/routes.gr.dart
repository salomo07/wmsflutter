// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:wmsflutter/views/screens/home_screen.dart' as _i3;
import 'package:wmsflutter/views/screens/landing_screen.dart' as _i4;
import 'package:wmsflutter/views/screens/login_screen.dart' as _i5;
import 'package:wmsflutter/widgets/login/formloginwidget.dart' as _i1;
import 'package:wmsflutter/widgets/login/formresetwidget.dart' as _i2;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FormLogin.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<FormLoginArgs>(
          orElse: () => FormLoginArgs(
                user: pathParams.optString('user'),
                pass: pathParams.optString('pass'),
              ));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.FormLogin(
          key: args.key,
          user: args.user,
          pass: args.pass,
        ),
      );
    },
    FormResetPasswordWidget.name: (routeData) {
      final args = routeData.argsAs<FormResetPasswordWidgetArgs>(
          orElse: () => const FormResetPasswordWidgetArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.FormResetPasswordWidget(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    LandingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LandingScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FormLogin]
class FormLogin extends _i6.PageRouteInfo<FormLoginArgs> {
  FormLogin({
    _i7.Key? key,
    String? user,
    String? pass,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          FormLogin.name,
          args: FormLoginArgs(
            key: key,
            user: user,
            pass: pass,
          ),
          rawPathParams: {
            'user': user,
            'pass': pass,
          },
          initialChildren: children,
        );

  static const String name = 'FormLogin';

  static const _i6.PageInfo<FormLoginArgs> page =
      _i6.PageInfo<FormLoginArgs>(name);
}

class FormLoginArgs {
  const FormLoginArgs({
    this.key,
    this.user,
    this.pass,
  });

  final _i7.Key? key;

  final String? user;

  final String? pass;

  @override
  String toString() {
    return 'FormLoginArgs{key: $key, user: $user, pass: $pass}';
  }
}

/// generated route for
/// [_i2.FormResetPasswordWidget]
class FormResetPasswordWidget
    extends _i6.PageRouteInfo<FormResetPasswordWidgetArgs> {
  FormResetPasswordWidget({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          FormResetPasswordWidget.name,
          args: FormResetPasswordWidgetArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'FormResetPasswordWidget';

  static const _i6.PageInfo<FormResetPasswordWidgetArgs> page =
      _i6.PageInfo<FormResetPasswordWidgetArgs>(name);
}

class FormResetPasswordWidgetArgs {
  const FormResetPasswordWidgetArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'FormResetPasswordWidgetArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LandingScreen]
class LandingRoute extends _i6.PageRouteInfo<void> {
  const LandingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
