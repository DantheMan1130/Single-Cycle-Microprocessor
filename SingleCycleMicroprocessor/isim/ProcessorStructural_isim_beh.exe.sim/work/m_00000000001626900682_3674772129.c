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
static const char *ng0 = "C:/Users/Dan/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/SingleCycleMicroprocessor/RegisterFile.v";
static const char *ng1 = "RegisterFileValue.txt";
static int ng2[] = {0, 0};
static int ng3[] = {31, 0};
static int ng4[] = {1, 0};
static int ng5[] = {2, 0};
static int ng6[] = {3, 0};
static int ng7[] = {4, 0};
static int ng8[] = {5, 0};
static int ng9[] = {6, 0};



static void Initial_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    xsi_set_current_line(31, ng0);

LAB2:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 3688);
    t2 = ((char*)((ng2)));
    t3 = ((char*)((ng3)));
    xsi_vlogfile_readmemb(ng1, 0, t1, 1, *((unsigned int *)t2), 1, *((unsigned int *)t3));

LAB1:    return;
}

static void Always_36_1(char *t0)
{
    char t13[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int t24;
    char *t25;
    unsigned int t26;
    int t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    int t31;
    int t32;

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 5424);
    *((int *)t2) = 1;
    t3 = (t0 + 4888);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);
    t11 = (t0 + 1528U);
    t12 = *((char **)t11);
    t11 = (t0 + 3688);
    t15 = (t0 + 3688);
    t16 = (t15 + 72U);
    t17 = *((char **)t16);
    t18 = (t0 + 3688);
    t19 = (t18 + 64U);
    t20 = *((char **)t19);
    t21 = (t0 + 1368U);
    t22 = *((char **)t21);
    xsi_vlog_generic_convert_array_indices(t13, t14, t17, t20, 2, 1, t22, 5, 2);
    t21 = (t13 + 4);
    t23 = *((unsigned int *)t21);
    t24 = (!(t23));
    t25 = (t14 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (!(t26));
    t28 = (t24 && t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    goto LAB8;

LAB9:    t29 = *((unsigned int *)t13);
    t30 = *((unsigned int *)t14);
    t31 = (t29 - t30);
    t32 = (t31 + 1);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t14), t32, 0LL);
    goto LAB10;

}

static void Always_42_2(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5440);
    *((int *)t2) = 1;
    t3 = (t0 + 5136);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 3688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3688);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3688);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1048U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 32, t6, t10, t13, 2, 1, t15, 5, 2);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1208U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t7, 0, 0, 32);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2568);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng4)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2728);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng5)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 2888);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng6)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 3048);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng7)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 3208);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng8)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 3368);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3688);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng9)));
    xsi_vlog_generic_get_array_select_value(t7, 32, t4, t8, t11, 2, 1, t12, 32, 1);
    t13 = (t0 + 3528);
    xsi_vlogvar_assign_value(t13, t7, 0, 0, 32);
    goto LAB2;

}


extern void work_m_00000000001626900682_3674772129_init()
{
	static char *pe[] = {(void *)Initial_31_0,(void *)Always_36_1,(void *)Always_42_2};
	xsi_register_didat("work_m_00000000001626900682_3674772129", "isim/ProcessorStructural_isim_beh.exe.sim/work/m_00000000001626900682_3674772129.didat");
	xsi_register_executes(pe);
}
