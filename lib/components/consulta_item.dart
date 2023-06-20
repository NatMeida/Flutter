import 'package:flutter/material.dart';

class ItemConsulta<T> extends StatelessWidget {
  final T child;

  const ItemConsulta({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.shop,
                  color: Colors.grey,
                ),
                const DecoratedBox(
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.grey, width: 0.5)))),
                Text(child.toString())
              ],
            )),
      ),
    );
  }
}
