/*
 * @Author: FMSH
 * @Date: 2022-03-30 23:26:01
 * @LastEditTime: 2022-04-03 21:32:04
 * @Description: 
 */
#include "common.h"
#include "chunk.h"
int main(int argc,const char* argv[]){
    Chunk chunk;
    initChunk(&chunk);
    writeChunk(&chunk,OP_RETURN);
    freeChunk(&chunk);
    return 0;
}