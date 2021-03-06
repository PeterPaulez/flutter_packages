import 'package:flutter/material.dart';
import 'package:transitioner/transitioner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'uno',
      routes: {
        'uno': (_) => UnoPage(),
        'dos': (_) => DosPage(),
      },
    );
  }
}

class UnoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [],
        title: Text('Page Uno'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Transitioner(
              context: context,
              child: DosPage(),
              animation: AnimationType.scale,
              duration: Duration(milliseconds: 500),
              replacement: true,
              curveType: CurveType.bounceOut,
            );
          },
          color: Colors.white,
          child: Text('Go to Page Dos'),
        ),
      ),
    );
  }
}

class DosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        actions: [],
        title: Text('Page Dos'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Transitioner(
              context: context,
              child: UnoPage(),
              animation: AnimationType.normal,
              duration: Duration(milliseconds: 2000),
              replacement: true,
              curveType: CurveType.decelerate,
            );
          },
          color: Colors.white,
          child: Text('Go to Page Uno'),
        ),
      ),
    );
  }
}
