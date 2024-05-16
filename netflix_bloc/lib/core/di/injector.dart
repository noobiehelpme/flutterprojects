import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/core/di/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureInjection() => $initGetIt(getIt);
