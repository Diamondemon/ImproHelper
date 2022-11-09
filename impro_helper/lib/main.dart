import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:impro_helper/routes/router.gr.dart';
import 'package:provider/provider.dart';

import 'app_theme.dart';
import 'common.dart';
import 'data/session_data.dart';

Future<void> initAll() async {
}

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  initAll().then((_) => runApp(MyApp()));
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ChangeNotifierProvider(
      create: (context) => SessionData(),
      builder: (ctxt, _){
        return FutureBuilder(
            future: session(ctxt).loadAssets(ctxt),
            builder: (futureCtxt, snapshot) {
              if (snapshot.connectionState == ConnectionState.done){
                return buildApp(futureCtxt);
              }
              else {
                return Container();
              }
            }
        );
      },
    );
  }
  Widget buildApp(BuildContext context){
    return MaterialApp.router(
        title: 'ImproHelper',
        theme: AppTheme.themeData,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales
    );
  }
}
