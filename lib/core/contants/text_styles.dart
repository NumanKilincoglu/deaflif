import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  static TextStyles? _instance;

  static TextStyles get instance => _instance ??= TextStyles._init();

  TextStyles._init();
  static TextStyle S_W_14 = const TextStyle(
      fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400);
  static TextStyle S_W_16 = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400);
  static TextStyle S_W_18 = const TextStyle(
      fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400);
  static TextStyle S_W_20 = const TextStyle(
      fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400);
  static TextStyle S_W_24 = const TextStyle(
      fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400);
  static TextStyle S_W_32 = const TextStyle(
      fontSize: 32, color: Colors.white, fontWeight: FontWeight.w400);

  static TextStyle S_W_24_Fade = const TextStyle(
      fontSize: 24, color: Colors.white54, fontWeight: FontWeight.w400);

//bold
  static TextStyle S_W_18_B = const TextStyle(
      fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600);



  static TextStyle S_B_18 = const TextStyle(
      fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400);
  /*
  static TextStyle medium21WhiteStyle = GoogleFonts.montserrat(fontSize: 21, color: Colors.white, fontWeight: FontWeight.w700);
  static TextStyle mid12BlackStyle = GoogleFonts.montserrat(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle mid12WhiteStyle = GoogleFonts.montserrat(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500);
  static TextStyle med15black = GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle medium19BlackStyle = GoogleFonts.montserrat(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w600);
  static TextStyle medium19WhiteStyle = GoogleFonts.montserrat(fontSize: 19, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle mediumWhiteStyle = GoogleFonts.montserrat(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle white16W6 = GoogleFonts.montserrat(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle raporButonlar = GoogleFonts.montserrat(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600);
  static TextStyle checkboxText = GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle cariListeInnerAlt = GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500, );
  static TextStyle cariCardBaslik = GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle black14W6 = GoogleFonts.montserrat(fontSize: 14, color: AppColors.CARI_BAKIYE, fontWeight: FontWeight.w600, );
  static TextStyle cariHesapBakiye = GoogleFonts.montserrat(decoration:TextDecoration.underline, fontSize: 14, color: AppColors.CARI_BAKIYE, fontWeight: FontWeight.w600, );
  static TextStyle cariHesapDrop = GoogleFonts.montserrat(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500, );
  static TextStyle cariHesapButonlar = GoogleFonts.montserrat(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600, );
  static TextStyle alertInner = GoogleFonts.montserrat(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600, );
  static TextStyle alertHeader = GoogleFonts.montserrat(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600, );
  static TextStyle appBarDropdown = GoogleFonts.montserrat(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600, );
  static TextStyle menuGridText = GoogleFonts.montserrat(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600, );
  static TextStyle appBarText = GoogleFonts.montserrat(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600, );
  static TextStyle floatingChildStyle = GoogleFonts.montserrat(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600, );
  static TextStyle loginGirisYapText = GoogleFonts.montserrat(fontSize: 17, color: AppColors.LOGIN_BUTTON_COLOR, fontWeight: FontWeight.bold, );
  static TextStyle loginText = GoogleFonts.montserrat(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500, decoration: TextDecoration.none , decorationThickness: 0.0);
  static TextStyle loginUstStyle = GoogleFonts.montserrat(fontSize: 17, color: AppColors.PRIMARY_LIGHT_COLOR, fontWeight: FontWeight.w400, );
  static TextStyle loginTextField = GoogleFonts.montserrat(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w400,decoration: TextDecoration.none );
  static TextStyle loginTextfieldUstStyle = GoogleFonts.montserrat(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500);
  static TextStyle loginButtonStyle = GoogleFonts.montserrat(fontSize: 20, color: AppColors.LOGIN_BACKGROUND_COLOR, fontWeight: FontWeight.w500, );
  static TextStyle demoButton = GoogleFonts.montserrat(fontSize: 16, color: AppColors.LOGIN_BACKGROUND_COLOR, fontWeight: FontWeight.w500, );
  static TextStyle dipNotStyle = GoogleFonts.montserrat(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500, );
  static TextStyle tokenNotStyle = GoogleFonts.montserrat(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400, );
  static TextStyle sifreUnuttum = GoogleFonts.montserrat(fontSize: 17, color: AppColors.PRIMARY_LIGHT_COLOR, fontWeight: FontWeight.w500, );
  static TextStyle drawerTextStyle = GoogleFonts.montserrat(fontSize: 30, color: AppColors.LOGIN_BUTTON_COLOR, fontWeight: FontWeight.w900, );
  static TextStyle drawerItemTextStyle = GoogleFonts.montserrat(fontSize: 17, color: AppColors.MEMU_BACKGROUND, fontWeight: FontWeight.w500,);
  static TextStyle draweLastTextStyle = GoogleFonts.montserrat(fontSize: 12, color: AppColors.MEMU_BACKGROUND, fontWeight: FontWeight.w400,);
  */
}
