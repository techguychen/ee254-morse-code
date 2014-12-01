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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Kevin Su/Documents/Files/USC/EE 254L/Project/ee254-morse-code/ee201_debounce_DPB_SCEN_CCEN_MCEN.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {4294967295U, 4294967295U};
static unsigned int ng3[] = {15U, 15U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {1U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {60U, 0U};
static unsigned int ng8[] = {32U, 0U};
static unsigned int ng9[] = {33U, 0U};
static unsigned int ng10[] = {44U, 0U};
static unsigned int ng11[] = {36U, 0U};
static unsigned int ng12[] = {8U, 0U};
static unsigned int ng13[] = {45U, 0U};
static unsigned int ng14[] = {34U, 0U};



static void Cont_116_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;

LAB0:    t1 = (t0 + 5304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4064);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 2);
    *((unsigned int *)t3) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 2);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 15U);
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 15U);
    t14 = (t0 + 6160);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memset(t18, 0, 8);
    t19 = 1U;
    t20 = t19;
    t21 = (t3 + 4);
    t22 = *((unsigned int *)t3);
    t19 = (t19 & t22);
    t23 = *((unsigned int *)t21);
    t20 = (t20 & t23);
    t24 = (t18 + 4);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t25 | t19);
    t26 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t26 | t20);
    xsi_driver_vfirst_trans(t14, 0, 0);
    t27 = (t0 + 6096);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memset(t31, 0, 8);
    t32 = 2U;
    t33 = t32;
    t34 = (t3 + 4);
    t35 = *((unsigned int *)t3);
    t32 = (t32 & t35);
    t36 = *((unsigned int *)t34);
    t33 = (t33 & t36);
    t32 = (t32 >> 1);
    t33 = (t33 >> 1);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t38 | t32);
    t39 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t39 | t33);
    xsi_driver_vfirst_trans(t27, 0, 0);
    t40 = (t0 + 6032);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    memset(t44, 0, 8);
    t45 = 4U;
    t46 = t45;
    t47 = (t3 + 4);
    t48 = *((unsigned int *)t3);
    t45 = (t45 & t48);
    t49 = *((unsigned int *)t47);
    t46 = (t46 & t49);
    t45 = (t45 >> 2);
    t46 = (t46 >> 2);
    t50 = (t44 + 4);
    t51 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t51 | t45);
    t52 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t52 | t46);
    xsi_driver_vfirst_trans(t40, 0, 0);
    t53 = (t0 + 5968);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memset(t57, 0, 8);
    t58 = 8U;
    t59 = t58;
    t60 = (t3 + 4);
    t61 = *((unsigned int *)t3);
    t58 = (t58 & t61);
    t62 = *((unsigned int *)t60);
    t59 = (t59 & t62);
    t58 = (t58 >> 3);
    t59 = (t59 >> 3);
    t63 = (t57 + 4);
    t64 = *((unsigned int *)t57);
    *((unsigned int *)t57) = (t64 | t58);
    t65 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t65 | t59);
    xsi_driver_vfirst_trans(t53, 0, 0);
    t66 = (t0 + 5872);
    *((int *)t66) = 1;

LAB1:    return;
}

static void Always_131_1(char *t0)
{
    char t16[8];
    char t26[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    char *t49;

LAB0:    t1 = (t0 + 5552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5888);
    *((int *)t2) = 1;
    t3 = (t0 + 5584);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(132, ng0);

LAB5:    t4 = (t0 + 280);
    xsi_vlog_namedbase_setdisablestate(t4, &&LAB6);
    t5 = (t0 + 5360);
    xsi_vlog_namedbase_pushprocess(t4, t5);

LAB7:    xsi_set_current_line(134, ng0);
    t6 = (t0 + 2864U);
    t7 = *((char **)t6);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(141, ng0);

LAB12:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB13:    t5 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t5, 6);
    if (t15 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng10)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng11)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng13)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng14)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 6);
    if (t15 == 1)
        goto LAB30;

LAB31:
LAB32:
LAB10:    t2 = (t0 + 280);
    xsi_vlog_namedbase_popprocess(t2);

LAB6:    t3 = (t0 + 5360);
    xsi_vlog_dispose_process_subprogram_invocation(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(135, ng0);

LAB11:    xsi_set_current_line(136, ng0);
    t13 = ((char*)((ng1)));
    t14 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 6, 0LL);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB10;

LAB14:    xsi_set_current_line(144, ng0);

LAB33:    xsi_set_current_line(145, ng0);
    t6 = ((char*)((ng4)));
    t7 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 7, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 3024U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB34;

LAB35:
LAB36:    goto LAB32;

LAB16:    xsi_set_current_line(153, ng0);

LAB38:    xsi_set_current_line(154, ng0);
    t3 = (t0 + 4224);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t6, 7, t7, 32);
    t13 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t13, t16, 0, 0, 7, 0LL);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 3024U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t2) == 0)
        goto LAB39;

LAB41:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB42:    t6 = (t16 + 4);
    t17 = *((unsigned int *)t6);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB43;

LAB44:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 2);
    t17 = (t12 & 1);
    *((unsigned int *)t6) = t17;
    t13 = (t16 + 4);
    t18 = *((unsigned int *)t13);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB47;

LAB48:
LAB49:
LAB45:    goto LAB32;

LAB18:    xsi_set_current_line(165, ng0);

LAB51:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 7, 0LL);
    xsi_set_current_line(167, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t5, 4, t6, 32);
    t7 = (t0 + 4384);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 4, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB32;

LAB20:    xsi_set_current_line(171, ng0);

LAB52:    xsi_set_current_line(172, ng0);
    t3 = (t0 + 4224);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t6, 7, t7, 32);
    t13 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t13, t16, 0, 0, 7, 0LL);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 3024U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t2) == 0)
        goto LAB53;

LAB55:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB56:    t6 = (t16 + 4);
    t17 = *((unsigned int *)t6);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB57;

LAB58:    xsi_set_current_line(177, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 6);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 6);
    t17 = (t12 & 1);
    *((unsigned int *)t6) = t17;
    t13 = (t16 + 4);
    t18 = *((unsigned int *)t13);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB61;

LAB62:
LAB63:
LAB59:    goto LAB32;

LAB22:    xsi_set_current_line(183, ng0);

LAB65:    xsi_set_current_line(184, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 7, 0LL);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t5, 4, t6, 32);
    t7 = (t0 + 4384);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 4, 0LL);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB32;

LAB24:    xsi_set_current_line(189, ng0);

LAB66:    xsi_set_current_line(190, ng0);
    t3 = (t0 + 4224);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t6, 7, t7, 32);
    t13 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t13, t16, 0, 0, 7, 0LL);
    xsi_set_current_line(191, ng0);
    t2 = (t0 + 3024U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB70;

LAB68:    if (*((unsigned int *)t2) == 0)
        goto LAB67;

LAB69:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB70:    t6 = (t16 + 4);
    t17 = *((unsigned int *)t6);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(195, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 6);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 6);
    t17 = (t12 & 1);
    *((unsigned int *)t6) = t17;
    t13 = (t16 + 4);
    t18 = *((unsigned int *)t13);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB75;

LAB76:
LAB77:
LAB73:    goto LAB32;

LAB26:    xsi_set_current_line(208, ng0);

LAB88:    xsi_set_current_line(209, ng0);
    t3 = (t0 + 3024U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t3 = (t5 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB92;

LAB90:    if (*((unsigned int *)t3) == 0)
        goto LAB89;

LAB91:    t6 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t6) = 1;

LAB92:    t7 = (t16 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t16);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB93;

LAB94:
LAB95:    goto LAB32;

LAB28:    xsi_set_current_line(215, ng0);

LAB97:    xsi_set_current_line(216, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 7, 0LL);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    goto LAB32;

LAB30:    xsi_set_current_line(221, ng0);

LAB98:    xsi_set_current_line(222, ng0);
    t3 = (t0 + 4224);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t6, 7, t7, 32);
    t13 = (t0 + 4224);
    xsi_vlogvar_wait_assign_value(t13, t16, 0, 0, 7, 0LL);
    xsi_set_current_line(223, ng0);
    t2 = (t0 + 3024U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB99;

LAB100:    xsi_set_current_line(227, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t16, 0, 8);
    t6 = (t16 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 2);
    t10 = (t9 & 1);
    *((unsigned int *)t16) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 2);
    t17 = (t12 & 1);
    *((unsigned int *)t6) = t17;
    t13 = (t16 + 4);
    t18 = *((unsigned int *)t13);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB103;

LAB104:
LAB105:
LAB101:    goto LAB32;

LAB34:    xsi_set_current_line(148, ng0);

LAB37:    xsi_set_current_line(149, ng0);
    t5 = ((char*)((ng5)));
    t6 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 6, 0LL);
    goto LAB36;

LAB39:    *((unsigned int *)t16) = 1;
    goto LAB42;

LAB43:    xsi_set_current_line(156, ng0);

LAB46:    xsi_set_current_line(157, ng0);
    t7 = ((char*)((ng1)));
    t13 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t13, t7, 0, 0, 6, 0LL);
    goto LAB45;

LAB47:    xsi_set_current_line(160, ng0);

LAB50:    xsi_set_current_line(161, ng0);
    t14 = ((char*)((ng7)));
    t23 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t23, t14, 0, 0, 6, 0LL);
    goto LAB49;

LAB53:    *((unsigned int *)t16) = 1;
    goto LAB56;

LAB57:    xsi_set_current_line(174, ng0);

LAB60:    xsi_set_current_line(175, ng0);
    t7 = ((char*)((ng9)));
    t13 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t13, t7, 0, 0, 6, 0LL);
    goto LAB59;

LAB61:    xsi_set_current_line(178, ng0);

LAB64:    xsi_set_current_line(179, ng0);
    t14 = ((char*)((ng10)));
    t23 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t23, t14, 0, 0, 6, 0LL);
    goto LAB63;

LAB67:    *((unsigned int *)t16) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(192, ng0);

LAB74:    xsi_set_current_line(193, ng0);
    t7 = ((char*)((ng9)));
    t13 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t13, t7, 0, 0, 6, 0LL);
    goto LAB73;

LAB75:    xsi_set_current_line(196, ng0);

LAB78:    xsi_set_current_line(197, ng0);
    t14 = (t0 + 4384);
    t23 = (t14 + 56U);
    t24 = *((char **)t23);
    t25 = ((char*)((ng12)));
    memset(t26, 0, 8);
    t27 = (t24 + 4);
    t28 = (t25 + 4);
    t29 = *((unsigned int *)t24);
    t30 = *((unsigned int *)t25);
    t31 = (t29 ^ t30);
    t32 = *((unsigned int *)t27);
    t33 = *((unsigned int *)t28);
    t34 = (t32 ^ t33);
    t35 = (t31 | t34);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB82;

LAB79:    if (t38 != 0)
        goto LAB81;

LAB80:    *((unsigned int *)t26) = 1;

LAB82:    t42 = (t26 + 4);
    t43 = *((unsigned int *)t42);
    t44 = (~(t43));
    t45 = *((unsigned int *)t26);
    t46 = (t45 & t44);
    t47 = (t46 != 0);
    if (t47 > 0)
        goto LAB83;

LAB84:    xsi_set_current_line(202, ng0);

LAB87:    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB85:    goto LAB77;

LAB81:    t41 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB82;

LAB83:    xsi_set_current_line(198, ng0);

LAB86:    xsi_set_current_line(199, ng0);
    t48 = ((char*)((ng13)));
    t49 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t49, t48, 0, 0, 6, 0LL);
    goto LAB85;

LAB89:    *((unsigned int *)t16) = 1;
    goto LAB92;

LAB93:    xsi_set_current_line(210, ng0);

LAB96:    xsi_set_current_line(211, ng0);
    t13 = ((char*)((ng9)));
    t14 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 6, 0LL);
    goto LAB95;

LAB99:    xsi_set_current_line(224, ng0);

LAB102:    xsi_set_current_line(225, ng0);
    t5 = ((char*)((ng8)));
    t6 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 6, 0LL);
    goto LAB101;

LAB103:    xsi_set_current_line(228, ng0);

LAB106:    xsi_set_current_line(229, ng0);
    t14 = ((char*)((ng1)));
    t23 = (t0 + 4064);
    xsi_vlogvar_wait_assign_value(t23, t14, 0, 0, 6, 0LL);
    goto LAB105;

}


extern void work_m_00000000000169562412_2238477816_init()
{
	static char *pe[] = {(void *)Cont_116_0,(void *)Always_131_1};
	xsi_register_didat("work_m_00000000000169562412_2238477816", "isim/ee201_debounce_DPB_SCEN_CCEN_MCEN_isim_beh.exe.sim/work/m_00000000000169562412_2238477816.didat");
	xsi_register_executes(pe);
}
