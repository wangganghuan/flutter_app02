import 'package:flutter/material.dart';
import './pages/routes/Routes.dart';
import './pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Application());
  }
}

//主题
class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "百姓生活+",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: MyHomePage(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
