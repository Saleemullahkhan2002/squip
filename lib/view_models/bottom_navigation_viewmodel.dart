import 'package:flutter/cupertino.dart';
import 'package:squip/views/map_view.dart';
import 'package:squip/views/home_view.dart';
import 'package:squip/views/profile_view.dart';
import 'package:squip/views/user_activeservices_screen.dart';
import 'package:stacked/stacked.dart';

class BottomNavigationViewModel extends BaseViewModel {
  final List<Widget> _screens = [
    HomeScreen(),
    ActiveServicesScreen(),
    MapView(),
    ProfileView()
  ];
  List<Widget> get screens => _screens;
  int current_index = 0;
  updateCurrentIndex(index) {
    current_index = index;
    rebuildUi();
  }
}
