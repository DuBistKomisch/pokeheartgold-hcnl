#ifndef POKEHEARTGOLD_SAVE_POKEATHLON_H
#define POKEHEARTGOLD_SAVE_POKEATHLON_H

#include "save.h"

typedef struct POKEATHLON_SAV POKEATHLON_SAV;

POKEATHLON_SAV *Save_Pokeathlon_get(SAVEDATA *saveData);
BOOL sub_02031A78(POKEATHLON_SAV *pokeathlon, int idx);
BOOL sub_02031AB8(POKEATHLON_SAV *pokeathlon, int idx);
void sub_02031AE4(POKEATHLON_SAV *pokeathlon);

#endif //POKEHEARTGOLD_SAVE_POKEATHLON_H