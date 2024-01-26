// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      address: json['address'] as String?,
      dynamicsEmpId: json['dynamics_emp_id'] as String?,
      customerGroupId: json['customer_group_id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      country: json['country'] as String?,
      identificationNumber: json['identification_number'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      deviceToken: json['device_token'] as String?,
      dob: json['dob'] as String?,
      status: json['status'] as int?,
      isVerified: json['is_verified'] as int?,
      employeeJoiningDate: json['employee_joining_date'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'dynamics_emp_id': instance.dynamicsEmpId,
      'customer_group_id': instance.customerGroupId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'country': instance.country,
      'address': instance.address,
      'identification_number': instance.identificationNumber,
      'phone': instance.phone,
      'email': instance.email,
      'device_token': instance.deviceToken,
      'dob': instance.dob,
      'status': instance.status,
      'is_verified': instance.isVerified,
      'employee_joining_date': instance.employeeJoiningDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Profiles _$ProfilesFromJson(Map<String, dynamic> json) => Profiles(
      customer_id: json['customer_id'] as String?,
      brand_name: json['brand_name'] as String?,
      brand_nickname: json['brand_nickname'] as String?,
      discount_id: json['discount_id'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProfilesToJson(Profiles instance) => <String, dynamic>{
      'customer_id': instance.customer_id,
      'discount_id': instance.discount_id,
      'brand_name': instance.brand_name,
      'brand_nickname': instance.brand_nickname,
      'id': instance.id,
    };

LoginBodyModel _$LoginBodyModelFromJson(Map<String, dynamic> json) =>
    LoginBodyModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      token: json['token'] as String?,
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => Profiles.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerId: json['customer_id'] as String?,
    );

Map<String, dynamic> _$LoginBodyModelToJson(LoginBodyModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'customer': instance.customer?.toJson(),
      'customer_id': instance.customerId,
      'profiles': instance.profiles?.map((e) => e.toJson()).toList(),
    };
