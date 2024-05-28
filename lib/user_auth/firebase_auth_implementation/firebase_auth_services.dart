
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  // экземлпяр firebase, позволяет получить доступ к методам аутентификации Firebase.
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //метод для регистрации пользователя
  Future<User?> signUpWithEmailAndPassword(String email, String password) async{
    //блок трай кетч, для отслеживания ошибок
    try{
      //попытка зарегестрировать пользователя
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password);
      return credential.user;
    }catch(e){
      print("Some error $e");
    }
    return null;
  }

  //метод для входа пользователя
  Future<User?> signInWithEmailAndPassword(String email, String password) async{
    //блок трай кетч, для отслеживания ошибок
    try{
      //попытка найти пользователя
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password);
      return credential.user;
    }catch(e){
      print("Some error $e");
    }
    return null;
  }

}