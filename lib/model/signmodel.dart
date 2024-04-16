// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class signmodel {
  String email;
  String password;
  signmodel({
    required this.email,
    required this.password,
  });
  

  signmodel copyWith({
    String? email,
    String? password,
  }) {
    return signmodel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory signmodel.fromMap(Map<String, dynamic> map) {
    return signmodel(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory signmodel.fromJson(String source) => signmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'signmodel(email: $email, password: $password)';

  @override
  bool operator ==(covariant signmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
