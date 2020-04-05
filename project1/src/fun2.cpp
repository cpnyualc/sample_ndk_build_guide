#include "fun.h"

#include <string>
using namespace std;
void fun2(char* str) {
  string str_tmp = "Fun2.";
  strcpy(str, str_tmp.c_str());
}