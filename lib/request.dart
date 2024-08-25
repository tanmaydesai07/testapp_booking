// To parse this JSON data, do
//
//     final requestList = requestListFromJson(jsonString);

import 'dart:convert';

RequestList requestListFromJson(String str) => RequestList.fromJson(json.decode(str));

String requestListToJson(RequestList data) => json.encode(data.toJson());

class RequestList {
    String id;
    String name;
    String date;
    String place;
    String time;
    String status;
    String? reason;

    RequestList({
        required this.id,
        required this.name,
        required this.date,
        required this.place,
        required this.time,
        required this.status,
        this.reason,
    });

    factory RequestList.fromJson(Map<String, dynamic> json) => RequestList(
        id: json["id"],
        name: json["name"],
        date: json["date"],
        place: json["place"],
        time: json["time"],
        reason: json["reason"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "date": date,
        "place": place,
        "time": time,
        "reason": reason,
        "status": status,
    };
}
