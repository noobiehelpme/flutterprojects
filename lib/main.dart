import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/activity/activity_bloc.dart';
import 'package:gauthentication/application/admin/resource/resource_bloc.dart';
import 'package:gauthentication/application/admin/role/role_bloc.dart';
import 'package:gauthentication/application/auth/auth_bloc.dart';
import 'package:gauthentication/core/di/injectable.dart';
import 'package:gauthentication/core/services/encryption_services.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/presentation/screens/admin/admin_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await getDeviceId();
  await SessionServices.openSession();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(
            create: (context) =>
                getIt<ResourceBloc>()..add(const ResourceEvent.getResource())),
        BlocProvider(
            create: (context) =>
                getIt<ActivityBloc>()..add(const ActivityEvent.getActivity())),
        BlocProvider(
            create: (context) => getIt<RoleBloc>()..add(const RoleEvent.getRole())),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AdminView(),
      ),
    );
  }
}
