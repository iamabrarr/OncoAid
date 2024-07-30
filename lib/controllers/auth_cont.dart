import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthCont extends GetxController {
  //TEXT EDITING CONTROLLERS
  TextEditingController loginEmailCont = TextEditingController();
  TextEditingController loginPassCont = TextEditingController();
  TextEditingController signUpEmailCont = TextEditingController();
  TextEditingController signUpPassCont = TextEditingController();
  TextEditingController signupRePassCont = TextEditingController();
  TextEditingController signupNameCont = TextEditingController();
  TextEditingController signupCivilIDCont = TextEditingController();
  TextEditingController signupPhoneCont = TextEditingController();
  //OBSERVABLE VARIABLES
  Rxn<PageController> signupPageCont = Rxn<PageController>();
  RxInt currentSection = 0.obs;
  RxBool allowNotifications=true.obs;
  RxString userDob = ''.obs;
  RxInt selectedGenderIndex = (-1).obs;
  RxList pickedFiles = [].obs;
  //FOR LOADING
  RxBool isLoading=false.obs;

  @override
  void onInit() {
    super.onInit();
    signupPageCont.value = PageController(initialPage: 0);
  }
}
