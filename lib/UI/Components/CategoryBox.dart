import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';

class CategoryBox extends StatelessWidget {
 final String title;
 final String imageUrl;
 final Color color;
 final double size;

 CategoryBox({required this.title,required this.imageUrl,required this.color,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            color.withAlpha(170),
            color,
          ],
        ),
      ),
      height:size,
      width: size,
      child: Center(
        child: Column(
          children: [
            Expanded(child: Image.network(imageUrl)),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(title,
                  style: theme(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white, fontSize: size/8)),
            ),
          ],
        ),
      ),
    );
  }
}
