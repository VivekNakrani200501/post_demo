import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:post_demo/internet_provider.dart';

Future<Map<String, String>> commonHeader() async {
  Map<String, String>? header = {
    "UserId": "40",
    "Token": "5XndqoL9WJL-b64gFhFfg1liU3bgxMKzm",
  };
  return header;
}

class ApiProvider {
  Future<dynamic> commonProvider({
    required String url,
    Object? bodyData,
    name,
    Map<String, String>? header,
    required bool? isHeader,
    required bool? isBody,
  }) async {
    final hasInternet = await checkInternet();
    if (hasInternet == true) {
      try {
        final response = isBody == true && isHeader == true
            ? await http.post(Uri.parse(url), body: bodyData, headers: header)
            : isBody == true && isHeader == false
                ? await http.post(Uri.parse(url), body: bodyData)
                : isBody == false && isHeader == true
                    ? await http.post(Uri.parse(url), headers: header)
                    : await http.post(
                        Uri.parse(url),
                      );
        if (response.statusCode == 200) {
          log(response.statusCode.toString(), name: name);
          log(response.body, name: name);

          return json.decode(response.body);
        } else if (response.statusCode == 101 || response.statusCode == 102) {
          // Show Error

          return null;
        } else if (response.statusCode == 401) {
          // BlockUserByAdmin().blocked();
          return null;
        } else if (response.statusCode == 404) {
          //for if there is no data found or something went wrong

          return null;
        } else {
          return json.decode(response.body);
        }
      } on SocketException catch (e) {
        // throw Exception(CommonValidateTexts().noInternet);
      } on FormatException catch (e) {
        // throw Exception(CommonValidateTexts().badReq);
      } catch (exception) {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<dynamic> commonMultipartApi(
      {required String url, required Map<String, String> headers, name, required Map<String, dynamic> body, required List<File> files}) async {
    final hasInternet = await checkInternet();

    if (hasInternet == true) {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.headers.addAll(headers);

      for (var file in files) {
        var stream = http.ByteStream(file.openRead());
        var length = await file.length();
        var multipartFile = await http.MultipartFile.fromPath('shop_images[]', file.path, filename: file.path.split('/').last);
        request.files.add(multipartFile);
      }

      for (var key in body.keys) {
        if (body[key] != null) {
          request.fields[key] = body[key].toString();
        }
      }

      try {
        var response = await request.send();
        var responseData = await response.stream.transform(utf8.decoder).join();
        var respond = http.Response(responseData, response.statusCode);
        if (respond.statusCode == 200) {
          log(respond.statusCode.toString(), name: name);
          log(respond.body, name: name);
          return json.decode(respond.body);
        } else if (respond.statusCode == 401) {
          // BlockUserByAdmin().blocked();
          return null;
        } else if (respond.statusCode == 101 || respond.statusCode == 102) {
          // Show Error

          return null;
        } else if (respond.statusCode == 404) {
          //for if there is no data found or something went wrong

          return null;
        } else {
          // GetLoggedInUserModel data = GetLoggedInUserModel.fromJson(jsonDecode(respond.body));
          // return data;
        }
      } catch (e) {
        if (e is SocketException) {
          throw Exception('No internet connection');
        } else if (e is http.ClientException) {
          throw Exception('Failed to connect to server');
        } else {
          throw Exception('Unknown error occurred');
        }
      }
    } else {
      return null;
    }
  }
}
