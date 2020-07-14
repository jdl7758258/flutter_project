import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nb_plus/component/app/pages/home_page.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});
