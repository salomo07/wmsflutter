import 'package:flutter/material.dart';

class DialogRegistrasiWidget extends StatefulWidget {
  const DialogRegistrasiWidget({super.key});

  @override
  State<DialogRegistrasiWidget> createState() => _DialogRegistrasiWidgetState();
}

class _DialogRegistrasiWidgetState extends State<DialogRegistrasiWidget> {
  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('AlertDialog Title'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return const Placeholder();
  }
}
