// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomWidget extends StatefulWidget {
  const CustomWidget({
    Key? key,
    this.width,
    this.height,
    this.padding = 1.0,
    this.strokwWidth = 1.0,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double padding;
  final double strokwWidth;

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: EdgeInsets.all(widget.padding),
      child: Center(child: Text("Custom Widget")),
      decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(color: Colors.black, width: 2.0),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(widget.strokwWidth))),
    );
  }
}
