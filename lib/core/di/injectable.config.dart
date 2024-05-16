// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gauthentication/application/admin/activity/activity_bloc.dart'
    as _i14;
import 'package:gauthentication/application/admin/resource/resource_bloc.dart'
    as _i12;
import 'package:gauthentication/application/admin/role/role_bloc.dart' as _i13;
import 'package:gauthentication/application/auth/auth_bloc.dart' as _i11;
import 'package:gauthentication/domain/infrastructure/activity_repo.dart'
    as _i10;
import 'package:gauthentication/domain/infrastructure/authentication_repo.dart'
    as _i4;
import 'package:gauthentication/domain/infrastructure/resource_repo.dart'
    as _i6;
import 'package:gauthentication/domain/infrastructure/role_repo.dart' as _i8;
import 'package:gauthentication/domain/repository/activity_irepo.dart' as _i9;
import 'package:gauthentication/domain/repository/authentication_irepo.dart'
    as _i3;
import 'package:gauthentication/domain/repository/resource_irepo.dart' as _i5;
import 'package:gauthentication/domain/repository/role_irepo.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AuthIRepo>(() => _i4.AuthRepo());
  gh.lazySingleton<_i5.ResourceIRepo>(
      () => _i6.ResourceRepo(gh<_i3.AuthIRepo>()));
  gh.lazySingleton<_i7.RoleIRepo>(() => _i8.RoleRepo(gh<_i3.AuthIRepo>()));
  gh.lazySingleton<_i9.ActivityIRepo>(
      () => _i10.ActivityRepo(gh<_i3.AuthIRepo>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i3.AuthIRepo>()));
  gh.factory<_i12.ResourceBloc>(
      () => _i12.ResourceBloc(gh<_i5.ResourceIRepo>()));
  gh.factory<_i13.RoleBloc>(() => _i13.RoleBloc(gh<_i7.RoleIRepo>()));
  gh.factory<_i14.ActivityBloc>(
      () => _i14.ActivityBloc(gh<_i9.ActivityIRepo>()));
  return getIt;
}
