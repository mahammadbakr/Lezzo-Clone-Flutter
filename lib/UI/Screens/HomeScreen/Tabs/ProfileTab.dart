
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // AuthenticationProvider auth =
    //     Provider.of<AuthenticationProvider>(context, listen: false);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text("profile"),
          Text("profile"),
          Text("profile"),
          Text("profile"),
          Text("profile"),
        ],
      ),
    );
  }
}

