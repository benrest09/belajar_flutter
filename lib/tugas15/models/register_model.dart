class RegisterModel {
  final String? message;
  final RegisterData? data;

  const RegisterModel({this.message, this.data});

  factory RegisterModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return RegisterModel();
    return RegisterModel(
      message: json['message'] as String?,
      data: RegisterData.fromJson(json['data'] as Map<String, dynamic>?),
    );
  }

  Map<String, dynamic> toJson() => {'message': message, 'data': data?.toJson()};
}

class RegisterData {
  final String? token;
  final RegisterUser? user;

  const RegisterData({this.token, this.user});

  factory RegisterData.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const RegisterData();
    return RegisterData(
      token: json['token'] as String?,
      user: RegisterUser.fromJson(json['user'] as Map<String, dynamic>?),
    );
  }

  Map<String, dynamic> toJson() => {'token': token, 'user': user?.toJson()};
}

class RegisterUser {
  final String? name;
  final String? email;
  final String? updateAt;
  final String? createdAt;
  final int? id;

  const RegisterUser({
    this.name,
    this.email,
    this.updateAt,
    this.createdAt,
    this.id,
  });

  factory RegisterUser.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const RegisterUser();
    return RegisterUser(
      name: json['name'] as String?,
      email: json['email'] as String?,
      updateAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'updated_at': updateAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}
