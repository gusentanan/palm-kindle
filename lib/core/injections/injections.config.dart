// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:palmkindle/core/env/env.dart' as _i3;
import 'package:palmkindle/core/routes/palm_routes.dart' as _i4;
import 'package:palmkindle/core/utils/register_module.dart' as _i16;
import 'package:palmkindle/data/local_data_sources/db/db_helper.dart' as _i6;
import 'package:palmkindle/data/local_data_sources/local_data_sources.dart'
    as _i8;
import 'package:palmkindle/data/network_data_sources/api/api_helper.dart'
    as _i10;
import 'package:palmkindle/data/network_data_sources/network_data_sources.dart'
    as _i9;
import 'package:palmkindle/data/palm_repository.dart' as _i12;
import 'package:palmkindle/domain/i_palm_repository.dart' as _i11;
import 'package:palmkindle/presentation/detail/state/detail_page_cubit.dart'
    as _i13;
import 'package:palmkindle/presentation/home/state/home_page_cubit.dart'
    as _i14;
import 'package:palmkindle/presentation/likes/state/likes_page_cubit.dart'
    as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.Env>(() => _i3.Env());
    gh.singleton<_i4.PalmRoutes>(() => registerModule.appRouter);
    gh.lazySingleton<_i5.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i6.DatabaseHelper>(() => _i6.DatabaseHelper());
    gh.lazySingleton<_i7.Dio>(
      () => registerModule.textDio(),
      instanceName: 'textDio',
    );
    gh.lazySingleton<_i8.LocalDataSource>(
        () => _i8.LocalDataSource(gh<_i6.DatabaseHelper>()));
    gh.lazySingleton<_i7.Dio>(
      () => registerModule.dio(gh<_i3.Env>()),
      instanceName: 'defaultDio',
    );
    gh.factory<_i9.NetworkDataSource>(() => _i9.NetworkDataSource(
          gh<_i7.Dio>(instanceName: 'defaultDio'),
          gh<_i7.Dio>(instanceName: 'textDio'),
        ));
    gh.lazySingleton<_i10.ApiHelper>(() => _i10.ApiHelper(
          gh<_i7.Dio>(instanceName: 'defaultDio'),
          gh<_i7.Dio>(instanceName: 'textDio'),
        ));
    gh.lazySingleton<_i11.IPalmRepository>(() => _i12.PalmRepository(
          gh<_i9.NetworkDataSource>(),
          gh<_i8.LocalDataSource>(),
        ));
    gh.factory<_i13.DetailPageCubit>(
        () => _i13.DetailPageCubit(gh<_i11.IPalmRepository>()));
    gh.factory<_i14.HomePageCubit>(
        () => _i14.HomePageCubit(gh<_i11.IPalmRepository>()));
    gh.factory<_i15.LikesPageCubit>(
        () => _i15.LikesPageCubit(gh<_i11.IPalmRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
