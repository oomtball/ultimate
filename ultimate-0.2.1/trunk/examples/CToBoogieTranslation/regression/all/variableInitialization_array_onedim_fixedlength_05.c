//#Safe #MemoryUnsafe
int main() {
  struct stu1 {
    struct stu2 {
      int i;
      int *p;
    } s;
    int j;
  };

  struct stu1 *a[3] = { 0 };

  if (a[0] != 0) {
    //@ assert \false;
  }
  if (a[1] != 0) {
    //@ assert \false;
  }
  if (a[2] != 0) {
    //@ assert \false;
  }

//  //@ assert a[0] == 1;
//  //@ assert a[1] == 2;
//  //@ assert a[2] == 3;
}
