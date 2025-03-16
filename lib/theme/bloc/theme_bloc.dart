import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_theme.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(themeData: AppTheme.lightTheme, isDarkMode: false)) {
    on<ToggleTheme>((event, emit) {
      final isDarkMode = !state.isDarkMode;
      emit(ThemeState(
        themeData: isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
        isDarkMode: isDarkMode,
      ));
    });
  }
}
