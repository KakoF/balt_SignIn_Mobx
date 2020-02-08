import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  
  @observable
  String status ='';

  @observable
  String token='';

  @observable
  String refreshToken='';

  void setSession(String pStatus, String pToken, String pRefreshToken){
    status = pStatus;
    token = pToken;
    refreshToken = pRefreshToken;
  }
}