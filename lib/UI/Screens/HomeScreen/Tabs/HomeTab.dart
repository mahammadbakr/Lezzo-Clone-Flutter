import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  // final words = Provider.of<Language>(context).words;

  @override
  Widget build(BuildContext context) {
    // final words = Provider.of<OtherProvider>(context,listen:false ).getAllSkins();
    return Center(
      child: Text("home"),
    );
  }
}
