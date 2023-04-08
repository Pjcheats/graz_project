import 'package:get/get.dart';
import 'package:graz_project/models/user_model.dart';

class UserDataController extends GetxController {
  static Rx<User> userData = User(
      userName:        "userName",
      userId:          "userId",
      videoUrl:        "videoUrl",
      profileImageUrl: "profileImageUrl",
      zodiacSign:      "zodiacSign",
      gender:          "gender",
      tags:            [],
      age:             "18",
      email:           "email").obs;
  
  static String mainPassword = '';

  void setUserName(String name){
    userData.value.userName = name;
  }

  void setUserId(String Id){
    userData.value.userId = Id;
  }

  void setVideoUrl(String url){
    userData.value.videoUrl = url;
  }

  void setProfilePic(String url){
    userData.value.profileImageUrl = url;
  }

  void setZodiacSign(String Sign){
    userData.value.zodiacSign = Sign;
  }

  void setGender(String gender){
    userData.value.gender = gender;
  }

  void setAge(String age){
    userData.value.age = age;
  }

  void setEmail(String email){
    userData.value.email = email;
  }

  void addToTagList(String tag){
    userData.value.tags.add(tag);
  }

  void removeTagList(String tag){
    userData.value.tags.remove(tag);
  }
  
}
