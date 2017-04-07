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
static const char *ng0 = "C:/Users/FAMILIA-ESCOBAR/Documents/Alejandro docs/1UTP/Arquitectura de computadores/Project1/SCU/SCU.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_0909227156_3212880686_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(15, ng0);

LAB3:    t1 = (t0 + 5348);
    t3 = (t0 + 3160);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 19U);
    xsi_driver_first_trans_fast(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0909227156_3212880686_p_1(char *t0)
{
    char t9[16];
    char t12[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (12 - 12);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t10 = *((char **)t1);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t0 + 5292U);
    t14 = (t0 + 5260U);
    t1 = xsi_base_array_concat(t1, t9, t11, (char)97, t2, t13, (char)97, t10, t14, (char)101);
    t4 = (19U + 13U);
    t7 = (32U != t4);
    if (t7 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 3224);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t1, 32U);
    xsi_driver_first_trans_fast_port(t17);

LAB3:    t1 = (t0 + 3080);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t10 = (t0 + 5367);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 31;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (31 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t0 + 1032U);
    t17 = *((char **)t14);
    t14 = (t0 + 5260U);
    t18 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t9, t10, t12, t17, t14);
    t19 = (t0 + 3224);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t18, 32U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t4, 0);
    goto LAB6;

}


extern void work_a_0909227156_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0909227156_3212880686_p_0,(void *)work_a_0909227156_3212880686_p_1};
	xsi_register_didat("work_a_0909227156_3212880686", "isim/Procesador_uno_TB_isim_beh.exe.sim/work/a_0909227156_3212880686.didat");
	xsi_register_executes(pe);
}
