import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationController{
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  int id = 0;
  Future<void> showNotification(String? title, String body,
      {String channelId = "1", String channelName = "Envest"}) async {
     AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails(channelId, channelName,
        channelDescription: 'Envest',
        importance: Importance.low,
        priority: Priority.low,sound: null,
        ticker: 'ticker');
     NotificationDetails notificationDetails =
    NotificationDetails(android: androidNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
      id++, title, body, notificationDetails,);
    //payload: 'item x');
  }

}