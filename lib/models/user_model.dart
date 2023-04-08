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
    required this.age,
    required this.email,
  });

  String userName;
  String userId;
  String videoUrl;
  String profileImageUrl;
  String zodiacSign;
  String gender;
  List<String> tags;
  String age;
  String email;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json["userName"],
        userId: json["userId"],
        videoUrl: json["videoUrl"],
        profileImageUrl: json["profileImageUrl"],
        zodiacSign: json["zodiacSign"],
        gender: json["gender"],
        tags: json["tags"],
        age: json["age"],
        email: json["email"],
      );

  fromJson(Map<String, dynamic> json) {
    var _tags = 
    json["tags"].toString().split(",");

    
    userName = json["userName"];
    userId = json["userId"];
    videoUrl = json["videoUrl"];
    profileImageUrl = json["profileImageUrl"];
    zodiacSign = json["zodiacSign"];
    gender = json["gender"];
    tags = _tags;
    age = json["age"];
    email = json["email"];
  }

  Map<String, dynamic> toJson() {
    var _tagString = "";
    for (String tag in tags) {
      _tagString += "$tag,";
    }
    return {
      "userName": userName,
      "userId": userId,
      "videoUrl": videoUrl,
      "profileImageUrl": profileImageUrl,
      "zodiacSign": zodiacSign,
      "gender": gender,
      "tags": _tagString,
      "age": age,
      "email": email,
    };
  }
}
