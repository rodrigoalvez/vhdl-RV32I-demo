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
static const char *ng0 = "D:/Facultad/3ro/Organizacion de las computadoras/TP2/TPI2/Procesador.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3863512822_3212880686_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 7008U);
    t7 = (t0 + 7024U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (3U + 11U);
    t9 = (14U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4192);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 14U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 4112);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(14U, t8, 0);
    goto LAB6;

}


extern void work_a_3863512822_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3863512822_3212880686_p_0};
	xsi_register_didat("work_a_3863512822_3212880686", "isim/TOP_RV32I_isim_beh.exe.sim/work/a_3863512822_3212880686.didat");
	xsi_register_executes(pe);
}
