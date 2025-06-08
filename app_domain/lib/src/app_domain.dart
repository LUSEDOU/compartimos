import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'name')
enum DocumentType {
  dni,
  passport,
  ce,
  unknown,
}

/// {@template user}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
@JsonSerializable()
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    required this.documentType,
    required this.document,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.phone,
  });

  /// Maps the User object to a JSON representation.
  factory User.fromJson(Map<String, dynamic> obj) {
    // Implement JSON deserialization logic here
    final _ = obj;
    throw UnimplementedError('User.fromJson is not implemented');
  }

  final String id;
  final DocumentType documentType;
  final String document;
  final String email;
  final String firstName;
  final String lastName;
  final String birthDate;
  final String phone;

  /// Converts the User object to a JSON representation.
  static const empty = User(
    id: '',
    documentType: DocumentType.unknown,
    email: '',
    document: '',
    firstName: '',
    lastName: '',
    birthDate: '',
    phone: '',
  );

  User copyWith({
    String? id,
    DocumentType? documentType,
    String? document,
    String? email,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    String? phone,
  }) {
    return User(
      id: id ?? this.id,
      documentType: documentType ?? this.documentType,
      document: document ?? this.document,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      phone: phone ?? this.phone,
    );
  }

  bool get isEmpty => this == User.empty;
  bool get isPending => id.isEmpty;

  @override
  List<Object?> get props => [
        id,
        documentType,
        document,
        document,
        email,
        firstName,
        lastName,
        birthDate,
        phone,
      ];
}
