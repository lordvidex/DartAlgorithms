import 'dart:math';
class ArmstrongNumbers {
  bool isArmstrongNumber(int number){
    assert (number >= 0);
    int summer = 0;
    String numberString = number.toString();
    int digits = numberString.length;
    for(int i = 0; i < digits; i++){
        summer+=pow(int.parse(numberString[i]), digits).toInt();
    }
    if(summer==number){
      return true;
    }else{
      return false;
    }
  }
}
