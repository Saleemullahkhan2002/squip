import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:squip/view_models/bottom_navigation_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BottomNavigationViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: IndexedStack(
              index: viewModel.current_index,
              children: viewModel.screens,
            ),
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: viewModel.current_index,
              onTap: (i) => viewModel.updateCurrentIndex(i),
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                  selectedColor: Colors.lightBlue,
                ),

                /// Likes
                SalomonBottomBarItem(
                  icon: Icon(Icons.medical_services_outlined),
                  title: Text("Services"),
                  selectedColor: Colors.lightBlue,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.map_outlined),
                  title: Text("Map"),
                  selectedColor: Colors.lightBlue,
                ),
                SalomonBottomBarItem(
                  icon: Icon(Icons.person_3_outlined),
                  title: Text("Profile"),
                  selectedColor: Colors.lightBlue,
                ),
              ],
            ),
          );
        });
  }
}
