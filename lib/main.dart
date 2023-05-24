import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:steganographic/l10n/resources.dart';
import 'package:steganographic/steganographic_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );

  await R.ensureInitialized();

  runApp(SteganographicApp());
}
