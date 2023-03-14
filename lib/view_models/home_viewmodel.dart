import 'package:squip/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = NavigationService();
  navigateToAmbulanceEmergency() {
    navigationService.navigateToAmbulanceEmergency();
  }

  navigateToPoliceEmergency() {
    navigationService.navigateTo(Routes.policeEmergency);
  }

  navigateToFireBrigadeEmergency() {
    navigationService.navigateTo(Routes.fireBrigadeEmergency);
  }
}
