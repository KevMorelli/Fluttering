import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Quick Reader'),
      debugShowCheckedModeBanner: false,
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
  int _index = 0;
  List<String> _words;
  String _currentWord = '';
  String _currentFile = 'No file selected';
  double _speed = 600.0;
  double _speedConverted = 500.0;
  Timer timer;
  final double _minSpeed = 100.0;
  final double _maxSpeed = 1000.0;

  void _startWatch() {
    if (timer != null) {
      timer.cancel();
      _index = 0;
    }

    _createTimer();
  }

  void _stopWatch() {
    if (timer != null) {
      timer.cancel();
      _index = 0;
    }
  }

  void _changeSpeed() {
    if (timer == null || (timer != null && !timer.isActive)) return;

    _createTimer();
  }

  void _createTimer() {
    timer = Timer.periodic(Duration(milliseconds: _speedConverted.round()),
        (Timer timer) {
      setState(() {
        if (_index < _words.length) {
          _currentWord = _words[_index].toUpperCase();
          _index++;
        } else {
          timer.cancel();
          _currentWord = '';
        }
      });
    });

    setState(() {});
  }

  void readFile() async {
    var filePath = await FilePicker.getFilePath(type: FileType.ANY);

    if (filePath != null && filePath.endsWith('.txt')) {
      var file = File(filePath);
      var text = await file.readAsString();

      _words = text.split(' ');

      setState(() {
        _currentFile = filePath.split('/').last;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              _currentFile,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _currentWord,
                  style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.directions_walk),
                      Expanded(
                        child: Slider(
                          inactiveColor: Colors.grey,
                          activeColor: Colors.blue,
                          min: _minSpeed,
                          max: _maxSpeed,
                          onChangeEnd: (value) {
                            _changeSpeed();
                          },
                          value: _speed,
                          onChanged: (value) {
                            setState(() {
                              _speed = value;
                              _speedConverted = _maxSpeed + _minSpeed - value;
                            });
                          },
                        ),
                      ),
                      Icon(Icons.directions_car),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
              height: 40,
              child: FloatingActionButton(
                onPressed: () => readFile(),
                tooltip: 'Select File',
                backgroundColor: Colors.white,
                child: Icon(Icons.search),
              ),
            ),
          ),
          if (timer != null && timer.isActive)
            FloatingActionButton(
              onPressed: () => _stopWatch(),
              tooltip: 'Stop Reading',
              backgroundColor: Colors.red,
              child: Icon(Icons.stop),
            ),
          if (timer == null || !timer.isActive)
            FloatingActionButton(
              onPressed: () => _startWatch(),
              tooltip: 'Start Reading',
              backgroundColor: Colors.green,
              child: Icon(Icons.play_arrow),
            ),
        ],
      ),
    );
  }
}
