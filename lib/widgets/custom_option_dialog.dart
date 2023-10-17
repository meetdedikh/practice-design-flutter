import 'package:flutter/material.dart';

void showSimpleAlertDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text(title),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Option 1'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Option 2'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Option 3'),
          ),
        ],
      );
    },
  );
}
