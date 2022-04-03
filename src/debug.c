/*
 * @Author: FMSH
 * @Date: 2022-04-03 21:44:00
 * @LastEditTime: 2022-04-03 22:04:18
 * @Description: debug Module
 */

#include <stdio.h>
#include "debug.h"
#include "value.h"
// C语言 static 什么意思
static int constantInstruction(const char* name,Chunk* chunk,int offset){
    uint8_t constant = chunk->code[offset+1];
    printf("%-16s %4d ",name,constant);
    printValue(chunk->constants.values[constant]);
    printf("\n");
    return offset+2;
}
static int simpleInstruction(const char* name,int offset){
    printf("%s\n",name);
    return offset+1;
}

void disassembleChunk(Chunk* chunk,const char* name){
    printf("== %s ==\n",name);
    for(int offset = 0;offset<chunk->count;){
        offset = disassembleInstruction(chunk,offset);
    }
}

int disassembleInstruction(Chunk* chunk,int offset){
    printf("%04d ",offset);
    if(offset>0&&chunk->lines[offset] == chunk->lines[offset-1]){
        printf("   | ");
    }else{
        printf("%4d ",chunk->lines[offset]);
    }
    uint8_t instruction = chunk->code[offset];
    switch (instruction)
    {
        case OP_CONSTANT:
            return constantInstruction("OP_CONSTANT",chunk,offset);
            break;
        case OP_RETURN:
            return simpleInstruction("OP_RETURN",offset);
            break;
        default:
            printf("Unknown opcode %d\n",instruction);
            break;
    }
}