import 'package:ecommerce/modules/on_boarding/presentation/controller/onboarding_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnBoardingState> {
  OnboardingCubit() : super(OnBoardingInitState());

  bool last = false;

  void checkLast(double index) {
    index < 1.5 ? last = false : last = true;
    emit(LastPage());
  }
}
