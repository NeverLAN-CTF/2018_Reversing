#include <stdio.h>

char* _some_variable = "flag{don't_string_me_along_man!}";

int main() {
   printf("%.4s", _some_variable);
   return 0;
}
