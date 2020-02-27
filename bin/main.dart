// Write a function to merge two sorted lists.

void main() {
  List<int> a = [1,2,3];
  // ignore: omit_local_variable_types
  List<int> b = [];
  print(mergeList(b,a));
//  print(mergeList2(a, b));
}

List<int> mergeList(List<int> a, List<int> b) {
  List<int> big = [];
  List<int> small = [];
  if (a.length > b.length) {
    big = a;
    small = b;
  } else {
    big = b;
    small = a;
  }

  for (int i = 0; i < big.length; i++) {
    if(small.isEmpty)
      return big;
    if (big[i] >= small[0]) {
      if (small.length == 1) {
        big.insertAll(i, small);
        small = [];
        return big;
      }
      int upto = getHigherElementIndex(big[i], small);
      big.insertAll(i, small.sublist(0, upto));
      small = small.sublist(upto);
      if (small.isEmpty) {
        return big;
      }
    }
  }
  return big;
}

List mergeList2(List a, List b) {
  a.addAll(b);
  a.sort();
  return a;
}

int getHigherElementIndex(int element, List list) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] > element) {
      //add that element from small list of big list
      return i;
    }
  }
  return list.length - 1;
}
