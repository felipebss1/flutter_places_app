import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_places_app/pages/add_place_page.dart';
import 'package:flutter_places_app/pages/places_list_page.dart';
import 'package:flutter_places_app/provider/great_places.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myColorScheme = ColorScheme(
      primary: Colors.indigo,
      secondary: Colors.amber,
      surface: Colors.white,
      background: Colors.grey[200]!,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    );
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: myColorScheme,
        ),
        home: PlacesListPage(),
        routes: {
          AddPlacePage.routeName:(context) => AddPlacePage(),
        },
      ),
    );
  }
}
