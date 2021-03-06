#include "z_en_bx.h"

#define FLAGS 0x00000010

#define THIS ((EnBx*)thisx)

void EnBx_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Bx_InitVars = {
    ACTOR_EN_BX,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBx),
    (ActorFunc)EnBx_Init,
    (ActorFunc)EnBx_Destroy,
    (ActorFunc)EnBx_Update,
    (ActorFunc)EnBx_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bx/EnBx_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bx/EnBx_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bx/func_809D1D0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bx/EnBx_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bx/EnBx_Draw.s")
