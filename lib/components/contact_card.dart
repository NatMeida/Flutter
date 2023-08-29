import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({required this.contact, super.key});
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contact.name),
      subtitle: Text(contact.number),
      leading: const Icon(Icons.person)
    );
  }
}
