import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/core/bloc_observer.dart';
import 'injector.dart';

import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  Bloc.observer = SimpleBlocObserver();

  runApp(const App());
}
