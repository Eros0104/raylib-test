
#ifndef PLAYER_H
#define PLAYER_H

#include "env-item.h"
#include "raylib.h"

#define PLAYER_JUMP_SPD 350.0f
#define PLAYER_HOR_SPD 200.0f

typedef struct Player {
  Vector2 position;
  float speed;
  bool canJump;
} Player;

void initPlayer(Player *player);
void updatePlayer(Player *player, EnvItem *envItems, int envItemsLength,
                  float deltaTime);
void renderPlayer(Player *player);

#endif
