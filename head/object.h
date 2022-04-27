#ifndef clox_object_h
#define clox_object_h

#include "common.h"
#include "chunk.h"
#include "value.h"

#define OBJ_TYPE(value)     (AS_OBJ(value)->type)
#define IS_STRING(value)    isObjType(value,OBJ_STRING)   
#define IS_FUNCTION(value)  isObjType(value,OBJ_FUNCTION)
#define IS_NATIVE(value)    isObjType(value,OBJ_NATIVE)

#define AS_STRING(value)    ((ObjString*)AS_OBJ(value))
#define AS_CSTRING(value)   (((ObjString*)AS_OBJ(value))->chars)
#define AS_FUNCTION(value)  ((ObjFunction*)AS_OBJ(value))
#define AS_NATIVE(value)    (((ObjNative*)AS_OBJ(value))->function)

typedef enum{
    OBJ_STRING,
    OBJ_FUNCTION,
    OBJ_NATIVE
} ObjType;

struct Obj {
    ObjType type;
    struct Obj* next;
};

typedef struct{
    Obj obj;
    int arity;
    Chunk chunk;
    ObjString* name;
} ObjFunction;


typedef Value (*NativeFn)(int argCount,Value* args);
typedef struct{
    Obj obj;
    NativeFn function;
} ObjNative;

struct ObjString{
    Obj obj;
    int length;
    char* chars;
    uint32_t hash;
};



ObjString* copyString(const char* chars,int length);
ObjString* takeString(char* chars,int length);
void printObject(Value value);
ObjFunction* newFunction();
ObjNative* newNative(NativeFn function);
static inline bool isObjType(Value value,ObjType type){
    // return IS_OBJ(value) && OBJ_TYPE(value) == type;
    return IS_OBJ(value) && AS_OBJ(value)->type == type;
}

#endif