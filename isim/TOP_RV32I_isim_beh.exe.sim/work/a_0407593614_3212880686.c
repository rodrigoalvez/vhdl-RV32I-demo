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
static const char *ng0 = "D:/Facultad/3ro/Organizacion de las computadoras/TP2/TPI2/Mux2x1_Data.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0407593614_3212880686_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    char t23[16];
    char t24[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t22;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5584);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 5586);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 5588);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 5590);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(51, ng0);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 3392);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5592);
    t3 = (t0 + 5616);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t21 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 23;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t4 = (23 - 0);
    t22 = (t4 * 1);
    t22 = (t22 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t22;
    t11 = (t23 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t7 = (1 - 0);
    t22 = (t7 * 1);
    t22 = (t22 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t22;
    t6 = xsi_base_array_concat(t6, t20, t8, (char)97, t1, t21, (char)97, t3, t23, (char)101);
    t12 = (t0 + 1512U);
    t14 = *((char **)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t0 + 5424U);
    t12 = xsi_base_array_concat(t12, t24, t15, (char)97, t6, t20, (char)97, t14, t16, (char)101);
    t22 = (24U + 2U);
    t25 = (t22 + 6U);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB13;

LAB14:    t17 = (t0 + 3392);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t27 = (t19 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t12, 32U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB12:;
LAB13:    xsi_size_not_matching(32U, t25, 0);
    goto LAB14;

}


extern void work_a_0407593614_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0407593614_3212880686_p_0};
	xsi_register_didat("work_a_0407593614_3212880686", "isim/TOP_RV32I_isim_beh.exe.sim/work/a_0407593614_3212880686.didat");
	xsi_register_executes(pe);
}
