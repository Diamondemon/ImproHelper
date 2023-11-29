import 'package:flutter/material.dart';
import 'package:impro_helper/common.dart';
import '../utils/custom_icons.dart';

TextStyle tabStyle([double? fontSize]) => TextStyle(
  fontSize: fontSize,
);

/// The 5 tabs of the main tab view
List<Tab> tabs(BuildContext context) => <Tab>[
  Tab(
    icon: const Icon(CustomIcons.whistleEmpty),
    child:  Text(AppLocalizations.of(context)!.currentMatch, style: tabStyle(10), maxLines: 2 , textAlign: TextAlign.center,)),
  Tab(
    icon: const Icon(Icons.scoreboard),
    child: Text(AppLocalizations.of(context)!.scores, style: tabStyle(10.0))),
  Tab(
    icon: const Icon(Icons.add_circle_outline),
    child: Text(AppLocalizations.of(context)!.newImpro, style: tabStyle(10.0), maxLines: 2, textAlign: TextAlign.center,)),
  Tab(
    icon: const Icon(Icons.book),
    child: Text(AppLocalizations.of(context)!.matches, style: tabStyle(10.0), maxLines: 2, textAlign: TextAlign.center,)),
  Tab(
    icon: const Icon(CustomIcons.database),
    child: Text(AppLocalizations.of(context)!.database, style: tabStyle(10.0))),
];

/// Nicknames for the tabs so that we don't have to remember their index
Map<String, int> tabIndex = {
  'match': 0, 'current match': 0,
  'score': 1, 'scores': 1,
  'new': 2, 'new impro': 2,
  'preparation': 3, 'all matches': 3,
  'database': 4,
};

/// Switches to the tab defined by a nickname [s]
///
/// Tab nicknames are defined in the [tabIndex] map in tabs.dart.
void switchToTab(TabController tabController, String s) {
  int? i = tabIndex[s.toLowerCase()];
  if (i != null) tabController.animateTo(i);
}

/// The 3 tabs of the database tab widget
List<Tab> dbTabs = <Tab>[
  Tab(child: Text('Category', style: tabStyle(14.0))),
  Tab(child: Text('Theme', style: tabStyle(14.0))),
  Tab(child: Text('Improvisation', style: tabStyle(14.0))),
];