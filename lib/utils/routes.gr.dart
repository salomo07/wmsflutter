// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:wmsflutter/views/screens/login_screen.dart' as _i3;
import 'package:wmsflutter/widgets/login/formloginwidget.dart' as _i2;
import 'package:wmsflutter/widgets/login/formresetwidget.dart' as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    FormResetPasswordWidget.name: (routeData) {
      final args = routeData.argsAs<FormResetPasswordWidgetArgs>(
          orElse: () => const FormResetPasswordWidgetArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.FormResetPasswordWidget(key: args.key),
      );
    },
    FormWidget.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FormWidget(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FormResetPasswordWidget]
class FormResetPasswordWidget
    extends _i4.PageRouteInfo<FormResetPasswordWidgetArgs> {
  FormResetPasswordWidget({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          FormResetPasswordWidget.name,
          args: FormResetPasswordWidgetArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'FormResetPasswordWidget';

  static const _i4.PageInfo<FormResetPasswordWidgetArgs> page =
      _i4.PageInfo<FormResetPasswordWidgetArgs>(name);
}

class FormResetPasswordWidgetArgs {
  const FormResetPasswordWidgetArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'FormResetPasswordWidgetArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.FormWidget]
class FormWidget extends _i4.PageRouteInfo<void> {
  const FormWidget({List<_i4.PageRouteInfo>? children})
      : super(
          FormWidget.name,
          initialChildren: children,
        );

  static const String name = 'FormWidget';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
