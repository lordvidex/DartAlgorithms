
class PhoneNumber {
  dynamic clean(String number){
    var newStr = number.replaceAll(new RegExp(r'^(\+1|1|0)|[^0-9]'), '');
    if(newStr.length==10&&(newStr.substring(0,1)!='0'&&newStr.substring(0,1)!='1')){
      return newStr;
    }else if(newStr.length<10||newStr.length>11){
      return null;
    }else if(newStr.length==11&&newStr.substring(0,1)=='1'&&(newStr.substring(1,2)!='0'&&newStr.substring(1,2)!='1')){
      return newStr;
    }

    return null;
  }
}

