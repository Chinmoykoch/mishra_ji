abstract class OnboardingEvent {}

class OnboardingPageChangedEvent extends OnboardingEvent {
  final int pageIndex;
  OnboardingPageChangedEvent(this.pageIndex);
}

class OnboardingCompleteEvent extends OnboardingEvent {}
