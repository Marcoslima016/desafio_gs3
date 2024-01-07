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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

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
              surfaceTint: Colors.grey[800],
              secondary: AppTheme.colors.secondary,
              onSecondary: Colors.white,
              background: Colors.white,
              onBackground: Colors.grey[400]!,
              surface: Colors.white,
              onSurface: Colors.grey[500]!,
              error: Colors.red,
              onError: Colors.white,
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
          onGenerateRoute: AppRoutes().generateRoute,
        );
      },
    );
  }
}
