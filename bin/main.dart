// Write a function to merge two sorted lists.

void main() {
  List<int> a = [1,2,4,9];
  List<int> b = [5,6,8];

}

List<int> mergeList(List<int> a, List<int> b){
  List<int> big=[];
  List<int> small=[];
  if(a.length>b.length)
    big=a;
  else
    big=b;
  //---------
  for(int i=0;i<big.length;i++){
    if(big[i]>small[0]){
      //add that element from small list of big list
      big.insertAll(i-1,small);
    }
  }
return big;
}

List mergeList2(List a, List b){
  a.addAll(b);
  a.sort();
  return a;
}


