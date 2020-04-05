#include <stdio.h>
#include "wapperfun.h"

void main() {
  char str_tmp[256] = {0};
  printf("Now! Hellow world!\n");
  wfun1(str_tmp);  //调用一个c文件。
  printf("%s\n", str_tmp);
  wfun2(str_tmp);  //调用一个cpp，需要调用stl。
  /*
  数学库需要Application.mk包括
  #链接各种stl库
  APP_STL := c++_static
  */
  printf("%s\n", str_tmp);
  wfun3(str_tmp);  //调用一个含有数学运算的c。
  printf("%s\n", str_tmp);
}
