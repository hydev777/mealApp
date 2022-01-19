import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:meals/models/meal.dart';
import '../models/meal.dart';


class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability
  }) : super(key: key);

  final String? title;
  final String? imageUrl;
  final int? duration;
  final Complexity? complexity;
  final Affordability? affordability;

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                    ),
                    child: Image.network(imageUrl!, height: 250, width: double.infinity, fit: BoxFit.cover)
                ),
                Positioned(
                  child: Text(
                      title!,
                      style: const TextStyle( fontSize: 26, color: Colors.white ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
