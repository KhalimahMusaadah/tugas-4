class Login {
  int? code;
  bool? status;
  String? token;
  int? userID;
  String? userEmail;

  Login({this.code, this.status, this.token, this.userID, this.userEmail});

  // factory Login.fromJson(Map<String, dynamic> obj) {
  //   return Login(
  //     code: obj['code'],
  //     status: obj['status'],
  //     token: obj['data']['token'],
  //     userID: obj['data']['user']['id'],
  //     userEmail: obj['data']['user']['email'],
  //   );
  // }

  // factory Login.fromJson(Map<String, dynamic> obj) {
  //   return Login(
  //     code: obj['code'],
  //     status: obj['status'],
  //     token: obj['data']['token'],
  //     userID: int.parse(obj['data']['user']['id']),
  //     userEmail: obj['data']['user']['email'],
  //   );
  // }

  factory Login.fromJson(Map<String, dynamic> obj) {
  return Login(
    code: obj['code'],
    status: obj['status'],
    token: obj['data']['token'],
    userID: int.parse(obj['data']['user']['id']) ?? 0, // Jika konversi gagal, gunakan nilai default (0) atau sesuaikan sesuai kebutuhan.
    userEmail: obj['data']['user']['email'],
  );
}

}
