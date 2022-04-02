import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_welfare/core/route/route.dart';
import 'package:student_welfare/screens/dashboard/dashboard_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DashboardProvider>(
          create: (_) => DashboardProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: const MaterialColor(
            0xFF7C99AC,
            <int, Color>{
              50: Color(0xFF7CD1B8),
              100: Color(0xFF7CD1B8),
              200: Color(0xFF7CD1B8),
              300: Color(0xFF7CD1B8),
              400: Color(0xFF7CD1B8),
              500: Color(0xFF7CD1B8),
              600: Color(0xFF7CD1B8),
              700: Color(0xFF7CD1B8),
              800: Color(0xFF7CD1B8),
              900: Color(0xFF7CD1B8),
            },
          ),
          scaffoldBackgroundColor: const Color(0xFFFFF8F3),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 0.0,
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
            headline2: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              // fontWeight: FontWeight.w400,
            ),
            headline3: TextStyle(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
            headline4: TextStyle(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w300,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(
                double.infinity,
                50.0,
              ),
              primary: const Color(0xFF6998AB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute.onGenerateRoute,
        initialRoute: AppRoute.initialRoute,
      ),
    );
  }
}
