import 'package:flutter/material.dart';
import 'package:practicedesignflutter/widgets/confirmation_dialog_util.dart';
import 'package:practicedesignflutter/widgets/custom_option_dialog.dart';
import 'package:practicedesignflutter/widgets/custom_widgets.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key});
  void _showCustomAlertDialog(BuildContext context) {
    showAlertDialog(
      context,
      'Custom Alert Dialog',
      'This is a custom alert dialog with your content.',
    );
  }

  void _simpleCustomAlertDialog(BuildContext context) {
    showSimpleAlertDialog(
      context,
      'Simple Alert Dialog',
      'This is a simple alert dialog with your content.',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showCustomAlertDialog(context);
              },
              child: const Text('Show Alert Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _simpleCustomAlertDialog(context);
              },
              child: const Text('Show Simple Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
              },
              child: const Text('Show Date Picker'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          const Text('Modal Bottom Sheet'),
                          ListTile(
                            title: Text('Option 1'),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: const Text('Option 2'),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ListTile(
                            title: const Text('Option 3'),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Modal Bottom Sheet'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showConfirmationDialog(context);
              },
              child: const Text('Show Confirmation Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
