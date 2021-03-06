import 'package:flutter/material.dart';
import 'package:interactive_list/scroll_positioned_list/scroll_positioned_list_widget.dart';
import 'package:interactive_list/static_height_scrollable/static_height_list_widget.dart';

import 'package:meta/meta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeMenu(title: 'Testing Flutter 1:1'),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: Key('app_bar'),
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              key: Key('option_item_1'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => StaticHeightListWidget(key:Key("abc"))),
              ),
              child: Text('Static Height Scrollable'),
            ),
            ElevatedButton(
              key: Key('option_item_2'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ScrollPositionedListWidget()),
              ),
              child: Text('Dynamic Height Scrollable'),
            ),
          ],
        ),
      ),
    );
  }
}
