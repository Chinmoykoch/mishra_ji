import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState.initial()) {
    on<OnboardingPageChangedEvent>(_onPageChanged);
    on<OnboardingCompleteEvent>(_onComplete);
  }

  void _onPageChanged(
      OnboardingPageChangedEvent event, Emitter<OnboardingState> emit) {
    final isLastPage = event.pageIndex == state.pages.length - 1;
    emit(state.copyWith(
      currentPage: event.pageIndex,
      isLastPage: isLastPage,
    ));
  }

  Future<void> _onComplete(
      OnboardingCompleteEvent event, Emitter<OnboardingState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingComplete', true);
  }
}
