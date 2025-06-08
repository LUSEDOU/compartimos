import 'package:admin/office_status/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template office_status_body}
/// Body of the OfficeStatusPage.
///
/// Add what it does
/// {@endtemplate}
class OfficeStatusBody extends StatelessWidget {
  /// {@macro office_status_body}
  const OfficeStatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OfficeStatusBloc, OfficeStatusState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
