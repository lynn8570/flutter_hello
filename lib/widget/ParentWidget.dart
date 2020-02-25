import 'package:flutter/material.dart';
import 'package:flutter_hello/page/page_fade.dart';
import 'package:flutter_hello/widget/TapboxB.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });

    Navigator.of(context).push(_createRoute());

  }
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => FadePage(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapboxB(active: _active,
      onChanged: _handleTapboxChanged,),
    );
  }
}


