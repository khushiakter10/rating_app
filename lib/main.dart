import 'dart:developer';
import 'package:auto_animated/auto_animated.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:rating_ui/constants/app_constants.dart';
import 'package:rating_ui/features/profile/presentation/village_screen.dart';
import 'gen/colors.gen.dart';
import 'helpers/all_routes.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/language.dart';
import 'helpers/navigation_service.dart';
import 'helpers/register_provider.dart';
import 'networks/dio/dio.dart';

Future<void> backgroundHandler(RemoteMessage message) async {}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();
  DioSingleton.instance.create();
  try {
    await FlutterDisplayMode.setHighRefreshRate();
  } catch (e) {
    log('Error setting high refresh rate: $e');
  }
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    rotation();
    setInitValue();
    return MultiProvider(
      providers: providers,
      child: AnimateIfVisibleWrapper(
        showItemInterval: const Duration(milliseconds: 150),
        child: PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, dynamic result) async {
            showMaterialDialog(context);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const UtillScreenMobile();
            },
          ),
        ),
      ),
    );
  }
}
class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String language = appData.read(kKeyLanguage);
    String countryCode = appData.read(kKeyCountryCode);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop,dynamic result) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            theme: ThemeData(
              // primarySwatch: CustomTheme.kToDark,
              useMaterial3: false,
              scaffoldBackgroundColor: AppColors.c333B97
            ),
            debugShowCheckedModeBanner: false,
            translations: LocalString(),
            locale: Locale(language, countryCode),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            // home: const Loading(),
            //  home: const WelcomeScreen(),
            // home:   const OnbordingScreen(),

            home:   VillageScreen (),
          ),
        );
      },
    );
  }
}
