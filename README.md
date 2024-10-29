# Flutter Places App

This is a Flutter project that shows a list of places and allows the user to add new places. The user can see the places in a map and also see the details of each place.

This project was made for studies purposes, through AcadeMind Course.

## How it works

The project uses the Google Maps API to show the places in a map. The user can add new places by clicking in the "Add place" button. The user can see the details of each place by clicking in the place in the list.

## How to use Google Maps API

In order to use Google Maps API, it'll be necessary to change some files:

* In "AndroidManifest.xml", change the line 7 to add the API key:
  <meta-data android:name="com.google.android.geo.API_KEY"
             android:value="YOUR_GOOGLE_MAPS_API_KEY_HERE"/>
* In "AppDelegate.swift", change the line 11 to add the API key:
  GMSServices.provideAPIKey("YOUR_GOOGLE_MAPS_API_KEY_HERE")
* In "places_details_page.dart", change the line 13 to add the API key:
  static const String _GOOGLE_MAPS_API_KEY = "YOUR_GOOGLE_MAPS_API_KEY_HERE";
* In "location_input.dart", change the lines 29 and 34 to add the API key:
  static const String _GOOGLE_MAPS_API_KEY = "YOUR_GOOGLE_MAPS_API_KEY_HERE";
  final _GOOGLE_MAPS_API_KEY = "YOUR_GOOGLE_MAPS_API_KEY_HERE";

## Help

This project was made with the help of Codeium and Blackbox AI. I would like to thanks AcadeMind for the course and the support.

