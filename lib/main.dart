
import 'package:flutter/material.dart';
import 'app.dart';
import 'services/pin_service.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PinService.ensureDefaultPin();
  runApp(MyApp());
}
