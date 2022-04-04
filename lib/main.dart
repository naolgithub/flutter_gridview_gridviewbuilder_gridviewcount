import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("GridView"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            mainAxisExtent: 40,
          ),
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blueAccent,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

class GriedViewBuilder extends StatelessWidget {
  const GriedViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 2,
        mainAxisExtent: 100,
      ),
      // itemBuilder: (BuildContext context, int index) {
      //   return Container(
      //     color: Colors.redAccent,
      //     child: Text(
      //       "$index",
      //       style: const TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   );
      // },

      itemBuilder: (context, index) => Container(
        color: Colors.redAccent,
        child: Text(
          "$index",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
