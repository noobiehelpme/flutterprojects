import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:platform_device_id/platform_device_id.dart';
import 'package:uuid/uuid.dart';

late final String deviceId;

String generateMd5(String data) {
  var content = const Utf8Encoder().convert(data);
  var digest = crypto.md5.convert(content);
  return hex.encode(digest.bytes).toUpperCase();
}

bool isAuthorized(String responseData) {
  Map<String, dynamic> decodedResponse = jsonDecode(responseData);
  Map<String, dynamic> hashingValue = {
    "Data": decodedResponse["data"],
    "JWTToken": decodedResponse["jwtToken"],
    "DeviceToken": deviceId
  };
  return generateMd5(jsonEncode(hashingValue)) == decodedResponse["hash"];
}

Map<String, dynamic> setRequest(
    {required Map<String, dynamic> parameters,
    required String type,
    required String jwtToken}) {
  Map<String, dynamic> generarateParameters = parameters;
  generarateParameters['DeviceID'] = deviceId;
  return {
    "RequestJson": jsonEncode({
      "Type": type,
      "Ver": 1.0,
      "Hash": generateMd5(jsonEncode(generarateParameters)),
      "JwtToken": jwtToken,
      "Data": {"Data": parameters}
    })
  };
}

Future<void> getDeviceId() async {
  deviceId = await PlatformDeviceId.getDeviceId ?? const Uuid().v1();
}
