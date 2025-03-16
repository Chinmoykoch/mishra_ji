import '../../models/onboarding_model.dart';

class OnboardingState {
  final int currentPage;
  final bool isLastPage;
  final List<OnboardingModel> pages;

  OnboardingState({
    required this.currentPage,
    required this.isLastPage,
    required this.pages,
  });

  factory OnboardingState.initial() {
    final pages = [
      OnboardingModel(
        title: 'Explore a wide range of products',
        description:
            'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
        imagePath: 'assets/images/onboarding image1.png',
      ),
      OnboardingModel(
        title: 'Explore a wide range of products',
        description:
            'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
        imagePath: 'assets/images/Onboarding image2.png',
      ),
      OnboardingModel(
        title: 'Safe and secure payments',
        description:
            'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
        imagePath: 'assets/images/onboarding3.png',
      ),
    ];

    return OnboardingState(
      currentPage: 0,
      isLastPage: false,
      pages: pages,
    );
  }

  OnboardingState copyWith({
    int? currentPage,
    bool? isLastPage,
    List<OnboardingModel>? pages,
  }) {
    return OnboardingState(
      currentPage: currentPage ?? this.currentPage,
      isLastPage: isLastPage ?? this.isLastPage,
      pages: pages ?? this.pages,
    );
  }
}
