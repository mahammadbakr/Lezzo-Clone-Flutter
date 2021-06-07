import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.withAlpha(30),
                    hoverColor: Colors.red,
                    focusColor: Colors.red,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black45, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black45, width: 0.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black45, width: 0.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black45, width: 0.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black45, width: 0.0),
                    ),
                    contentPadding: EdgeInsets.only(top: 20),
                    // add padding to adjust text
                    isDense: true,
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black45,
                    ))),
          ),

          SizedBox(height: 20,),

          Divider(height: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.timelapse_outlined,color: Colors.black12,),
                SizedBox(width: 10,),
                Text("Previous searches",
                    style: theme(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black38, fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.timelapse_outlined,color: Colors.black12,),
                SizedBox(width: 10,),
                Text("Previous searches",
                    style: theme(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black38, fontSize: 18)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.timelapse_outlined,color: Colors.black12,),
                SizedBox(width: 10,),
                Text("Previous searches",
                    style: theme(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.black38, fontSize: 18)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
