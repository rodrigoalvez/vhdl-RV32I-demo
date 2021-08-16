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
static const char *ng0 = "D:/Facultad/3ro/Organizacion de las computadoras/TP2/TPI2/Alu_Decoder.vhd";



static void work_a_4085309447_3212880686_p_0(char *t0)
{
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4990);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 4992);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 4994);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5032);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t11 = (t0 + 4996);
    t13 = (t0 + 3072);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 3U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4999);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5002);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB12;

LAB17:    t5 = (t0 + 5005);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB13;

LAB18:    t8 = (t0 + 5008);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB14;

LAB19:    t11 = (t0 + 5011);
    t18 = xsi_mem_cmp(t11, t2, 3U);
    if (t18 == 1)
        goto LAB15;

LAB20:
LAB16:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5029);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB11:    goto LAB2;

LAB10:;
LAB12:    xsi_set_current_line(55, ng0);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t19 = *((unsigned char *)t14);
    t20 = (t19 == (unsigned char)3);
    if (t20 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5017);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);

LAB23:    goto LAB11;

LAB13:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5020);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB14:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5023);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB15:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5026);
    t3 = (t0 + 3072);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB11;

LAB21:;
LAB22:    xsi_set_current_line(56, ng0);
    t13 = (t0 + 5014);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t13, 3U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB23;

}


extern void work_a_4085309447_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4085309447_3212880686_p_0};
	xsi_register_didat("work_a_4085309447_3212880686", "isim/TOP_RV32I_isim_beh.exe.sim/work/a_4085309447_3212880686.didat");
	xsi_register_executes(pe);
}
