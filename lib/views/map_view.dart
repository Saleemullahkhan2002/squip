import 'package:flutter/material.dart';
import 'package:squip/view_models/map_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => MapViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(body: Text("Map"));
        });
  }
}
