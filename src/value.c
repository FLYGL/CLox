/*
 * @Author: FMSH
 * @Date: 2022-04-03 22:31:25
 * @LastEditTime: 2022-04-03 22:37:02
 * @Description: representation of the value in the VM
 */
#include <stdio.h>
#include "memory.h"
#include "value.h"

void initValueArray(ValueArray* array){
    array->values = NULL;
    array->capacity = 0;
    array->count = 0;
}
void writeValueArray(ValueArray* array,Value value){
    if(array->capacity < array->count+1){
        int oldCapacity = array->capacity;
        array->capacity = GROW_CAPACITY(oldCapacity);
        array->values = GROW_ARRAY(Value,array->values,oldCapacity,array->capacity);
    }
    array->values[array->count] = value;
    array->count++;
}
void freeValueArray(ValueArray* array){
    FREE_ARRAY(Value,array,array->capacity);
    initValueArray(array);
}

void printValue(Value value){
    printf("%g",value);
}