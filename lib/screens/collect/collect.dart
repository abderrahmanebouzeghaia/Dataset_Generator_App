import 'package:drone/constants.dart';
import 'package:drone/controllers/navbar_controllers.dart';
import 'package:drone/models/card_item_model.dart';
import 'package:drone/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CollectScreen extends StatelessWidget {
  const CollectScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://abdoupfe.netlify.app');
    Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
    }
    }
    return Consumer<NavigationController>(
      builder: (context, navigationController, child) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Collect \nData',
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
                        onPressed: _launchUrl,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(secondClr),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Visite website',
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
          ),
        );
      },
    );
  }
}
