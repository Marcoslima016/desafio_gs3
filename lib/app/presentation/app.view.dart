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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DESAFIO GS3',
          theme: ThemeData(
            scaffoldBackgroundColor: AppTheme.colors.background,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppTheme.colors.primary,
              onPrimary: AppTheme.colors.onPrimary,
              surfaceTint: Colors.red,
              secondary: Color.fromARGB(255, 70, 70, 70),
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
          initialRoute: MainPageView.routeTag,
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
