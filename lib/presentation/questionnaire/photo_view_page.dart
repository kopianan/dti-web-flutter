import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class PhotoViewPage extends StatefulWidget {
  static const String routeName = '/photo-view';
  const PhotoViewPage({
    super.key,
    required this.images,
    this.isNetwork = true,
    this.isAsset = false,
    this.imagesBytes,
  });
  final List<String> images;
  final bool isNetwork;
  final List<Uint8List>? imagesBytes;
  final bool isAsset;

  @override
  State<PhotoViewPage> createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  final CarouselController carouselController = CarouselController();
  List<Widget> setupImages() {
    if (kIsWeb && widget.imagesBytes != null) {
      return widget.imagesBytes!
          .map((item) => Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.memory(item, fit: BoxFit.contain, width: 1000.0)
                      ],
                    )),
              ))
          .toList();
    } else {
      return widget.images
          .map((item) => Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        widget.isNetwork
                            ? Image.network(item,
                                fit: BoxFit.contain, width: 1000.0)
                            : widget.isAsset
                                ? Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                  )
                                : kIsWeb
                                    ? Image.network(item,
                                        fit: BoxFit.contain, width: 1000.0)
                                    : Image.file(File(item),
                                        fit: BoxFit.contain, width: 1000.0)
                      ],
                    )),
              ))
          .toList();
    }
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          InkWell(
            onTap: () {
              launch(widget.images[_current]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Download",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                  ),
                  10.horizontalSpace,
                  Icon(
                    Icons.download,
                    color: AppColor.primaryColor,
                  ),
                  10.horizontalSpace
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: setupImages(),
            carouselController: carouselController,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselController.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
