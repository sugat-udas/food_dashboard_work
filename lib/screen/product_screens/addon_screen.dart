import 'package:flutter/material.dart';
import 'package:food/addonScreen/body.dart';

class AddonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Body(),
      ),
    );
  }
}
