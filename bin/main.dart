// Write a function to merge two sorted lists.

void main() {
  List<int> a = [1,2,4,9];
  List<int> b = [5,6,8];
  print(mergeList(a, b));
}

List<int> mergeList(List<int> a, List<int> b){
  List<int> big=[];
  List<int> small=[];
  if(a.length>b.length){
    big=a;
    small=b;
  }


  else{
    big=b;
    small=a;
  }

  //---------
  for(int i=0;i<big.length;i++){
    if(big[i]>small[0]){
      //add that element from small list of big list
      int upto = getHigherElementIndex(big[i], small);
      big.insertAll(i-1,small.sublist(0,upto));
      print("upto:$upto");
      small=small.sublist(upto);
      if(small.length==0){
        return big;
      }
    }
  }
return big;
}

List mergeList2(List a, List b){
  a.addAll(b);
  a.sort();
  return a;
}

int getHigherElementIndex(int element,List list){
  for(int i=0;i<list.length;i++){
    if(list[i]>element){
      //add that element from small list of big list
      return i;
    }
  }
  return list.length-1;
}


