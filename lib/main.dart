import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cases/cases/custom_tabbar.dart';

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
      home: MyHomePage(title: 'Flutter Demos'),
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
//        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.spaceBetween,
          runSpacing: 5,
          verticalDirection: VerticalDirection.down,
          children: _demos(),
        ),
      ),
    );
  }

  List<Widget> _demos() {
    return [
      demoItem('自定义button1', CustomTabBar()),
      demoItem('自定义button2', CustomTabBar()),
      demoItem('自定义button3', CustomTabBar()),
      demoItem('自定义button4', CustomTabBar())
    ];
  }

  Widget demoItem(String value, Widget item) {
    bool flag = false;
    if (flag) {
      return Container(
        child: Text('data'),
        width: 100,
        color: Colors.white,
      );
    }
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => item));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Text(value),
      ),
    );
  }
}
