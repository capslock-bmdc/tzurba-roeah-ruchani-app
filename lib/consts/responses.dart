import 'package:tzurba_roeah_ruchani_app/models/response.dart';

class ResponsesConst {

  static const ResponseModel NOT_AUTHED = const ResponseModel(
    status: 400,
    code: "NOT_AUTHED",
    message: "user not authed",
  );

  static const ResponseModel MISSING_PARAMATERS = const ResponseModel(
    status: 300,
    code: "MISSING_PARAMATERS",
    message: "missing paramaters",
  );

  static const ResponseModel UNKNOWN_CLIENT_ERROR = const ResponseModel(
    status: 400,
    code: "UNKNOWN_CLIENT_ERROR",
    message: "unknown error",
  );
}
