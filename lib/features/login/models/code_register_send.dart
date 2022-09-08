




class CodeRegisterSend {
  int? code;


  CodeRegisterSend({this.code,});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this.code;

    return data;
  }
}