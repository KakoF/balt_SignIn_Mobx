import 'package:portfolio_napp/models/session.model.dart';
import 'package:portfolio_napp/view-models/signin.viewmodels.dart';

class AccountRepository {

  Future<SessionModel> loginAccount(SigninViewModel model) async {
    
    await Future.delayed(new Duration(milliseconds: 1500));

    return new SessionModel(status: 'login', token: 'asdasd', refreshToken: 'xczvxcvxc');
 
  }
}