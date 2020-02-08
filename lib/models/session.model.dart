class SessionModel {
  String status;
  String token;
  String refreshToken;

  SessionModel({this.status, this.token, this.refreshToken});

  SessionModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    data['refreshToken'] = this.refreshToken;
    return data;
  }
}