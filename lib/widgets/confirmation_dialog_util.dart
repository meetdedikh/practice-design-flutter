import 'package:flutter/material.dart';
import 'package:practicedesignflutter/widgets/dialog_util.dart';

Future<void> showConfirmationDialog(BuildContext context) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: const Text('Confirmation Dialog'),
        content: const Text('Are you sure you want to proceed?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              showAcceptedDialog(context);
            },
            child: Text('Confirm'),
          ),
        ],
      );
    },
  );
}
