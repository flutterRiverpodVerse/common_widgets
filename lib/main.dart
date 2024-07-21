import 'package:common_widgets/core/constants/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return MediaQuery(
      data: data.copyWith(
        textScaler: const TextScaler.linear(1),
      ),
      child: ScreenUtilInit(
        designSize: Size(data.size.width, data.size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Common Widgets',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
              ),
              useMaterial3: true,
            ),
            home: const HomePage(),
            scaffoldMessengerKey: AppConfig.rootScaffoldMessengerKey,
          );
        },
      ),
    );
  }
}
