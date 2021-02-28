import 'package:bloc/bloc.dart';
import 'package:wifi_password_manager/test/pages/Settings.dart';
import 'package:wifi_password_manager/test/pages/dashboard.dart';
import 'package:wifi_password_manager/test/pages/networksettings.dart';

enum NavigationEvents {
  DashboardClickEvent,
  NetworkSettingClickEvent,
  SettingsClickEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickEvent:
        yield HomePage();
        break;
      case NavigationEvents.NetworkSettingClickEvent:
        yield NetworkSettings();
        break;
      case NavigationEvents.SettingsClickEvent:
        yield Settings();
        break;

    }
  }

}