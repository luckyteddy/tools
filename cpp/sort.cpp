#include <iostream>

void swap(int* a, int* b){
  int t;
  t = *a;
  *a = *b;
  *b = t;
}

int partition(int s[], int l, int h){
  int i;
  int p;
  int firsthigh;
  p = h;
  firsthigh = l;
  for (i = l; i < h; i++) {
    if (s[i] < s[p]){
      swap(&s[i], &s[firsthigh]);
      firsthigh++;
    }
  }
  swap(&s[p], &s[firsthigh]);
  return firsthigh;
}

void quicksort(int s[], int l, int h){
  int p;
  if (h - l > 0) {
    p = partition(s, l, h);
    std::cout << "p=" << p << std::endl;
    quicksort(s, l, p-1);
    quicksort(s, p+1, h);
  }
}

int main(){
  int a[7] = {1,6,4,2,7,9,5};
  for (int i = 0; i <= 6; i++){
    std::cout<< a[i] << " ";
  }
  std::cout<< std::endl;
  quicksort(a, 0, 6);
  for (int i = 0; i <= 6; i++){
    std::cout<< a[i] << " ";
  }
  //int b = 1;
  //int c = 2;
  //swap (&b, &c);
  //std::cout << b << c;
}
