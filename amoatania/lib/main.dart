import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Exercício 1'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('eu',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('amo',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
                SizedBox(
                  width: 200,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.yellow
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('a',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      )
                    ),
                                        DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.purple
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('aula',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('da',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 10),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Tânia',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ])
            )
            )
          );
  }
}