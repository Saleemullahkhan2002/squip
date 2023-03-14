import 'package:squip/views/ambulane_view.dart';
import 'package:squip/views/botttom_navigaton.dart';
import 'package:squip/views/firebrigade_view.dart';
import 'package:squip/views/home_view.dart';
import 'package:squip/views/police_view.dart';
import 'package:squip/views/signin_view.dart';
import 'package:squip/views/signup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:squip/view_models/ambulance_panel_viewmodel.dart';

import '../views/ambulance_panel.dart';
import '../views/fire_brigade_view.dart';
import '../views/map_view.dart';
import '../views/police_panel.dart';
import '../views/profile_view.dart';
import '../views/user_activeservices_screen.dart';

@StackedApp(routes: [
  MaterialRoute(page: SignUp, initial: true),
  MaterialRoute(page: SignIn),
  MaterialRoute(page: HomeScreen),
  MaterialRoute(page: AmbulanceView),
  MaterialRoute(page: PoliceView),
  MaterialRoute(page: FireBrigadeView),
  MaterialRoute(page: AmbulancePanel),
  MaterialRoute(page: PolicePanel),
  MaterialRoute(page: FireBrigadePanel),
  MaterialRoute(page: BottomBarScreen),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: ActiveServicesScreen),
  MaterialRoute(page: MapView)
], dependencies: [
  Singleton(classType: NavigationService),
])
class App {}
