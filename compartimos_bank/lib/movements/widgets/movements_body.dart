import 'package:compartimos_bank/movements/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template movements_body}
/// Body of the MovementsPage.
///
/// Add what it does
/// {@endtemplate}
class MovementsBody extends StatelessWidget {
  /// {@macro movements_body}
  const MovementsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovementsBloc, MovementsState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
