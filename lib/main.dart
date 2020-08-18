import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cases/cases/clip_tabbar.dart';
import 'package:flutter_cases/cases/custom_tabbar.dart';
import 'package:flutter_cases/widget/custon_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                child: SplashScreen.navigate(
                  name: 'intro.flr',
                  next: (context) => MyHomePage(title: 'Flutter cases'),
                  until: () => Future.delayed(Duration(seconds: 5)),
                  startAnimation: '1',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter案例'),
      ),
      body: Container(
        color: Colors.greenAccent,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: Wrap(
            direction: Axis.horizontal,
//            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.spaceBetween,
            spacing: 5,
            runSpacing: 5,
            verticalDirection: VerticalDirection.down,
            children: _demos(),
          ),
        ),
      ),
    );
  }

  List<Widget> _demos() {
    return [
      CustomBtn(item: CustomTabBar(),value: '自定义tab',),
      CustomBtn(item: CliperTabbar(),value: '切割版不规则tab',)
    ];
  }
}
