import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterawesome/blocs/blocs.dart';
import 'package:flutterawesome/blocs/home_bloc.dart';
import 'package:flutterawesome/data/repository/home_repository.dart';
import 'package:flutterawesome/utils/locator.dart';

import '../../localizations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) =>
          HomeBloc(homeRepository: locator<HomeRepository>())..add(GetData()),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<HomeBloc, BaseState>(
            builder: (context, state) {
//              if (state is LoadingState) return CircularProgressIndicator();
//              if (state is LoadedState) return Text(state.data);
              return Text(Language.of(context).getText("example"));
            },
          ),
        ),
      ),
    );
  }
}
