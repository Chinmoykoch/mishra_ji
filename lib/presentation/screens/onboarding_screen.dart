import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/onboarding/onboarding_bloc.dart';
import '../blocs/onboarding/onboarding_event.dart';
import '../blocs/onboarding/onboarding_state.dart';
import '../widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(),
      child: const OnboardingView(),
    );
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.currentPage > 0
                          ? IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                _pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                            )
                          : //const SizedBox(width: 48),
                          Image.asset(
                              'assets/images/splash_logo.png',
                              height: 40,
                            ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<OnboardingBloc>()
                              .add(OnboardingCompleteEvent());
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: const Text('Skip for now'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: state.pages.length,
                    onPageChanged: (index) {
                      context
                          .read<OnboardingBloc>()
                          .add(OnboardingPageChangedEvent(index));
                    },
                    itemBuilder: (context, index) {
                      return OnboardingPage(model: state.pages[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          state.pages.length,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == state.currentPage
                                  ? const Color(0xFFFF8C37)
                                  : Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      state.isLastPage
                          ? Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      side: const BorderSide(
                                          color: Color(0xFFFF8C37)),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/login');
                                    },
                                    child: const Text('Login'),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      backgroundColor: const Color(0xFFFF8C37),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<OnboardingBloc>()
                                          .add(OnboardingCompleteEvent());
                                      Navigator.pushReplacementNamed(
                                          context, '/home');
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Get Started',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(Icons.arrow_forward, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: const Color(0xFFFF8C37),
                                ),
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Next',
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(width: 8),
                                    Icon(Icons.arrow_forward, size: 16),
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
