// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_lms/layouts/layout.dart' as _i5;
import 'package:flutter_lms/pages/lab_detail_screen.dart' as _i1;
import 'package:flutter_lms/pages/lab_screen.dart' as _i2;
import 'package:flutter_lms/pages/login_screen.dart' as _i3;
import 'package:flutter_lms/pages/profile_screen.dart' as _i4;

/// generated route for
/// [_i1.LabDetailScreen]
class LabDetailRoute extends _i6.PageRouteInfo<LabDetailRouteArgs> {
  LabDetailRoute({
    _i7.Key? key,
    required String labId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         LabDetailRoute.name,
         args: LabDetailRouteArgs(key: key, labId: labId),
         initialChildren: children,
       );

  static const String name = 'LabDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LabDetailRouteArgs>();
      return _i1.LabDetailScreen(key: args.key, labId: args.labId);
    },
  );
}

class LabDetailRouteArgs {
  const LabDetailRouteArgs({this.key, required this.labId});

  final _i7.Key? key;

  final String labId;

  @override
  String toString() {
    return 'LabDetailRouteArgs{key: $key, labId: $labId}';
  }
}

/// generated route for
/// [_i2.LabScreen]
class LabRoute extends _i6.PageRouteInfo<void> {
  const LabRoute({List<_i6.PageRouteInfo>? children})
    : super(LabRoute.name, initialChildren: children);

  static const String name = 'LabRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.LabScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i7.Key? key,
    required void Function(bool) onResult,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         LoginRoute.name,
         args: LoginRouteArgs(key: key, onResult: onResult),
         initialChildren: children,
       );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i3.LoginScreen(key: args.key, onResult: args.onResult);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onResult});

  final _i7.Key? key;

  final void Function(bool) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i5.RootLayout]
class RootLayout extends _i6.PageRouteInfo<void> {
  const RootLayout({List<_i6.PageRouteInfo>? children})
    : super(RootLayout.name, initialChildren: children);

  static const String name = 'RootLayout';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.RootLayout();
    },
  );
}
