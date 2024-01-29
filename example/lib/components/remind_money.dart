class RemindMoney{
  static List<int> setShowRemind(String value, List<int> listMoney){
    listMoney.clear();
    if( value==''){
      listMoney=[];
    }else{
      listMoney=[];
      for (var i = 0; i < 3; i++) {
        listMoney.add(int.parse('$value${
          i==0? '000': i==1?'0000': i==2? '00000':'0'
        }'),);
      }
    }
    return listMoney;
  }
}