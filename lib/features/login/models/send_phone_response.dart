class SendPhoneResponse {
  final int success;
  final int error;
  final int error_code;
  final String msg;
  SendPhoneResponse(
      {
      required this.success,
      required this.error,
      required this.error_code,
      required this.msg,}
      );

  factory SendPhoneResponse.fromJson(dynamic json) {
   return SendPhoneResponse(
       success : json['success'],
       error : json['error'],
       error_code : json['error_code'],
     msg : json['msg'],
   );
  }




}