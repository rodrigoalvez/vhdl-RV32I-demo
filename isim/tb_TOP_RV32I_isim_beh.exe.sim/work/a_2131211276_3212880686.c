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
static const char *ng0 = "C:/Users/ro-d-/Facultad/Facultad/2020/segundo_Cuatrimestre/organizacion_de_las_Computadoras/TPI02_VHDL/AlvezRodrigoEsteban_SoleMatiasJesus_TPI2_OC2020/Banco_De_Regsitros.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2131211276_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    int t19;
    unsigned char t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;

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
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 4200);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(1024U);
    memset(t1, 0, 1024U);
    t5 = t1;
    t6 = (t0 + 9810);
    t8 = (32U != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4296);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 1024U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t9 = (1024U / 32U);
    xsi_mem_set_data(t5, t6, 32U, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t17 = *((unsigned char *)t6);
    t18 = (t17 == (unsigned char)3);
    if (t18 == 1)
        goto LAB15;

LAB16:    t16 = (unsigned char)0;

LAB17:    if (t16 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB3;

LAB9:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t15 = (t8 == (unsigned char)3);
    t3 = t15;
    goto LAB11;

LAB12:    xsi_set_current_line(58, ng0);
    t10 = (t0 + 1512U);
    t11 = *((char **)t10);
    t10 = (t0 + 1352U);
    t12 = *((char **)t10);
    t10 = (t0 + 8632U);
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t12, t10);
    t22 = (t21 - 0);
    t9 = (t22 * 1);
    t23 = (32U * t9);
    t24 = (0U + t23);
    t13 = (t0 + 4296);
    t14 = (t13 + 56U);
    t25 = *((char **)t14);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t11, 32U);
    xsi_driver_first_trans_delta(t13, t24, 32U, 0LL);
    goto LAB13;

LAB15:    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 8632U);
    t19 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t7, t2);
    t20 = (t19 != 0);
    t16 = t20;
    goto LAB17;

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

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8600U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 8600U);
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

LAB3:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 8616U);
    t3 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = (t3 == 0);
    if (t4 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 8616U);
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
LAB2:    xsi_set_current_line(66, ng0);
    t5 = (t0 + 9842);
    t7 = (t0 + 4360);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 9874);
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
	xsi_register_didat("work_a_2131211276_3212880686", "isim/tb_TOP_RV32I_isim_beh.exe.sim/work/a_2131211276_3212880686.didat");
	xsi_register_executes(pe);
}
