class ResistorColorDuo {
  List<String> colors = [
    'black','brown','red','orange','yellow','green','blue','violet','grey','white',
  ];
  int value(List<String> vc){
    return (colors.indexOf(vc[0])*10)+colors.indexOf(vc[1]);
  }
}
