#define DEBUG_TYPE "stack_deconstructor"
#include "stack_deconstructor.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

char stack_deconstructor::ID = 0;
static RegisterPass<stack_deconstructor>
    X("stack-decons", "To partition global monolithic stack to per function stack frame");

/*******************************************************************
  * Function :   runOnModule
  * Purpose  :   Entry point for stack_deconstructor pass
********************************************************************/
bool stack_deconstructor::runOnModule(Module &M) {
  Mod = &M;

  return true; // Transform pass
}

