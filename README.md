# pyzoon
a simple python interpreter for MSX, with Z88DK.

fork from [https://github.com/TheEnbyperor/bbc-c](https://github.com/TheEnbyperor/bbc-c/tree/master/bbcpython)

under porting.

chunk.c:4:6: warning: Converting type: struct sChunk Chunk* chunk to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
chunk.c:5:18: warning: Converting type: struct 0__anonstruct_24_17 constants*  to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
chunk.c:6:17: warning: Converting type: struct 0__anonstruct_11_14 lineInfo*  to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
chunk.c:14:6: warning: Converting type: struct sChunk Chunk* chunk to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
chunk.c:24:18: warning: Converting type: struct 0__anonstruct_24_17 constants*  to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
chunk.c:25:17: warning: Converting type: struct 0__anonstruct_11_14 lineInfo*  to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
compiler.c:172:78: warning: Converting type: struct 0__anonstruct_16_20 ObjString*  to struct sObj Obj* val [-Wincompatible-pointer-types]
debug.c:5:6: warning: Converting type: struct 0__anonstruct_11_14 LineInfoArray* array to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
main.c:15:3: warning: Converting type: struct VM * vm to struct 0__anonstruct_18_19 VM* vm [-Wincompatible-pointer-types]
main.c:23:4: warning: Converting type: struct 0__anonstruct_18_19 vm*  to struct VM * vm [-Wincompatible-pointer-types]
scanner.c:13:42: warning: Assigning 'curIndent', type: int * curIndent from int indent[20]*  [-Wincompatible-pointer-types]
value.c:6:6: warning: Converting type: struct 0__anonstruct_24_15 ValueArray* array to struct 0__anonstruct_11_12 DynamicArray* array [-Wincompatible-pointer-types]
value.c:39:24: warning: Assigning 'obj', type: struct Obj * obj from struct sObj Obj* val [-Wincompatible-pointer-types]
