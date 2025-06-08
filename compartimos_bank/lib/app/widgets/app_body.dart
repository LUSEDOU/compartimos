import 'package:flutter/material.dart';
import 'package:compartimos_bank/app/bloc/bloc.dart';

/// {@template app_body}
/// Body of the AppPage.
///
/// Add what it does
/// {@endtemplate}
class AppBody extends StatelessWidget {
  /// {@macro app_body}
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
