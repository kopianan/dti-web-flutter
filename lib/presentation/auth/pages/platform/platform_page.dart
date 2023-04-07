import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class PlatformPage extends StatefulWidget {
  static const String routeName = '/platform';
  const PlatformPage({super.key});

  @override
  State<PlatformPage> createState() => _PlatformPageState();
}

class _PlatformPageState extends State<PlatformPage> {
  @override
  void initState() {
    launch('http://onelink.to/mrk8sq');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/imgs/me.png',
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "DoorToID",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "For better experience\nplease download our apps on",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    launch('http://onelink.to/mrk8sq');

                    // launchUrl(Uri.parse(
                    //     'https://apps.apple.com/id/app/doortoid/id1605339075'));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      'assets/app-store.png',
                      width: double.infinity,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch('http://onelink.to/mrk8sq');

                    // launchUrl(Uri.parse(
                    //     'https://play.google.com/store/apps/details?id=com.doortoid.doortoid&hl=en'));
                  },
                  child: Image.asset(
                    'assets/google-play.png',
                    width: double.infinity,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
