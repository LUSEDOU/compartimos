import 'package:admin/office_status/bloc/bloc.dart';
import 'package:admin/office_status/widgets/office_status_body.dart';
import 'package:flutter/material.dart';

/// {@template office_status_page}
/// A description for OfficeStatusPage
/// {@endtemplate}
class OfficeStatusPage extends StatelessWidget {
  /// {@macro office_status_page}
  const OfficeStatusPage({super.key});

  /// The static route for OfficeStatusPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const OfficeStatusPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OfficeStatusBloc(),
      child: const Scaffold(
        body: OfficeStatusView(),
      ),
    );
  }    
}

/// {@template office_status_view}
/// Displays the Body of OfficeStatusView
/// {@endtemplate}
class OfficeStatusView extends StatelessWidget {
  /// {@macro office_status_view}
  const OfficeStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const OfficeStatusBody();
  }
}
