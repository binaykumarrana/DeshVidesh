import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Country Details"),
      ),
    );
  }
}
