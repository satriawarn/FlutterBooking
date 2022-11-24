import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'finish_cubit.dart';
import 'finish_state.dart';

class FinishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FinishCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<FinishCubit>(context);

    return Container();
  }
}


