// Write a function to merge two sorted lists.

void main() {
  List<int> a = [1,2,4,9];
  List<int> b = [5,6,8];
  print(mergeList(a, b));
//  print(mergeList2(a, b));
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
  // ignore: omit_local_variable_types
  for(int i=0;i<big.length;i++){
    if(big[i]>small[0]){
      print("value of i:$i element ${big[i]}");
      //add that element from small list of big list
      // ignore: omit_local_variable_types
      int upto = getHigherElementIndex(big[i], small);
      print('sublist to insert at ${i-1} list:${small.sublist(0,upto+1)}');
      big.insertAll(i,small.sublist(0,upto+1));
      print('upto:$upto');
      small=small.sublist(upto+1);
      if(small.isEmpty){
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


