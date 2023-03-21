import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/app.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(MyApp());
}
