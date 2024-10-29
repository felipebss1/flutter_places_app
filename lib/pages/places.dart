import 'package:flutter/material.dart';
import 'package:flutter_places_app/pages/add_place_page.dart';
import 'package:flutter_places_app/provider/user_places.dart';
import 'package:flutter_places_app/widgets/places_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesPage extends ConsumerStatefulWidget {
  const PlacesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlacesPageState();
}

class _PlacesPageState extends ConsumerState<PlacesPage> {
  late Future<void> _placesFuture;

  @override
  void initState() {
    _placesFuture = ref.read(userPlacesProvider.notifier).loadPlaces();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddPlacePage(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _placesFuture,
          builder: (context, snapshot) =>
              snapshot.connectionState == ConnectionState.waiting
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : PlacesList(
                      places: userPlaces,
                    ),
        ),
      ),
    );
  }
}
