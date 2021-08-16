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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_2141573718_3212880686_init();
    work_a_2006462160_3212880686_init();
    work_a_2458923067_3212880686_init();
    work_a_2061573277_3212880686_init();
    work_a_1011648156_3212880686_init();
    work_a_2131211276_3212880686_init();
    work_a_1873478902_3212880686_init();
    work_a_1959000748_3212880686_init();
    work_a_3876346241_3212880686_init();
    work_a_2871026275_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_3378510557_3212880686_init();
    work_a_0407593614_3212880686_init();
    work_a_2752746144_3212880686_init();
    work_a_4097134387_3212880686_init();
    work_a_1589562989_3212880686_init();
    work_a_1807569405_3212880686_init();
    work_a_3263274598_3212880686_init();
    work_a_0852166632_3212880686_init();
    work_a_4085309447_3212880686_init();
    work_a_1875333434_3212880686_init();
    work_a_3863512822_3212880686_init();
    work_a_0579188271_3212880686_init();
    work_a_2307288847_3212880686_init();
    work_a_3852522842_2372691052_init();


    xsi_register_tops("work_a_3852522842_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
