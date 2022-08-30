import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_login/models/bio_data_state.dart';
import 'package:provider_login/screens/home.dart';

import 'screens/add_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BioDataState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
