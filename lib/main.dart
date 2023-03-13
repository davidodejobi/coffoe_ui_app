import 'package:coffoe_ui_app/core/theme.dart';
import 'package:coffoe_ui_app/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //only portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final appTheme = ref.watch(appThemeProvider);
    return ScreenUtilInit(
      designSize: const Size(
        375.0,
        812.0,
      ),
      builder: (context, index) => MaterialApp(
        title: 'Coffoe UI App',
        debugShowCheckedModeBanner: false,
        darkTheme: AppTheme.dark(),
        theme: AppTheme.light(),
        themeMode: appTheme.currentTheme,
        home: const Home(),
      ),
    );
  }
}
