#include <stdio.h>
#include <string.h>

#include "object.h"
#include "table.h"
#include "memory.h"
#include "vm.h"

static Obj* allocateObject(size_t size,ObjType type);
#define ALLOCATE_OBJ(type,objectType) \
        (type*)allocateObject(sizeof(type),objectType)

static Obj* allocateObject(size_t size,ObjType type){
    Obj* object = (Obj*)reallocate(NULL,0,size);
    object->type = type;
    object->next = vm.objects;
    vm.objects = object;
    return object;
}

static ObjString* allocateString(char* chars,int length,uint32_t hashcode){
    ObjString* string = ALLOCATE_OBJ(ObjString,OBJ_STRING);
    string->length = length;
    string->chars = chars;
    string->hash = hashcode; 
    tableSet(&vm.strings,string,NIL_VAL);
    return string;
}
// FNV-1a
static uint32_t hashString(const char* key,int length){
    uint32_t hash = 216613626lu;
    for(int i = 0;i < length; i++){
        hash ^= (uint8_t)key[i];
        hash *= 16777619;
    }
    return hash;
}

ObjString* copyString(const char* chars,int length){
    uint32_t hashcode = hashString(chars,length);
    ObjString* interned = tableFindString(&vm.strings,chars,length,hashcode);
    if(interned != NULL) return interned;
    char* heapChars = ALLOCATE(char,length+1);
    memcpy(heapChars,chars,length);
    heapChars[length] = '\0';
    return allocateString(heapChars,length,hashcode);
}
ObjString* takeString(char* chars,int length){
    uint32_t hashCode = hashString(chars,length);
    ObjString* interned = tableFindString(&vm.strings,chars,length,hashCode);

    if(interned != NULL){
        FREE_ARRAY(char,chars,length+1);
        return interned;
    }

    return allocateString(chars,length,hashCode);
}

void printObject(Value value){
    switch (OBJ_TYPE(value))
    {
        case OBJ_STRING:
            printf("%s",AS_CSTRING(value));
            break;
    }
}