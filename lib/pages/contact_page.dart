import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/contact_card.dart';
import 'package:flutter_application_1/model/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children:
            contactList.map((contact) => ContactCard(contact: contact)).toList(),
    ));
  }
}
