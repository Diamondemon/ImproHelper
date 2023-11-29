
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

SessionData session(context) => Provider.of<SessionData>(context, listen: false);

class SessionData with ChangeNotifier {
  Future<void> loadAssets(BuildContext context) async{

  }
}