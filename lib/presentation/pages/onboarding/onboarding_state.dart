import 'package:booking_aja/data/src/img_string.dart';

import '../../../data/model/onboarding/onboarding.dart';

class OnboardingState {
  final List<Onboarding> onboardingList = [
    Onboarding(
      title: "Find a Roomie!",
      description: "First on boarding page",
      image: ImgString.cittaStanding
    ),
    Onboarding(
      title: "Your Roomate Finder",
      description: "Second on boarding page",
      image: ImgString.cittaStanding2
    ),
    Onboarding(
      title: "Find Your Match!",
      description: "Third on boarding page",
      image: ImgString.cittaStanding1
    ),
  ];

  int currentIndex = 0;

  OnboardingState init() {
    return OnboardingState();
  }

  OnboardingState clone() {
    return OnboardingState();
  }
}
