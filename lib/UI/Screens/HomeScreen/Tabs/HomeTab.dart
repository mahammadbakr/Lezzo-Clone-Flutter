import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Constants.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';
import 'package:lezzoo_clone_flutter/UI/Components/CategoryBox.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/BalanceHome.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/HeaderHome.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/StarSectionHome.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  // final words = Provider.of<Language>(context).words;

  @override
  Widget build(BuildContext context) {
    // final words = Provider.of<OtherProvider>(context,listen:false ).getAllSkins();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderHome(),
              BalanceHome(),
              StarSectionHome(),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                        'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 2.4,
                  ),
                  CategoryBox(
                    title: 'Markets',
                    color: Colors.lightBlueAccent,
                    imageUrl:
                        'https://www.pngkey.com/png/full/28-282736_clipart-big-image-png-transparent-background-nachos-clipart.png',
                    size: MediaQuery.of(context).size.width / 2.4,
                  ),
                ],
              ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: [
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width / 4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                  CategoryBox(
                    title: 'Restaurants',
                    color: Colors.orange,
                    imageUrl:
                    'https://i.dlpng.com/static/png/6367350_preview.png',
                    size: MediaQuery.of(context).size.width /  4.8,
                  ),
                ],
              ),
            )

            ],
          ),
        ),
      ),
    );
  }
}
