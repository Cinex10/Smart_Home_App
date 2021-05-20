import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LightPage extends StatefulWidget {
  static final String id = '/light';

  @override
  _LightPageState createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light Page'),
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF292D5C),
      ),
      body: Column(
        children: [
          Image.asset('assets/light.jpg'),
          Expanded(
            child: ControlCard(
              isSwitched: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
          Expanded(
            child: ControlCard(
              isSwitched: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ControlCard extends StatefulWidget {
  ControlCard({this.isSwitched, this.onChanged});

  final bool isSwitched;
  final void Function(bool) onChanged;

  @override
  _ControlCardState createState() => _ControlCardState();
}

class _ControlCardState extends State<ControlCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(7.0),
            child: Text(
              'Room 1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF292D5C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              border: Border.all(
                color: Color(0xFF292D5C),
                width: 5.0,
              ),
            ),
            child: Column(
              children: [
                SwitchListTile(
                  value: widget.isSwitched,
                  onChanged: widget.onChanged,
                  title: Text('Light 1'),
                  secondary: FaIcon(FontAwesomeIcons.lightbulb),
                ),
                SwitchListTile(
                  value: widget.isSwitched,
                  onChanged: widget.onChanged,
                  title: Text('Light 2'),
                  secondary: FaIcon(FontAwesomeIcons.lightbulb),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
