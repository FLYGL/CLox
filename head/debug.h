/*
 * @Author: FMSH
 * @Date: 2022-04-03 21:42:28
 * @LastEditTime: 2022-04-03 21:43:31
 * @Description: debug
 */

#ifndef clox_debug_h
#define clox_debug_h

#include "chunk.h"

void disassembleChunk(Chunk* chunk,const char* name);
int disassembleInstruction(Chunk* chunk,int offset);

#endif
