import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shimmer/shimmer.dart';

class CardShimmer extends StatelessWidget {
  const CardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.0,
      child: Shimmer.fromColors(
          baseColor: Color.fromARGB(255, 150, 150, 150),
          highlightColor: Color.fromARGB(255, 234, 234, 234),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 20,
              )
            ],
          )),
    );
  }
}
