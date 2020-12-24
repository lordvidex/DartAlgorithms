class Bob {
  String response(String input){
    if(input.isEmpty){
      return  'Fine. Be that way!';
    }
    if(input.endsWith('?')){
      if(input.contains(new RegExp(r'[^A-Z\s]'))){
        return 'Sure';
      }else{
        return 'Calm down, I know what I\'m doing!';
      }
    }else {
      if(!input.contains(new RegExp(r'[a-z]'))){
        return 'Whoa, chill out!';
      }else {

        return 'Whatever.';
      }
    }
  }
}
