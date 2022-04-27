/*
 * @Author: FMSH
 * @Date: 2022-03-31 21:56:03
 * @LastEditTime: 2022-03-31 22:01:56
 * @Description: 
 */

#include <stdlib.h>
#include "memory.h"
#include "object.h"
#include "vm.h"

void* reallocate(void* pointer,size_t oldSize, size_t newSize){
    if(newSize == 0 ){
        free(pointer);
        return NULL;
    }
    void* result = realloc(pointer,newSize);
    // 没有足够空间
    if(result == NULL) exit(1);
    return result;
}

static void freeObject(Obj* object){
    switch (object->type)
    {
        case OBJ_STRING:{
            ObjString* string = (ObjString*)object;
            FREE_ARRAY(char,string->chars,string->length+1);
            FREE(ObjString,object);
            break;
        }
        case OBJ_FUNCTION:{
            ObjFunction* function = (ObjFunction*)object;
            function->arity = 0;
            // freeObject(&function->name); 由GC回收
            freeChunk(&function->chunk);
            FREE(ObjFunction,object);
            break;
        }
        case OBJ_NATIVE:{
            FREE(ObjNative,object);
            break;
        }
    }
}

void freeObjects(){
    Obj* object = vm.objects;
    while(object != NULL){
        Obj* next = object->next;
        freeObject(object);
        object = next;
    }
}