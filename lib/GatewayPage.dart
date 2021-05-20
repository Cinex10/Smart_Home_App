import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GatewayPage extends StatefulWidget {
  static final String id = '/gateway';
  @override
  _GatewayPageState createState() => _GatewayPageState();
}

class _GatewayPageState extends State<GatewayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF292D5C),
        title: Text('Gateway Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          bottom: 10.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/garage.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF292D5C),
                          minimumSize: Size(110, 110),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(110),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.lockOpen,
                        ),
                        label: Text('Open'),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF292D5C),
                          minimumSize: Size(110, 110),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(110),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.lock,
                        ),
                        label: Text('Close'),
                      ),
                    ],
                  ),
                  Text('Tap \'open\' or \'close\' to control the gateway')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
