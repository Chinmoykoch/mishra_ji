import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/theme_bloc.dart';
import 'bloc/theme_state.dart';

class ThemeProvider extends StatelessWidget {
  final Widget child;

  const ThemeProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeData,
            home: child,
          );
        },
      ),
    );
  }
}
