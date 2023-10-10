import 'package:drone/constants.dart';
import 'package:drone/controllers/navbar_controllers.dart';
import 'package:drone/models/card_item_model.dart';
import 'package:drone/utils.dart';
import 'package:drone/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
      builder: (context, navigationController, child) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: const Text(
                        'Drone Piloting',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.75),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    //! Stats

                    const SizedBox(height: 10.0),

                    SizedBox(
                      height: screenWidth * .35,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CardWidget(
                              card: CardItem.emptyCard()
                                ..name = 'Battery'
                                ..icon = Icons.battery_2_bar_outlined
                                ..info= '30%',
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: CardWidget(
                              card: CardItem.emptyCard()
                                ..name = 'Connection'
                                ..icon = Icons.wifi
                                ..info='connected'
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: CardWidget(
                              card: CardItem.emptyCard()
                                ..name = 'Status'
                                ..icon = Icons.check_circle
                                ..info='actif'
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: screenWidth*.25,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(color: mainClr),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Text of  \nSpeech',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  letterSpacing: 2,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                              width: 120,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(secondClr),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Command',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0,),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                               Text(
                                'The excuted command',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  letterSpacing: 2,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                'Turning Left',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  letterSpacing: 2,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(getImage('drone_left')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
