import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nb_plus/config/Routes.dart';
import 'package:flutter_nb_plus/config/application.dart';

class AppComponent extends StatefulWidget {
  @override
  State createState() => AppComponentState();
}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
//    print("initial route = ${app.initialRoute}");
    return app;
  }
}
