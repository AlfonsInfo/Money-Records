class History {
    History({
        this.idHistory,
        this.idUsers,
        this.type,
        this.date,
        this.total,
        this.details,
        this.createdAt,
        this.updatedAt,
    });

    String? idHistory;
    String? idUsers;
    String? type;
    String? date;
    String? total;
    String? details;
    String? createdAt;
    String? updatedAt;

    factory History.fromJson(Map<String, dynamic> json) => History(
        idHistory: json["id_history"],
        idUsers: json["id_users"],
        type: json["type"],
        date: json["date"],
        total: json["total"],
        details: json["details"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id_history": idHistory,
        "id_users": idUsers,
        "type": type,
        "date": date,
        "total": total,
        "details": details,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
