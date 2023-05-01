import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(this.texto, this.cor, {super.key});

  final String texto;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: 
         Row(children: [
          Image.network("https://cdn0.iconfinder.com/data/icons/sweets/128/heart_love_white.png", height: 15,),
          DecoratedBox(decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(texto),
                ),
          ),
         ]),
      ),
    );
  }
}