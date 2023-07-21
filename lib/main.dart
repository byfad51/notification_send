import 'package:email/notification_controller.dart';
import 'package:email/notification_send_settings.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setting();
  NotificationSender().getInitial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Envest',
      theme: ThemeData(
        useMaterial3: true,
        iconTheme: IconThemeData(color: Colors.blueGrey),
        appBarTheme: AppBarTheme(
            centerTitle: true, color:Colors.blueGrey[200]
        ),
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

NotificationController notificationController = NotificationController();
  void gonder(){

   // NotificationController().showNotification("tiasdadtle", "sadadads");
    notificationController.showNotification("123456", "basdody");
    notificationController.showNotification("t1234itle", "afdsad");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Text("bildirim gönderici"),
          ElevatedButton(onPressed: gonder, child: Text("gonder")),

        ],),
      ),
    );
  }
}
