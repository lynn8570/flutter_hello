import 'package:flutter/material.dart';
import 'package:flutter_hello/page/page_animated_container.dart';


class TapboxA extends StatefulWidget {

  TapboxA({Key key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _TapboxAstate();
  }
}


//state 放在 widget中
class _TapboxAstate extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
    Navigator.of(context).push(_createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AnimatedContainerPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
      ),
    );
  }
}