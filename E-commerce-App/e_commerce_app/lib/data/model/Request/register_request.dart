class RegisterRequest {
    RegisterRequest({
        required this.name,
        required this.email,
        required this.password,
        required this.rePassword,
        required this.phone,
        this.statusMsg
    });

    final String? name;
    final String? email;
    final String? password;
    final String? rePassword;
    final String? phone;
    final String? statusMsg;


    factory RegisterRequest.fromJson(Map<String, dynamic> json){ 
        return RegisterRequest(
            name: json["name"],
            email: json["email"],
            password: json["password"],
            rePassword: json["rePassword"],
            phone: json["phone"],
        );
    }

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "rePassword": rePassword,
        "phone": phone,
    };

    @override
    String toString(){
        return "$name, $email, $password, $rePassword, $phone, ";
    }
}