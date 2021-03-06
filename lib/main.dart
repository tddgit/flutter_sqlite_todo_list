import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sqlite_todo_list/src/helpers/drawer_navigation.dart';
import 'package:flutter_sqlite_todo_list/src/screens/home_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
        plugins: [
          const ScreenshotPlugin(),
          const FileExplorerPlugin(),
          const SharedPreferencesExplorerPlugin(),
        ], // Wrap your app
      ),
      // MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),

          builder:
              // !kReleaseMode  ?
              DevicePreview.appBuilder,
          //     :
          //     (context, widget) => ResponsiveWrapper.builder(
          //   HomeScreen(),
          //   maxWidth: 1200,
          //   minWidth: 480,
          //   defaultScale: true,
          //   breakpoints: [
          //     ResponsiveBreakpoint.resize(480, name: MOBILE),
          //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
          //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          //   ],
          //   background: Container(
          //     color: Color(0xFFF5F5F5),
          //   ),
          // ),
          // initialRoute: '/', // Add the builder here
          home: HomeScreen(),
        );
      },
    );
  }
}
