import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

import '../../../../Constants.dart';

class StarSectionHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  theme(context).primaryColor.withAlpha(150),
                  theme(context).primaryColor,
                ],
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Text(
                  "Star",
                  style: theme(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      Constants.coinIcon,
                      height: 30,
                    ),
                    SizedBox(width: 6,),
                    Text(
                      "0 Points",
                      style: theme(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Image.asset(
              Constants.logo,
              color: Color(0xFFffbc3a),
              height: 40,
            ),
          ),
        )
      ],
    );
  }
}
