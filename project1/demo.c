#include <stdio.h>

#include "fun1.h"
#include "fun2.h"
#include "fun3.h"
void main() {
  char str_tmp[256] = {0};
  printf("Now! Hellow world!\n");
  fun1(str_tmp);  //调用一个c文件。
  printf("%s\n", str_tmp);
  fun2(str_tmp);  //调用一个cpp，需要调用stl。
  /*
  数学库需要Application.mk包括
  #链接各种stl库
  APP_STL := c++_static
  */
  printf("%s\n", str_tmp);
  fun3(str_tmp);  //调用一个含有数学运算的c。
  /*
  数学库需要Andorid.mk包括
  #链接系统库
  LOCAL_LDLIBS:= -llog -lm
  */
  printf("%s\n", str_tmp);
}
