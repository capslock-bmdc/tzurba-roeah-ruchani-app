import 'package:flutter/widgets.dart';
import 'package:cloud_functions/cloud_functions.dart';

class ResponseModel {
  const ResponseModel({
    @required this.status,
    @required this.code,
    this.message,
    this.data,
  });

  final int status;
  final String code;
  final String message;
  final Map<String, dynamic> data;

  bool successfulResponse() => (status >= 200 && status < 300);

  factory ResponseModel.fromMap(Map<String, dynamic> json) => ResponseModel(
        status: int.tryParse(json['status']) ?? 500,
        code: json['code'] ?? "",
        message: json['message'] ?? "",
        data: json['data'] ?? {},
      );

  factory ResponseModel.fromCloudFunctions(HttpsCallableResult result) => ResponseModel(
        status: int.tryParse(result.data['status'].toString()) ?? 500,
        code: result.data['code'].toString() ?? "",
        message: result.data['message'].toString() ?? "",
        data: result.data['data'] != null
            ? Map.from(result.data['data']
                    .map((key, value) => MapEntry(key.toString(), value))) ??
                {}
            : {},
      );
}
