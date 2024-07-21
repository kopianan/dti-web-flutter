import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AnalyticService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  Future<void> logLogin(String userId) async {
    await _analytics.setUserId(id: userId);
    await _analytics.logLogin(
      loginMethod: "MOBILE",
    );
  }

  Future<void> logEvent(String eventName) async {
    await _analytics.logEvent(
      name: eventName,
    );
  }
}
