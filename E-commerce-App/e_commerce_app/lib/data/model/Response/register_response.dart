class RegisterResponse {
    RegisterResponse({
        required this.message,
        required this.user,
        required this.token,
         this.statusMsg,
    });

    final String? message;
    final User? user;
    final String? token;
    final String? statusMsg;

    factory RegisterResponse.fromJson(Map<String, dynamic> json){ 
        return RegisterResponse(
            message: json["message"],
            user: json["user"] == null ? null : User.fromJson(json["user"]),
            token: json["token"],
        );
    }

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
        "token": token,
    };

    @override
    String toString(){
        return "$message, $user, $token, ";
    }
}

class User {
    User({
        required this.name,
        required this.email,
        required this.role,
    });

    final String? name;
    final String? email;
    final String? role;

    factory User.fromJson(Map<String, dynamic> json){ 
        return User(
            name: json["name"],
            email: json["email"],
            role: json["role"],
        );
    }

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "role": role,
    };

    @override
    String toString(){
        return "$name, $email, $role, ";
    }
}