/*
 * @Author: FMSH
 * @Date: 2022-03-31 20:45:23
 * @LastEditTime: 2022-04-03 21:31:59
 * @Description: 
 */
#ifndef clox_chunk_h
#define clox_chunk_h

#include "common.h"

typedef enum{
    OP_RETURN,
} OpCode;

typedef struct{
    int count;
    int capacity;
    uint8_t* code;
} Chunk;

void initChunk(Chunk* chunk);
void freeChunk(Chunk* chunk);
void writeChunk(Chunk* chunk,uint8_t byte);
#endif