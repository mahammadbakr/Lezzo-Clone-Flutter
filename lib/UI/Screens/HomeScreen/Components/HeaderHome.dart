import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

import '../../../../Constants.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    Constants.homeIcon,
                    color: theme(context).primaryColor,
                    height: 20,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Delivering To",
                    style: theme(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                width: 4,
              ),
              Text("Name of Place",
                  style: theme(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black, fontSize: 24)),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Constants.notificationIcon,
              height: 40,
            ),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.2),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 24,
              child: Image.asset(
                Constants.profileIcon,
                color: Colors.white,
                height: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}
