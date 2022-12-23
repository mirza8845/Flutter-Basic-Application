import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jahanzaib'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar =
                    SnackBar(content: Text("Hello, Wellcome to My App"));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("Click me")),
        ),
      ),
    );
  }
}
