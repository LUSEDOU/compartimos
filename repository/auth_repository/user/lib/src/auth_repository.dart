// repository/auth_repository/user/lib/src/user_auth_repository.dart

import 'package:app_domain/app_domain.dart'; // Assuming your User model is here
import 'package:pocketbase/pocketbase.dart'; // Assuming you're using pocketbase package
import 'package:rxdart/rxdart.dart';

/// {@template ServerError}
/// Represents an error that occurs on the server side.
/// This error is thrown when the server returns an unexpected response or when
/// there is an issue with the server communication.
/// It contains a message describing the error and optionally an
/// underlying error object.
/// {@endtemplate}
class ServerError implements Exception {
  /// {@macro ServerError}
  const ServerError(this.message, [this.error]);

  /// The underlying error object, if any.
  final Object? error;

  /// The message describing the server error.
  final String message;

  @override
  String toString() => 'ServerError: $message';
}

enum UserStatusResponse {
  /// Represents a server error during the check registration process.
  exists,

  /// Indicates that the user is pending registration.
  pending,

  /// Indicates that the user is not registered.
  notRegistered,
}

/// {@template auth_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class UserAuthRepository {
  UserAuthRepository(this.pocketbase);

  final _userController = BehaviorSubject<User>();

  final PocketBase pocketbase; // Your Pocketbase client

  /// Stream to listen for user changes.
  Stream<User> get user => _userController.stream;

  Future<String?> _getEmailByDocument(
    DocumentType type,
    String document,
  ) async {
    try {
      final record = (await pocketbase.collection('clients').getFirstListItem(
                'documentType = "${type.name}" && document = "$document"',
                fields: 'email',
              ))
          .data;

      return record['email']! as String;
    } on ClientException catch (e, stackTrace) {
      if (e.statusCode == 404) {
        return ''; // Return empty string if user not found
      }

      throw Error.throwWithStackTrace(
        ServerError(
          'Failed to get email for $type with document $document',
          e,
        ),
        stackTrace,
      ); // Rethrow other errors
    } catch (e, stackTrace) {
      throw Error.throwWithStackTrace(
        ServerError(
          'An unexpected error occurred while getting email for $type '
          'with document $document',
          e,
        ),
        stackTrace,
      ); // Handle other unexpected errors
    }
  }

  Future<String?> _getDocumentPendingRecord(
    DocumentType type,
    String document,
  ) async {
    try {
      return (await pocketbase.collection('documentPending').getFirstListItem(
                'documentType = "${type.name}" && document = "$document"',
                fields: 'id',
              ))
          .id;
    } on ClientException catch (e, stackTrace) {
      if (e.statusCode == 404) {
        return null;
      }

      throw Error.throwWithStackTrace(
        ServerError(
          'Failed to get pending record for $type with document $document',
          e,
        ),
        stackTrace,
      ); // Rethrow other errors
    } catch (e, stackTrace) {
      throw Error.throwWithStackTrace(
        ServerError(
          'An unexpected error occurred while getting pending record for $type '
          'with document $document',
          e,
        ),
        stackTrace,
      ); // Handle other unexpected errors
    }
  }

  Future<User?> getUserByDocument(
    DocumentType type,
    String document,
  ) async {
    try {
      final record = await pocketbase.collection('users').getFirstListItem(
            'documentType = "${type.name}" && document = "$document"',
            fields: 'id,documentType,document',
          );

      return User.fromJson(record.toJson());
    } on ClientException catch (e, stackTrace) {
      // Handle Pocketbase exceptions, e.g., record not found
      if (e.statusCode == 404) {
        return null; // Indicate user not found
      }

      throw Error.throwWithStackTrace(
        ServerError(
          'Failed to get user by $type with document $document',
          e,
        ),
        stackTrace,
      ); // Rethrow other errors
    } catch (e, stackTrace) {
      throw Error.throwWithStackTrace(
        ServerError(
          'An unexpected error occurred while getting user by $type'
          ' with document $document',
          e,
        ),
        stackTrace,
      ); // Handle other unexpected errors
    }
  }

  Future<UserStatusResponse> checkUserStatus(
    DocumentType type,
    String document,
  ) async {
    try {
      final pendingDocument = await _getDocumentPendingRecord(type, document);

      if (pendingDocument != null) {
        _userController.add(
          User.empty.copyWith(
            id: '',
            documentType: type,
            document: document,
          ),
        );

        return UserStatusResponse.pending;
      }

      final email = await _getEmailByDocument(type, document);
      if (email == null) {
        return UserStatusResponse.notRegistered;
      }

      _userController.add(
        User.empty.copyWith(
          documentType: type,
          document: document,
          email: email,
        ),
      );
      return UserStatusResponse.exists;
    } on ServerError {
      rethrow;
    } catch (e, stackTrace) {
      throw Error.throwWithStackTrace(
        ServerError(
          'Failed to check user status for $type with document $document: $e',
          e,
        ),
        stackTrace,
      );
    }
  }

  Future<String> sendOTP(String email) async {}

  Future<bool> verifyOTP(String otpId, String code) async {}

  Future<void> logout() async {}
}
