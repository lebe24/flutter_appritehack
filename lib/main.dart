import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/features/onboarding/mainboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() async{
  runApp(
   const ProviderScope(
      child: MyApp(),
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Appwrite hackathon',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        splashColor: Colors.black
      ),
      home: const Onboard()
    );
  }
}


// Client client = Client()
//     .setEndpoint('https://cloud.appwrite.io/v1')  // Your Appwrite Endpoint
//     .setProject('6470f92cbd45b53dfad9'); 
//   Account account = Account(client);

// final user = await account.create(
//     userId: ID.unique(),
//     email: 'me@appwrite.io',
//     password: 'password',
//     name: 'My Name'
// );

// print({user});

// final realtime = Realtime(client);
// final subscription = realtime.subscribe(['files']);

// subscription.stream.listen((response) {
//     if (response.events.contains('buckets.*.files.*.create')) {
//         // Log when a new file is uploaded
//         print(response.payload);
//     }
// });