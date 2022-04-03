/*
 * @Author: FMSH
 * @Date: 2022-03-31 21:56:03
 * @LastEditTime: 2022-03-31 22:01:56
 * @Description: 
 */

#include <stdlib.h>
#include "memory.h"

void* reallocate(void* pointer,size_t oldSize, size_t newSize){
    if(newSize == 0 ){
        free(pointer);
        return NULL;
    }
    void* result = realloc(pointer,newSize);
    // 没有足够空间
    if(result == NULL) exit(1);
    return result;
}