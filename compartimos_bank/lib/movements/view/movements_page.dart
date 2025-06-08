import 'package:compartimos_bank/movements/bloc/bloc.dart';
import 'package:compartimos_bank/movements/widgets/movements_body.dart';
import 'package:flutter/material.dart';

/// {@template movements_page}
/// A description for MovementsPage
/// {@endtemplate}
class MovementsPage extends StatelessWidget {
  /// {@macro movements_page}
  const MovementsPage({super.key});

  /// The static route for MovementsPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const MovementsPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovementsBloc(),
      child: const Scaffold(
        body: MovementsView(),
      ),
    );
  }    
}

/// {@template movements_view}
/// Displays the Body of MovementsView
/// {@endtemplate}
class MovementsView extends StatelessWidget {
  /// {@macro movements_view}
  const MovementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MovementsBody();
  }
}
