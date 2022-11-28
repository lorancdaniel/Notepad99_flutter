import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool> showLogoutDialog(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('Sign out'),
          content: const Text('Are you sure you wanna log out?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes'))
          ],
        );
      })).then((value) => value ?? false);
}
