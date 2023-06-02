import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:flutter_appritehack/src/constant/key/appwrite_key.dart';
import 'package:flutter_appritehack/src/core/core.dart';
import 'package:flutter_appritehack/src/core/provider.dart';
import 'package:flutter_appritehack/src/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';


final userAPIProvider = Provider((ref) {
  return UserAPI(
    db: ref.watch(appwriteDatabaseProvider),
    realtime: ref.watch(appwriteRealtimeProvider),
  );
});


abstract class IUserAPI {
  FutureEitherVoid saveUserData(UserModel userModel);
  // Future<model.Document> getUserData(String uid);
  // Future<List<model.Document>> searchUserByName(String name);
  // FutureEitherVoid updateUserData(UserModel userModel);
  // Stream<RealtimeMessage> getLatestUserProfileData();
  // FutureEitherVoid followUser(UserModel user);
  // FutureEitherVoid addToFollowing(UserModel user);
}


class UserAPI implements IUserAPI {
  UserAPI({
    required Databases db,
    required Realtime realtime,
  })  : _realtime = realtime,
        _db = db;

  final Databases _db;
  final Realtime _realtime;
  
  @override
  FutureEitherVoid saveUserData(UserModel userModel) async{
    try {
      await _db.createDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.collectionId,
        documentId: userModel.uid,
        data: userModel.toMap(),
      );
      return right(null);
    } on AppwriteException catch (e, st) {
      return left(
        Failure(
          e.message ?? 'Some unexpected error occurred',
          st,
        ),
      );
    } catch (e, st) {
      return left(Failure(e.toString(), st));
    }
  }
}
