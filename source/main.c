#include "chunk.h"
#include "debug.h"
#include "vm.h"

static void repl(VM *vm) {
  char line[255];
  for (;;) {
    printf(">>> ");

    if (!fgets(line, sizeof(line),stdin)) {
      printf("\nBye!\n");
      break;
    }

    interpret(vm, line);
  }
}

int main() {
  VM vm;
  initVM(&vm);

  repl(&vm);

  freeVM(&vm);
  return 0;
}
