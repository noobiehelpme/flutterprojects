import 'package:flutter/material.dart';

class TextFormScreen extends StatelessWidget {
  const TextFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
              labelText: 'RoleId', hintText: 'Enter RoleId'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
              labelText: 'RoleName', hintText: 'Enter Name'),
        ),
      ],
    );
  }
}
