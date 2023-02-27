class Users {
    Users({
        this.idUser,
        this.name,
        this.email,
        this.password,
        this.createdAt,
        this.updatedAt,
    });

    String? idUser;
    String? name;
    String? email;
    String? password;
    String? createdAt;
    String? updatedAt;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        idUser: json["id_user"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "name": name,
        "email": email,
        "password": password,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}