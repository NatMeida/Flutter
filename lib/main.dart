import 'package:flutter/material.dart';

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
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício - Login com Validação'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://cdn4.iconfinder.com/data/icons/essentials-74/24/008_-_Lock-512.png", width: 210, height: 210,),
              SizedBox(height: 20,),

              Form(
                key: key,
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(children: [
                    DecoratedBox(decoration: BoxDecoration(color: Color.fromARGB(255, 255, 254, 254),), child: SizedBox(width: 300, height: 50, child: Center(child: Text("Login", style: TextStyle(color: Colors.deepOrange, fontSize: 30, fontWeight: FontWeight.bold),),),),),
                    SizedBox(height: 10,),
                    DecoratedBox(decoration: BoxDecoration(color: Color.fromARGB(255, 90, 43, 100),), child: SizedBox(width: 500, height: 5, ),),
                    SizedBox(height: 20,),
                    TextFormField(
                      //controller: campoUsuario,
                      validator: (value) {
                         if (value!.isEmpty){
                          return ("Insira o nome de usuário para efetuar login.");
                         }
                         return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    TextFormField(
                      //controller: campoUsuario,
                      validator: (value) {
                         if (value!.isEmpty){
                          return ("Insira a senha para efetuar login.");
                         } else {
                          if (9 < 4){
                            return ("A senha deve conter ao menos 4 caracteres");
                          }
                         }
                         return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: Icon(Icons.key_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    
                    ElevatedButton(onPressed: (){
                      
                    },
                     child: Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    )
                  ]
                  ),
                  )
                  )


            ],
          )
        )
      )
    );
  }
}
