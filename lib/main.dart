import 'package:checktest/controller/app_control.dart';
import 'package:checktest/view/add_data_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppControl>(
          create: (context) => AppControl(),
        )
      ],
      child: MaterialApp(
        home: HomePage(),
        routes: {
          AddScreen.routeName: (context) => AddScreen(),
        },
      ),
    );
  }
}
