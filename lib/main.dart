import 'package:flutter/material.dart';
import 'package:portfolio_napp/stores/app.store.dart';
import 'package:portfolio_napp/views/signin.view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(value: AppStore())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Color(0xff151826),
          accentColor: Colors.grey,
          primarySwatch: Colors.blue,
        ),
        home: SigninView(),
      ),
    );
  }
}
