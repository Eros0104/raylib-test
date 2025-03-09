#ifndef ENV_ITEM_H
#define ENV_ITEM_H

#include "raylib.h"

typedef struct EnvItem {
  Rectangle rect;
  int blocking;
  Color color;
} EnvItem;

#endif
