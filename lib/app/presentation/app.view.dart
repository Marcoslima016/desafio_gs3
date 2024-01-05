import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app.imports.dart';

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = AppTheme.colors.primary;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppTheme.colors.surface,
      statusBarIconBrightness: Brightness.light,
    ));

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'POC MVL Pattern',
          theme: ThemeData(
            scaffoldBackgroundColor: AppTheme.colors.background,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppTheme.colors.primary,
              onPrimary: AppTheme.colors.onPrimary,
              surfaceTint: Colors.red,
              // surfaceVariant: Colors.red,
              // Colors that are not relevant to AppBar in LIGHT mode:
              // primaryVariant: Colors.grey,
              secondary: Color.fromARGB(255, 70, 70, 70),
              // secondaryVariant: Colors.grey,
              onSecondary: Colors.yellow,
              background: Colors.orange,

              onBackground: Colors.grey[400]!,
              surface: Colors.blue,
              onSurface: Colors.grey[500]!,
              error: Colors.indigo,
              onError: Color.fromARGB(255, 96, 76, 18),
              primaryContainer: Colors.red,
            ),
          ),
          initialRoute: "game",

          builder: (context, child) {
            final MediaQueryData data = MediaQuery.of(context);

            return MediaQuery(
              data: data.copyWith(textScaleFactor: 1),
              child: Stack(
                children: [
                  child!,
                ],
              ),
            );
          },
          // navigatorObservers: [RouteManager()],
          onGenerateRoute: AppRoutes().generateRoute,
        );
      },
    );
  }
}
