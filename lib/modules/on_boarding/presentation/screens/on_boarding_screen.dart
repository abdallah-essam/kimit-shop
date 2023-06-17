import 'package:ecommerce/modules/on_boarding/presentation/controller/onboarding_cubit.dart';
import 'package:ecommerce/modules/on_boarding/presentation/controller/onboarding_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../shared/constants/images/my_images.dart';
import '../../../../shared/constants/strings/my_strings.dart';
import '../../../../shared/routes/my_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        body: BlocBuilder<OnboardingCubit, OnBoardingState>(
            builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Stack(alignment: Alignment.center, children: [
              PageView.builder(
                controller: controller,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  controller.addListener(() {
                    context.read<OnboardingCubit>().checkLast(controller.page!);
                  });

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        MyImages.onBoardingImages[index],
                        height: 260,
                        width: 260,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        MyStrings.onBoardingTitles[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xff023047),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 29),
                      SizedBox(
                        width: 260,
                        child: Text(
                          MyStrings.onBoardingSubtitles[index],
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xff5B5B5B)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 64)
                    ],
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
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
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: () {
                        controller.page! < 2
                            ? controller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.linearToEaseOut)
                            : Navigator.pushReplacementNamed(
                                context, MyRoutes.login);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          minimumSize: const Size(double.infinity, 48),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(context.read<OnboardingCubit>().last
                          ? 'Get Started'
                          : 'Next')),
                  const SizedBox(height: 16),
                  context.read<OnboardingCubit>().last
                      ? const SizedBox(height: 48)
                      : TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, MyRoutes.login);
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                                color: Color(0xff5B5B5B),
                                decoration: TextDecoration.underline),
                          )),
                  const SizedBox(height: 32),
                ],
              ),
            ]),
          );
        }),
      ),
    );
  }
}
