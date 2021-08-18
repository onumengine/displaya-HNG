import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String? hintText;
  final GlobalKey key;
  final TextEditingController controller;
  String enteredText;

  TextWidget({
    required this.key,
    this.hintText,
    required this.controller,
  }) : enteredText = controller.text;

  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: this.controller,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration.collapsed(
                hintText: this.hintText,
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
        ],
      ),
    );
  }
}
