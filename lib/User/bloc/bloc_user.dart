import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

class BlocUser implements Bloc{

  final _auth_repository = AuthRepository();

  //Caso de uso 1 : SigIn con Google
  Future<FirebaseUser> sigIn(){
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {

  }

}