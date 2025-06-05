import 'package:flutter/material.dart';
import 'package:admin/user_detail/bloc/bloc.dart';

/// {@template user_detail_body}
/// Body of the UserDetailPage.
///
/// Add what it does
/// {@endtemplate}
class UserDetailBody extends StatelessWidget {
  /// {@macro user_detail_body}
  const UserDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailBloc, UserDetailState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
