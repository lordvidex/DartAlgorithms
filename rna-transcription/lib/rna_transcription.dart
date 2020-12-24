class RnaTranscription {
  String toRna(String dna){
    if (dna ==''){
      return dna;
    }else{
      String rna = '';
      for (int i = 0;i<dna.length; i++){
        switch(dna[i]){
          case 'G': rna+='C'; break;
          case 'C': rna+='G'; break;
          case 'T': rna+='A'; break;
          default: rna+='U'; break;
        }
      }
      return rna;
    }
  }
}
