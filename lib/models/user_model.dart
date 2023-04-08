import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.userName,
    required this.userId,
    required this.videoUrl,
    required this.profileImageUrl,
    required this.zodiacSign,
    required this.gender,
    required this.tags,
    required this.dob,
    required this.email,
  });

  String userName;
  String userId;
  String videoUrl;
  String profileImageUrl;
  String zodiacSign;
  String gender;
  String tags;
  String dob;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userName: json["userName"],
    userId: json["userId"],
    videoUrl: json["videoUrl"],
    profileImageUrl: json["profileImageUrl"],
    zodiacSign: json["zodiacSign"],
    gender: json["gender"],
    tags: json["tags"],
    dob: json["dob"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "userId": userId,
    "videoUrl": videoUrl,
    "profileImageUrl": profileImageUrl,
    "zodiacSign": zodiacSign,
    "gender": gender,
    "tags": tags,
    "dob": dob,
    "email": email,
  };
}
