import 'package:flutter/material.dart';
import 'package:fluttersamples/forms/FormWithValidation.dart';
import 'package:fluttersamples/forms/InputExample.dart';
import 'package:fluttersamples/navigationdrawer/DrawerDemo.dart';
import 'package:fluttersamples/listviews/GridViewDemo.dart';
import 'package:fluttersamples/materialdesign/GuesterListenerOnTabDemo.dart';
import 'package:fluttersamples/listviews/HorizontalListDemo.dart';
import 'package:fluttersamples/image/ImageDemo.dart';
import 'package:fluttersamples/listviews/LongListViewDemo.dart';
import 'package:fluttersamples/listviews/MultiSizeList.dart';
import 'package:fluttersamples/networking/JsonParsingBackround.dart';
import 'package:fluttersamples/networking/NetworkingGetDemo.dart';
import 'package:fluttersamples/listviews/OriendationDemo.dart';
import 'package:fluttersamples/materialdesign/RippleAnimationDemo.dart';
import 'package:fluttersamples/navigation/ScreenNaviagationDemo.dart';
import 'package:fluttersamples/navigation/ScreenNavigationWithDataDemo.dart';
import 'package:fluttersamples/materialdesign/SnackBarDemo.dart';
import 'package:fluttersamples/listviews/SwipeDismissDemo.dart';
import 'package:fluttersamples/materialdesign/TabBarDemo.dart';
import 'package:fluttersamples/networking/Websocket.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Samples'),
        ),
        body: new HomePage(),
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomePage(),
        '/conta': (BuildContext context) => new SnackBarDemo(),
        '/image': (BuildContext context) => new ImageDemo(),
        '/DrawerDemo': (BuildContext context) => new DrawerDemo(),
        '/OriendationDemo': (BuildContext context) => new OriendationDemo(),
        '/SnackBarDemo': (BuildContext context) => new SnackBarDemo(),
        '/TabBarDemo': (BuildContext context) => new TabBarDemo(),
        '/HorizontalListDemo': (BuildContext context) =>
            new HorizontalListDemo(),
        '/LongListViewDemo': (BuildContext context) => new LongListViewDemo(
              items: List<String>.generate(10000, (i) => "Item $i"),
            ),
        '/Multisizelistdemo': (BuildContext context) => new Multisizelistdemo(
              items: List<ListItem>.generate(
                1000,
                (i) => i % 6 == 0
                    ? HeadingItem("Heading $i")
                    : MessageItem("Sender $i", "Message body $i"),
              ),
            ),
        '/GridViewDemo': (BuildContext context) => new GridViewDemo(),
        '/GuesterListenerOnTabDemo': (BuildContext context) =>
            new GuesterListenerOnTabDemo(),
        '/RippleAnimationDemo': (BuildContext context) =>
            new RippleAnimationDemo(),
        '/SwipeDismissDemo': (BuildContext context) => new SwipeDismissDemo(),
        '/ScreenNaviagationDemo': (BuildContext context) =>
            new ScreenNaviagationDemo(),
        '/ScreenNaviagationDataDemo': (BuildContext context) =>
            new ScreenNaviagationDataDemo(
                todos: List.generate(
              20,
              (i) => Todo(
                    'Todo $i',
                    'A description of what needs to be done for Todo $i',
                  ),
            )),
        '/NetworkingGetDemo': (BuildContext context) => new NetworkingGetDemo(),
    '/WebSocket': (BuildContext context) => new WebSocket(),
    '/JsonParsingBackround': (BuildContext context) => new JsonParsingBackround(),
    '/InputExample': (BuildContext context) => new InputExample(),
    '/FormWithValidation': (BuildContext context) => new FormWithValidation(),

    },
    );
  }
}

class HomePage extends StatelessWidget {
  static String color = "green";

  @override
  Widget build(BuildContext context) => new Scaffold(
          body: new ListView(
        children: <Widget>[
          new FlatButton(
            child: new Text("Snack Bar Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/conta');
            },
          ),
          new FlatButton(
            child: new Text("Image Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/image');
            },
          ),
          new FlatButton(
            child: new Text("DrawerDemo Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/DrawerDemo');
            },
          ),
          new FlatButton(
            child: new Text("OriendationDemo Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/OriendationDemo');
            },
          ),
          new FlatButton(
            child: new Text("SnackBarDemo Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/SnackBarDemo');
            },
          ),
          new FlatButton(
            child: new Text("TabBarDemo Demo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/TabBarDemo');
            },
          ),
          new FlatButton(
            child: new Text("HorizontalListDemo "),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/HorizontalListDemo');
            },
          ),
          new FlatButton(
            child: new Text("LongListViewDemo "),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/LongListViewDemo');
            },
          ),
          new FlatButton(
            child: new Text("Multisizelistdemo "),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/Multisizelistdemo');
            },
          ),
          new FlatButton(
            child: new Text("GridViewDemo "),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/GridViewDemo');
            },
          ),
          new FlatButton(
            child: new Text("GuesterListenerOnTabDemo "),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/GuesterListenerOnTabDemo');
            },
          ),
          new FlatButton(
            child: new Text("RippleAnimationDemo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/RippleAnimationDemo');
            },
          ),
          new FlatButton(
            child: new Text("SwipeDismissDemo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/SwipeDismissDemo');
            },
          ),
          new FlatButton(
            child: new Text("ScreenNaviagationDemo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/ScreenNaviagationDemo');
            },
          ),
          new FlatButton(
            child: new Text("ScreenNaviagationDataDemo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/ScreenNaviagationDataDemo');
            },
          ),
          new FlatButton(
            child: new Text("NetworkingGetDemo"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/NetworkingGetDemo');
            },
          ),

          new FlatButton(
            child: new Text("WebSocket"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/WebSocket');
            },
          ),
          new FlatButton(
            child: new Text("JsonParsingBackround"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/JsonParsingBackround');
            },
          ),

          new FlatButton(
            child: new Text("InputExample"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/InputExample');
            },
          ),

          new FlatButton(
            child: new Text("FormWithValidation"),
            textColor: new Color(0xFF66BB6A),
            onPressed: () {
              Navigator.of(context).pushNamed('/FormWithValidation');
            },
          ),

        ],
      ));
}
