import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge/routes/app_pages.dart';
import 'package:flutter_challenge/ui/common/logger.dart';
import 'package:flutter_challenge/ui/common/theme_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'ui/common/translation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (_, __) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              enableLog: true,
              logWriterCallback: Logger.write,
              initialRoute: AppPages.INITIAL,
              theme: ThemeResource().lightTheme,
              getPages: AppPages.routes,
              translations: TranslationService(),
            ));
  }
}
