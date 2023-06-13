import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/appbar.dart';
import 'package:flutter_application_1/components/bottom_bar.dart';

class AppPage extends Scaffold {
  AppPage(BuildContext context, {required String title, required Widget body, super.key}): super(
    appBar: NavBar(context, title: title),
    body: body,
    bottomNavigationBar: BottomBar(context)
  );
}
