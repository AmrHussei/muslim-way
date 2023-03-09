import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:muslim_way/features/auth/presentation/view/splash_screen.dart';
import 'package:muslim_way/features/auth/presentation/view_model/cubit/auth_cubit.dart';
import 'package:muslim_way/features/home/presentation/view/home_screen.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view_model/cubit/taspeh_takbeer_cubit.dart';

import 'features/morning_and_evening-prayers/presentation/view_model/cubit/paryers_cubit.dart';
import 'features/prayer_time/presentation/view/screens/detect_location_screen.dart';
import 'features/prayer_time/presentation/view/screens/prayer_time_screen.dart';
import 'features/prayer_time/presentation/view_model/cubit/prayet_times_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => AuthCubit()),
    BlocProvider(create: (context) => TaspehTakbeerCubit()),
    BlocProvider(create: (context) => ParyersCubit()),
    BlocProvider(create: (context) => PrayerTimesCubit()),
  ], child: const MuslimWay()));
}

class MuslimWay extends StatelessWidget {
  const MuslimWay({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
