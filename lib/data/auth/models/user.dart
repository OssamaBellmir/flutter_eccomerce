// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:eccomerce_app/domain/auth/entity/user.dart';

class UserModel {
  final String userId;
  final String firstName;
  final String lastName;
  final String email;
  final String image;
  final int gender;

  UserModel({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'image': image,
      'gender': gender,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      // On fournit une chaîne vide si la clé n'existe pas
      userId: map['userId'] ?? '',

      // On vérifie 'firstname' (minuscule, comme dans votre signup)
      // et 'firstName' au cas où vous changeriez la base de données plus tard
      firstName: map['firstname'] ?? map['firstName'] ?? '',
      lastName: map['lastname'] ?? map['lastName'] ?? '',

      email: map['email'] ?? '',
      image: map['image'] ?? '',

      // On fournit 0 par défaut si le genre est manquant
      gender: map['gender'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

extension UserXModel on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      image: image,
      gender: gender,
    );
  }
}
