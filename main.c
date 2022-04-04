/*
 * @Author: FMSH
 * @Date: 2022-03-30 23:26:01
 * @LastEditTime: 2022-04-03 21:57:38
 * @Description: 
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "common.h"

#include "vm.h"
void Test();
static void repl(){
    char line[1024];
    for(;;){
        printf("> ");
        //这里应该是阻塞的io输入 TODO
        if(!fgets(line,sizeof(line),stdin)){
            printf("\n");
            break;
        }
        interpret(line);
    }
}
//TODO 看一下文件系统的接口
static char* readFile(const char* path){
    FILE* file = fopen(path,"rb");
    if(file == NULL){
        fprintf(stderr,"Could not open file \"%s\".\n",path);
        exit(74);
    }
    fseek(file,0L,SEEK_END);
    size_t fileSize = ftell(file);
    rewind(file);
    char* buffer = (char*)malloc(fileSize+1);
    if(buffer == NULL){
        fprintf(stderr,"Not enough memory to read \"%s\".\n",path);
        exit(74);
    }
    size_t bytesRead = fread(buffer,sizeof(char),fileSize,file);
    if(bytesRead<fileSize){
        fprintf(stderr,"Could not read file \"%s\".\n",path);
        exit(74);
    }
    buffer[bytesRead]='\0';
    fclose(file);
    return buffer;
}
static void runFile(const char* path){
    char* source = readFile(path);
    InterpretResult result = interpret(source);
    free(source);
    if(result == INTERPRET_COMPILE_ERROR) exit(65);
    if(result == INTERPRET_RUNTIME_ERROR) exit(70);
}
int main(int argc,const char* argv[]){
    // Test();
    initVM();
    if(argc == 1){
        repl();
    }else if(argc == 2){
        runFile(argv[1]);
    }else{
        fprintf(stderr,"Usage: clox [path]\n");
        exit(64);
    }
    freeVM();
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
void TestPassArg(){
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
void Test(){
    // TestPassArg();
    char *a = "hello";
    char *b = "hello";
    char c[]= "hello";
    printf("%p %p %p",a,b,c);
}