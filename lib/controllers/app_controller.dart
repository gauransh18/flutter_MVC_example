
import '../models/app_model.dart';

class AppController {
  final AppModel _model = AppModel();

  AppModel get model => _model;

  void onTabChanged(int index) {
   
    _model.currentIndex = index;

  }

   void onNotificationAdded() {
    _model.hasNotifications = true; 
  }

  void onNotificationsRead() {
    _model.hasNotifications = false;
  }

}
