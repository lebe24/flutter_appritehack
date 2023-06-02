import 'package:appwrite/appwrite.dart';
import 'package:flutter_appritehack/src/constant/key/appwrite_key.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appwriteClientProvider = Provider((ref) {

  Client client = Client();
  return client
        .setEndpoint(AppwriteConstants.endpoint)
        .setProject(AppwriteConstants.projectid)
        .setSelfSigned(status: true);

});

final appwriteAccountProvider = Provider((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Account(client);
});


final appwriteDatabaseProvider = Provider((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Databases(client);
});

final appwriteRealtimeProvider = Provider((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Realtime(client);
});