class User {
  String? sId;
  String? name;
  String? password;
  String? createdAt;
  String? updatedAt;
  String? accessToken;
  String? refreshToken;
  int? iV;

  User(
      {this.sId,
      this.name,
      this.password,
      this.accessToken,
      this.refreshToken,
      this.createdAt,
      this.updatedAt,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    password = json['password'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['password'] = this.password;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['accessToken'] = this.accessToken;
    data['refreshToken'] = this.refreshToken;
    data['__v'] = this.iV;
    return data;
  }
}
