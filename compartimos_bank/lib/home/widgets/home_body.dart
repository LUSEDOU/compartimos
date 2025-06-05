import 'package:flutter/material.dart';
import 'package:compartimos_bank/home/bloc/bloc.dart';

/// {@template home_body}
/// Body of the HomePage.
///
/// Add what it does
/// {@endtemplate}
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
