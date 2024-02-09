import 'imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  MobileAds.instance.initialize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await PurchasesConfiguration("goog_RQfrtfPfmLRrpvSfeDkOJszNJLZ");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationScreen(),
    );
  }
}
