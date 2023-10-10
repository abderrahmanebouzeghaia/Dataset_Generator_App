import 'package:drone/constants.dart';
import 'package:drone/controllers/navbar_controllers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DroneNav extends StatelessWidget {
  const DroneNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
      builder: (context, navigationController, child) {
        var currentIndex = navigationController.currentIndex;
        return Scaffold(
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(screenWidth * .05),
            height: screenWidth * .155,
            decoration: BoxDecoration(
              color: mainClr,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * .02),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  navigationController
                      .navigate(navigationController.screens[index]);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex
                          ? screenWidth * 0.5
                          : screenWidth * 0.3, // Adjusted this line
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == currentIndex ? screenWidth * .12 : 0,
                        width: index == currentIndex
                            ? screenWidth * 0.5
                            : screenWidth * 0.3, // Adjusted this line
                        decoration: BoxDecoration(
                          color: index == currentIndex
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex
                          ? screenWidth * 0.5
                          : screenWidth * 0.3, // Adjusted this line
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == currentIndex
                                    ? screenWidth * 0.2
                                    : screenWidth * 0.1, // Adjusted this line
                              ),
                              AnimatedOpacity(
                                opacity: index == currentIndex ? 1 : 0,
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: Text(
                                  index == currentIndex
                                      ? '${listOfStrings[index]}'
                                      : '',
                                  style: const TextStyle(
                                    color: mainClr,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == currentIndex
                                    ? screenWidth * 0.05
                                    : screenWidth * 0.03, // Adjusted this line
                              ),
                              Icon(
                                listOfIcons[index],
                                size: screenWidth * .076,
                                color: index == currentIndex
                                    ? mainClr
                                    : white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(child: navigationController.currentScreen),
        );
      },
    );
  }
}
