/*
 * @Author: FMSH
 * @Date: 2022-03-30 23:26:01
 * @LastEditTime: 2022-04-03 21:57:38
 * @Description: 
 */
#include <stdio.h>
#include "common.h"
#include "chunk.h"
#include "debug.h"
#include "vm.h"
void Test();
int main(int argc,const char* argv[]){
    initVM();
    Chunk chunk;
    initChunk(&chunk);
    int constant = addConstant(&chunk,1.2);
    writeChunk(&chunk,OP_CONSTANT,123);
    writeChunk(&chunk,constant,123);

    constant = addConstant(&chunk,3.4);
    writeChunk(&chunk,OP_CONSTANT,123);
    writeChunk(&chunk,constant,123);

    writeChunk(&chunk,OP_ADD,123);

    constant = addConstant(&chunk,5.6);
    writeChunk(&chunk,OP_CONSTANT,123);
    writeChunk(&chunk,constant,123);

    writeChunk(&chunk,OP_DIVIDE,123);

    writeChunk(&chunk,OP_NEGATE,123);
    writeChunk(&chunk,OP_RETURN,123);
    disassembleChunk(&chunk,"test chunk");
    printf("==Start Interpret==\n");
    interpret(&chunk);
    freeVM();
    freeChunk(&chunk);
    // Test();
    return 0;
}
typedef struct{
    int a;
    int b[3];
    int *c;
} Test1;
void PassValue(Test1 valuePass,Test1* pointerPass){
    printf("Value:\n");
    printf("%d %d\n",valuePass.a,pointerPass->a);
    for(int i=0;i<3;i++){
        printf("%d %d\n",valuePass.b[i],pointerPass->b[i]);
    }
    printf("Address:\n");
    printf("Struct Address: %p %p\n",&valuePass,pointerPass);
    printf("a address: %p %p\n",&valuePass.a,&pointerPass->a);
    printf("b address: %p %p\n",valuePass.b,pointerPass->b);
    printf("c address: %p %p\n",valuePass.c,pointerPass->c);
}
void Test(){
    Test1 testInstsance;
    testInstsance.a = 1;
    testInstsance.b[0] = 2;
    testInstsance.b[1] = 3;
    testInstsance.b[2] = 4;
    int tmp = 5;
    testInstsance.c = &tmp;
    printf("OriginInfo:\n");
    printf("address %p\n",&testInstsance);
    printf("a: %d %p\n",testInstsance.a,&testInstsance.a);
    printf("b: %p\n",testInstsance.b);
    printf("c address: %p\n",testInstsance.c);
    PassValue(testInstsance,&testInstsance);
}