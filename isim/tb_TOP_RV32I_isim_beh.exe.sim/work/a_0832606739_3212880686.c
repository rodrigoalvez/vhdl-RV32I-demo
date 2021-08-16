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
static const char *ng0 = "C:/Users/ro-d-/Facultad/Facultad/2020/segundo_Cuatrimestre/organizacion_de_las_Computadoras/TPI02_VHDL/AlvezRodrigoEsteban_SoleMatiasJesus_TPI2_OC2020/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2479254793_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t17[16];
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
    int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7339);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB9:    t5 = (t0 + 7342);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB10:    t8 = (t0 + 7345);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB11:    t11 = (t0 + 7348);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB12:    t14 = (t0 + 7351);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB13:
LAB8:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 7418);
    t3 = (t0 + 3920);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 3808);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(48, ng0);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t18 = (t0 + 7152U);
    t20 = (t0 + 1192U);
    t21 = *((char **)t20);
    t20 = (t0 + 7168U);
    t22 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t17, t19, t18, t21, t20);
    t23 = (t17 + 12U);
    t24 = *((unsigned int *)t23);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB15;

LAB16:    t27 = (t0 + 3920);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t22, 32U);
    xsi_driver_first_trans_fast(t27);
    goto LAB2;

LAB4:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7152U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 7168U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t17, t2, t1, t5, t3);
    t8 = (t17 + 12U);
    t24 = *((unsigned int *)t8);
    t25 = (1U * t24);
    t26 = (32U != t25);
    if (t26 == 1)
        goto LAB17;

LAB18:    t9 = (t0 + 3920);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 32U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7152U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 7168U);
    t6 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t17, t2, t1, t5, t3);
    t8 = (t0 + 3920);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t6, 32U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB6:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7152U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 7168U);
    t6 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t17, t2, t1, t5, t3);
    t8 = (t0 + 3920);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t6, 32U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t26 = xsi_vhdl_lessthan(t1, t2, 32U, t3, 32U);
    if (t26 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7386);
    t3 = (t0 + 3920);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB20:    goto LAB2;

LAB14:;
LAB15:    xsi_size_not_matching(32U, t25, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t25, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 7354);
    t8 = (t0 + 3920);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    memcpy(t14, t5, 32U);
    xsi_driver_first_trans_fast(t8);
    goto LAB20;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7216U);
    t3 = ieee_p_1242562249_sub_2479254793_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 3984);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 3824);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 3984);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4048);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3840);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1,(void *)work_a_0832606739_3212880686_p_2};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/tb_TOP_RV32I_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
