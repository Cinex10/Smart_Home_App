import 'package:flutter/material.dart';
import 'package:flutter_application_3/GatewayPage.dart';
import 'package:flutter_application_3/LightPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  static final String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF292D5C),
        title: Text('SMART HOME'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/house.jpg',
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  constraints: BoxConstraints.tight(Size(180, 50)),
                  icon: FaIcon(
                    FontAwesomeIcons.warehouse,
                    color: Color(0xFF292D5C),
                    size: 90.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, GatewayPage.id);
                  },
                ),
                IconButton(
                  constraints: BoxConstraints.tight(Size(140, 50)),
                  icon: FaIcon(
                    FontAwesomeIcons.solidLightbulb,
                    color: Color(0xFF292D5C),
                    size: 90.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LightPage.id);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              'Start your \n smart home experince here',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
