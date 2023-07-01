import 'package:ecommerce/modules/home/presentation/widgets/my_choose_location_widget.dart';
import 'package:ecommerce/modules/home/presentation/widgets/my_notification_widget.dart';
import 'package:ecommerce/modules/home/presentation/widgets/my_search_widget.dart';
import 'package:ecommerce/modules/home/presentation/widgets/my_slider_ads.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          SizedBox(height: 64),
          Row(
            children: [
              Expanded(child: MySearchWidget()),
              SizedBox(width: 8),
              MyNotificationWidget(),
            ],
          ),
          SizedBox(height: 16),
          Row(children: [
            MyChooseLocationWidget(location: " Makram Nasr City - Cairo   "),
            Spacer()
          ]),
          SizedBox(height: 16),
          MySliderAdsWidget()


        ],
      ),
    );
  }
}
