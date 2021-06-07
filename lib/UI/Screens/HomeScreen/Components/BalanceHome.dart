import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

import '../../../../Constants.dart';

class BalanceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Colors.black54,
                  Colors.black87,
                ],
              )),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 40, top: 6, bottom: 6, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "0 IQD",
                      style: theme(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "LezzooClone Balance",
                      style: theme(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          ),
                          backgroundColor:
                          Colors.grey.withOpacity(0.2),
                        ),
                        Text(
                          "Send",
                          style: theme(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          backgroundColor:
                          Colors.grey.withOpacity(0.2),
                        ),
                        Text(
                          "Add",
                          style: theme(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            Constants.coinIcon,
            height: 38,
          ),
        )
      ],
    );
  }
}
