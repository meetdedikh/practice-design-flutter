// dialog_utils.dart

import 'package:flutter/material.dart';

Future<void> showAcceptedDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.elasticOut,
          ),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            title: const Icon(
              Icons.check_circle,
              size: 80,
              color: Colors.green,
            ),
            content: const Text('Accepted!'),
          ),
        );
      }).then((value) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pop();
    });
  });
}
