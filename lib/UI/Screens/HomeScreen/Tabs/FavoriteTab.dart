import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

class FavoriteTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Favorite Stores",
                style: theme(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10,),

            Column(
              children: [
                Image.network(
                  "https://lh3.googleusercontent.com/proxy/2AlBl8KOaqBFV_sL_sDoDJnzDKM-OFgxUXpWmAAtfwqy47uk_23_S9Z8VKLJ1yEq__C8CwnYX7IUO_-ezzbUCVq3sl-hBBOVZb6gww",
                  scale: 6,
                ),
                SizedBox(height: 8,),
                Text("There is No Favorite Stores sorry !",
                    style: theme(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black54, fontSize: 14)),
              ],
            ),

            SizedBox(height: 30,),
            Text("Favorite Products",
                style: theme(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black, fontSize: 22)),
            SizedBox(height: 10,),

            Column(
              children: [
                Image.network(
                  "https://lh3.googleusercontent.com/proxy/2AlBl8KOaqBFV_sL_sDoDJnzDKM-OFgxUXpWmAAtfwqy47uk_23_S9Z8VKLJ1yEq__C8CwnYX7IUO_-ezzbUCVq3sl-hBBOVZb6gww",
                  scale: 6,
                ),
                SizedBox(height: 8,),
                Text("There is Favorite Products sorry !",
                    style: theme(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black54, fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
