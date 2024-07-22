class LoginModel {
  String? loginName;
  String? password;

  LoginModel({this.loginName, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    loginName = json['login_name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login_name'] = this.loginName;
    data['password'] = this.password;
    return data;
  }
}
