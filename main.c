/*
 * @Author: FMSH
 * @Date: 2022-03-30 23:26:01
 * @LastEditTime: 2022-04-03 21:57:38
 * @Description: 
 */
#include "common.h"
#include "chunk.h"
#include "debug.h"
int main(int argc,const char* argv[]){
    Chunk chunk;
    initChunk(&chunk);
    int constant = addConstant(&chunk,1.2);
    writeChunk(&chunk,OP_CONSTANT,123);
    writeChunk(&chunk,constant,123);
    writeChunk(&chunk,OP_RETURN,123);
    disassembleChunk(&chunk,"test chunk");
    freeChunk(&chunk);
    return 0;
}