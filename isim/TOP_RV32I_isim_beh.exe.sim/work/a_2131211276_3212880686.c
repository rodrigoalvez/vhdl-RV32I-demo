/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Facultad/3ro/Organizacion de las computadoras/TP2/TPI2/Banco_De_Regsitros.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2131211276_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB71;

LAB72:    t3 = (unsigned char)0;

LAB73:    if (t3 != 0)
        goto LAB69;

LAB70:
LAB3:    t1 = (t0 + 4200);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8550);
    t6 = (32U != 32U);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 4296);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_delta(t7, 0U, 32U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8582);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB7;

LAB8:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 352U, 32U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8614);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB9;

LAB10:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 704U, 32U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8646);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB11;

LAB12:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 32U, 32U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8678);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB13;

LAB14:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 384U, 32U, 0LL);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8710);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB15;

LAB16:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 736U, 32U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8742);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB17;

LAB18:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 64U, 32U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8774);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB19;

LAB20:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 416U, 32U, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 8806);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB21;

LAB22:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 768U, 32U, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 8838);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB23;

LAB24:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 96U, 32U, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 8870);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB25;

LAB26:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 448U, 32U, 0LL);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 8902);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB27;

LAB28:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 800U, 32U, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 8934);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB29;

LAB30:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 128U, 32U, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 8966);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB31;

LAB32:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 480U, 32U, 0LL);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 8998);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB33;

LAB34:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 832U, 32U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 9030);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB35;

LAB36:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 160U, 32U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 9062);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB37;

LAB38:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 512U, 32U, 0LL);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 9094);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB39;

LAB40:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 864U, 32U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9126);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB41;

LAB42:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 192U, 32U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9158);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB43;

LAB44:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 544U, 32U, 0LL);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 9190);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB45;

LAB46:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 896U, 32U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9222);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB47;

LAB48:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 224U, 32U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9254);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB49;

LAB50:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 576U, 32U, 0LL);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 9286);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB51;

LAB52:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 928U, 32U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 9318);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB53;

LAB54:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 256U, 32U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 9350);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB55;

LAB56:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 608U, 32U, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 9382);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB57;

LAB58:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 960U, 32U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 9414);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB59;

LAB60:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 288U, 32U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 9446);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB61;

LAB62:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 640U, 32U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 9478);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB63;

LAB64:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 992U, 32U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 9510);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB65;

LAB66:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 320U, 32U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 9542);
    t3 = (32U != 32U);
    if (t3 == 1)
        goto LAB67;

LAB68:    t5 = (t0 + 4296);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_delta(t5, 672U, 32U, 0LL);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB8;

LAB9:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB48;

LAB49:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB50;

LAB51:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB54;

LAB55:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB56;

LAB57:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB58;

LAB59:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB60;

LAB61:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB62;

LAB63:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB64;

LAB65:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB66;

LAB67:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB68;

LAB69:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1832U);
    t7 = *((char **)t2);
    t13 = *((unsigned char *)t7);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB74;

LAB76:
LAB75:    goto LAB3;

LAB71:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t12 = (t6 == (unsigned char)3);
    t3 = t12;
    goto LAB73;

LAB74:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1512U);
    t8 = *((char **)t2);
    t2 = (t0 + 1352U);
    t9 = *((char **)t2);
    t2 = (t0 + 7372U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t2);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    t18 = (32U * t17);
    t19 = (0U + t18);
    t10 = (t0 + 4296);
    t11 = (t10 + 56U);
    t20 = *((char **)t11);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 32U);
    xsi_driver_first_trans_delta(t10, t19, 32U, 0LL);
    goto LAB75;

}

static void work_a_2131211276_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7340U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 7340U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t12 = (t3 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t3);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4360);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7356U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 7356U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t12 = (t3 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t3);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t6 = (t2 + t15);
    t7 = (t0 + 4424);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    t1 = (t0 + 4216);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t5 = (t0 + 9574);
    t7 = (t0 + 4360);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(83, ng0);
    t5 = (t0 + 9606);
    t7 = (t0 + 4424);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB6;

}


extern void work_a_2131211276_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2131211276_3212880686_p_0,(void *)work_a_2131211276_3212880686_p_1};
	xsi_register_didat("work_a_2131211276_3212880686", "isim/TOP_RV32I_isim_beh.exe.sim/work/a_2131211276_3212880686.didat");
	xsi_register_executes(pe);
}
