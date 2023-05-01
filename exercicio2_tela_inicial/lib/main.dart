import 'package:flutter/material.dart';
import 'my_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(

        //AppBar
        appBar: AppBar(
          title: Text("Pizzaria Forno à Lenha",),
          backgroundColor: Color.fromARGB(255, 199, 173, 4),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image.network("https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_960_720.jpg",),
             SizedBox(height: 10),

             DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                          "Bem vindo(a) ao aplicativo de encomendas da Pizzaria Forno à Lenha!", textAlign: TextAlign.center, style: TextStyle(fontSize: 16),)),
                ),
              SizedBox(height: 10),

              MyWidget("Ingredientes de alta qualidade", Colors.green),

              MyWidget("Maior diversidade de sabores", Colors.white),

              MyWidget("Pizza quentinha que chega em 40 minutos", Colors.red),
            ],
          )
        ),
        
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 199, 173, 4),
          child: SizedBox(
            height: 40,
            child: Align(
              child: Text ('Garanta já o seu jantar!', style: TextStyle(fontSize: 20),),)
          )
        ),
      )
    );
  }
}