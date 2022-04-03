/*
 * @Author: FMSH
 * @Date: 2022-04-03 22:14:35
 * @LastEditTime: 2022-04-03 22:30:37
 * @Description: representation of value in VM
 */

#ifndef clox_value_h
#define clox_value_h

#include "common.h"

typedef double Value;

typedef struct
{
    int capacity;
    int count;
    Value* values;
} ValueArray;

void initValueArray(ValueArray* array);
void writeValueArray(ValueArray* array,Value value);
void freeValueArray(ValueArray* array);
void printValue(Value value);
#endif
