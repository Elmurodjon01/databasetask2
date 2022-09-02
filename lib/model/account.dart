

class Account{
  String adress;
  String email;
  String phone;
  Account({
    required this.adress,
    required this.email,
    required this.phone
  });
  Account.fromJson(Map<String, dynamic> json)
        : adress = json['adress'],
        email = json['email'],
        phone = json['phone'];

  Map<String, dynamic> toJson()=>{
    'adress': adress,
    'email': email,
    'phone': phone,
  };
}