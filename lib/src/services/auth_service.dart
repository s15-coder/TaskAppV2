import 'package:http/http.dart' as http;
import 'package:task_app_2/src/global/consts.dart';
import 'package:task_app_2/src/models/responses/generic_response.dart';
import 'package:task_app_2/src/models/responses/login_response.dart';

class AuthService {
  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(Uri.parse('$host/auth/signin'), body: {
      "password": password,
      "email": email.toLowerCase().trim(),
    });
    final responseParsed = loginResponseFromJson(response.body);
    return responseParsed;
  }

  Future<LoginResponse> googleSignIn({
    required String googleToken,
  }) async {
    final response = await http.post(Uri.parse('$host/auth/google'), body: {
      "google_token": googleToken,
    });
    final responseParsed = loginResponseFromJson(response.body);
    return responseParsed;
  }

  Future<GenericResponse> register({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await http.post(Uri.parse('$host/auth/signup'), body: {
      'name': name,
      "password": password,
      "email": email.toLowerCase().trim(),
    });
    final responseParsed = genericResponseFromJson(response.body);
    return responseParsed;
  }
}
