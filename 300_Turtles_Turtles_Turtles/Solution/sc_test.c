#include <stdio.h>
#include <string.h>

char *SC =  "\x01\x60\x8f\xe2\x16\xff\x2f\xe1\x20\x22\x79\x46\x0e\x31\x01\x20\x04\x27\x01\xdf\x24\x1b\x20\x1c\x01\x27\x01\xdf\x66\x6c\x61\x67\x7b\x6c\x75\x64\x21\x72\x6f\x63\x6b\x73\x5f\x61\x6c\x6c\x5f\x74\x68\x65\x5f\x77\x61\x79\x5f\x75\x70\x21\x7d\x0a";


int main(void) {
    fprintf(stdout,"Length: %d\n",strlen(SC));
    (*(void(*)()) SC)();
return 0;
}
