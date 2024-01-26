import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';


@JsonSerializable(fieldRename: FieldRename.snake)
class Customer {
  String? id;
  String? dynamicsEmpId;
  int? customerGroupId;
  String? firstName;
  String? lastName;
  String? country;
  String? address;
  String? identificationNumber;
  String? phone;
  String? email;
  String? deviceToken;
  String? dob;
  int? status;
  int? isVerified;
  String? employeeJoiningDate;
  String? createdAt;
  String? updatedAt;

  Customer({
    this.id, this.address, this.dynamicsEmpId, this.customerGroupId, this.firstName, this.lastName, this.country, this.identificationNumber, this.phone, this.email, this.deviceToken, this.dob, this.status, this.isVerified, this.employeeJoiningDate, this.updatedAt, this.createdAt

});
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);

}


@JsonSerializable()
class Profiles {
  String? customer_id;
  int? discount_id;
  String? brand_name;
  String? brand_nickname;
  String? id;


  Profiles({
    this.customer_id,
    this.brand_name,
    this.brand_nickname,
    this.discount_id,
    this.id,
  });

  factory Profiles.fromJson(Map<String, dynamic> json) =>
      _$ProfilesFromJson(json);
  Map<String, dynamic> toJson() => _$ProfilesToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class LoginBodyModel {
  int? status;
  String? message;
  String? token;

  /* String? customerId;*/
  Customer? customer;
  String? customerId;
  List<Profiles>? profiles;



  LoginBodyModel({
    this.status,
    this.message,
    this.customer,
    this.token,
    this.profiles,
    this.customerId,
  });



  factory LoginBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginBodyModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginBodyModelToJson(this);

}
