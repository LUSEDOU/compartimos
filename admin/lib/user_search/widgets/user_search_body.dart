import 'package:flutter/material.dart';
import 'package:admin/user_search/bloc/bloc.dart';

/// {@template user_search_body}
/// Body of the UserSearchPage.
///
/// Add what it does
/// {@endtemplate}
class UserSearchBody extends StatelessWidget {
  /// {@macro user_search_body}
  const UserSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserSearchBloc, UserSearchState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
