
import 'package:drone/constants.dart';
import 'package:drone/models/card_item_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final CardItem card;
  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: white,
              displayColor: white,
            ),
      ),
      child: Container(
        width: screenWidth * .3 - 5.0,
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: mainClr,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 30.0,
                width: 80,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: white, width: 1.0),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      '${card.name}',
                      style: const TextStyle(
                        color: white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Icon(
                  card.icon,
                  color: white,
                  size: 30,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${card.info}',
                  style: const TextStyle(
                    color: white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
