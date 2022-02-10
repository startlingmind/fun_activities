import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_api/home/home.dart';
import 'package:sample_api/services/bored_services.dart';
import 'package:sample_api/services/connectivity_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => BoredService(),
          ),
          RepositoryProvider(
            create: (context) => ConnectivityService(),
          )
        ],
        child: const HomePage(),
      ),
    );
  }
}
