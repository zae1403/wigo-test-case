import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/profile_bloc.dart';
import '../../../injector.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileBloc>()..add(const ProfileFetched()),
      child: const Scaffold(
        appBar: HomeAppBar(),
        body: HomeBody(),
      ),
    );
  }
}
