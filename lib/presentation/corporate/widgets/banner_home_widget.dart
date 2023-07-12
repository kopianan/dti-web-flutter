import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerHomeWidget extends StatelessWidget {
  const BannerHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/corporate/home_1.png'),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Schedule a meeting with us to assist your visa application",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    "Do you need live assistance? Book a meeting with us so we can guide you in more details",
                    style: TextStyle(fontSize: 16),
                  ),
                  20.verticalSpace,
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            launch("https://wa.me/6281337308850");
                          },
                          child: const Text("Let's Go")),
                      const Spacer(),
                      Row(
                        children: [
                          const CircleAvatar(
                            child: Icon(Icons.arrow_back_ios_new_rounded),
                          ),
                          20.horizontalSpace,
                          const CircleAvatar(
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
