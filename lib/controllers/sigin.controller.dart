import 'package:portfolio_napp/models/session.model.dart';
import 'package:portfolio_napp/repositories/account.repository.dart';
import 'package:portfolio_napp/view-models/signin.viewmodels.dart';

class SiginController{

  AccountRepository repository;

  SiginController(){
    repository = new AccountRepository();
  }

  Future<SessionModel> login(SigninViewModel model) async {
      model.busy = true;
      var user = await repository.loginAccount(model);
      model.busy = false;
      return user;
    }

}