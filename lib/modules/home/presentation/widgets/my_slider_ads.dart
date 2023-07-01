import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySliderAdsWidget extends StatelessWidget {
  const MySliderAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return SizedBox(
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: controller,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF6F4F0),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Row(children: [
                  
                ]),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                    borderRadius: BorderRadius.circular(12),
                    width: 10,
                    height: 10,
                    color: const Color(0x305B5B5B)),
                activeDotDecoration: DotDecoration(
                  color: const Color(0xffFFB703),
                  height: 10,
                  width: 10,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
