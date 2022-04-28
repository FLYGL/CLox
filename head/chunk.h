/*
 * @Author: FMSH
 * @Date: 2022-03-31 20:45:23
 * @LastEditTime: 2022-04-03 21:31:59
 * @Description: 
 */
#ifndef clox_chunk_h
#define clox_chunk_h

#include "common.h"
#include "value.h"

typedef enum{
    OP_CONSTANT,// 加载常数 opcode+constant index
    OP_NIL,
    OP_TRUE,
    OP_FALSE,
    OP_POP,
    OP_DEFINE_GLOBAL,
    OP_SET_GLOBAL,
    OP_GET_GLOBAL,
    OP_SET_LOCAL,
    OP_GET_LOCAL,
    OP_SET_UPVALUE,
    OP_GET_UPVALUE,
    OP_EQUAL,
    OP_GREATER,
    OP_LESS,
    OP_ADD,
    OP_SUBTRACT,
    OP_MULTIPLY,
    OP_DIVIDE,
    OP_NOT,
    OP_NEGATE,  // unary 
    OP_PRINT,
    OP_JUMP_IF_FALSE,
    OP_JUMP,
    OP_LOOP,
    OP_CALL,
    OP_CLOSURE,
    OP_CLOSE_UPVALUE,
    OP_RETURN,
} OpCode;

typedef struct{
    int count;
    int capacity;
    uint8_t* code;
    int* lines;
    ValueArray constants;
} Chunk;

void initChunk(Chunk* chunk);
void freeChunk(Chunk* chunk);
void writeChunk(Chunk* chunk,uint8_t byte,int line);
int addConstant(Chunk* chunk,Value value);
#endif