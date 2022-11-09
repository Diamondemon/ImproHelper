import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:impro_helper/routes/router.gr.dart';
import 'package:impro_helper/ui/tabs.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: [
          CurrentMatchRouter(),
          ScoresRouter(),
          NewImprovRouter(),
          MatchesRouter(),
          DatabaseRouter()
        ],
        builder: (ctxt, child, tabController){
          return Scaffold(
              bottomNavigationBar: Material(
                color: Theme.of(ctxt).primaryColor,
                child: TabBar(
                  tabs: tabs(ctxt),
                  controller: tabController,
                ),
              ),
              body: GestureDetector( // May need SafeArea
                onTap: () => FocusScope.of(ctxt).requestFocus(FocusNode()),
                child: child,
              )
          );
        }

    );
  }

}
