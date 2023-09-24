
import 'package:firebase_auth/firebase_auth.dart';
import 'package:job_timer/app/services/auth/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServiceImpl implements AuthService{
  @override
  Future<void> signIn() async{
    final googleUser = await GoogleSignIn().signIn(); //faz login com o google, abre a tela google
    final googleAuth = await googleUser?.authentication; //detalhes da conexão

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().disconnect();
  }

}