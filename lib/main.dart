import 'package:bloc_deneme/blocs/books_bloc/bloc.dart';
import 'package:bloc_deneme/blocs/counter_bloc/bloc.dart';
import 'package:bloc_deneme/blocs/page_bloc/bloc.dart';
import 'package:bloc_deneme/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(CounterState(counter: 0)),
        ),
        BlocProvider(
          create: (context) => PageBloc(PageState(pageName: 'Main Page')),
        ),
        BlocProvider(
          create: (context) => BookBloc(BooksInitState())..add(FetchBooks()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        // home: Page(),
        initialRoute: ROOT_URL,
        routes: Routes.routes,
      ),
    );
  }
}
