import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _indexChange(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: _currentIndex != 0,
            child: TickerMode(
              enabled: _currentIndex == 0,
              child: const Text('Projects')
            )
          ),
          Offstage(
            offstage: _currentIndex != 1,
            child: TickerMode(
              enabled: _currentIndex == 1,
              child: const Text('Forms')
            )
          ),
          Offstage(
            offstage: _currentIndex != 2,
            child: TickerMode(
              enabled: _currentIndex == 2,
              child: const Text('Fundraising')
            )
          ),
          Offstage(
            offstage: _currentIndex != 3,
            child: TickerMode(
              enabled: _currentIndex == 3,
              child: const Text('Photos')
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _indexChange,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.language),
            title: const Text('Projects'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            title: const Text('Forms'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.local_activity),
            title: const Text('Fundraising'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.camera_alt),
            title: const Text('Photos'),
          ),
        ],
      ),
    );
  }
}
