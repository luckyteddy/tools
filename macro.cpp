#include <stdio.h>


int main() {
#ifdef __cplusplus
printf("__cplusplus defined\n");
#endif

#ifndef GFLAGS_GFLAGS_H_
printf("GFLAGS_NOT_DEFINED\n");
#endif



}

