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
static const char *ng0 = "C:/Users/Kevin Su/Documents/Files/USC/EE 254L/Project/ee254-morse-code/dot_dash.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_23_0(char *t0)
{
    char t16[8];
    char t25[8];
    char t36[8];
    char t55[8];
    char t63[8];
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 4376);
    *((int *)t2) = 1;
    t3 = (t0 + 4088);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB5:    t4 = (t0 + 280);
    xsi_vlog_namedbase_setdisablestate(t4, &&LAB6);
    t5 = (t0 + 3864);
    xsi_vlog_namedbase_pushprocess(t4, t5);

LAB7:    xsi_set_current_line(26, ng0);
    t6 = (t0 + 1936U);
    t7 = *((char **)t6);
    t6 = (t7 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t7);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB8;

LAB9:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1616U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB12;

LAB13:
LAB14:
LAB10:    t2 = (t0 + 280);
    xsi_vlog_namedbase_popprocess(t2);

LAB6:    t3 = (t0 + 3864);
    xsi_vlog_dispose_process_subprogram_invocation(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(27, ng0);

LAB11:    xsi_set_current_line(28, ng0);
    t13 = (t0 + 768);
    t14 = *((char **)t13);
    t13 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t13, t14, 0, 0, 1, 0LL);
    goto LAB10;

LAB12:    xsi_set_current_line(31, ng0);

LAB15:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 3136);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB16:    t7 = (t0 + 768);
    t13 = *((char **)t7);
    t15 = xsi_vlog_unsigned_case_compare(t6, 1, t13, 32);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 904);
    t3 = *((char **)t2);
    t15 = xsi_vlog_unsigned_case_compare(t6, 1, t3, 32);
    if (t15 == 1)
        goto LAB19;

LAB20:
LAB21:    goto LAB14;

LAB17:    xsi_set_current_line(35, ng0);

LAB22:    xsi_set_current_line(37, ng0);
    t7 = ((char*)((ng1)));
    t14 = (t0 + 2816);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2096U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB21;

LAB19:    xsi_set_current_line(44, ng0);

LAB27:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2096U);
    t4 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t4 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t4);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t2) == 0)
        goto LAB28;

LAB30:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB31:    t7 = (t16 + 4);
    t13 = (t4 + 4);
    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    *((unsigned int *)t16) = t18;
    *((unsigned int *)t7) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB33;

LAB32:    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 1U);
    t24 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t24 & 1U);
    memset(t25, 0, 8);
    t14 = (t16 + 4);
    t26 = *((unsigned int *)t14);
    t27 = (~(t26));
    t28 = *((unsigned int *)t16);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t14) != 0)
        goto LAB36;

LAB37:    t32 = (t25 + 4);
    t33 = *((unsigned int *)t25);
    t34 = *((unsigned int *)t32);
    t35 = (t33 || t34);
    if (t35 > 0)
        goto LAB38;

LAB39:    memcpy(t63, t25, 8);

LAB40:    t95 = (t63 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t63);
    t99 = (t98 & t97);
    t100 = (t99 != 0);
    if (t100 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2256U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB58;

LAB59:
LAB60:
LAB56:    goto LAB21;

LAB23:    xsi_set_current_line(39, ng0);

LAB26:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 904);
    t5 = *((char **)t4);
    t4 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    goto LAB25;

LAB28:    *((unsigned int *)t16) = 1;
    goto LAB31;

LAB33:    t19 = *((unsigned int *)t16);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t16) = (t19 | t20);
    t21 = *((unsigned int *)t7);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t7) = (t21 | t22);
    goto LAB32;

LAB34:    *((unsigned int *)t25) = 1;
    goto LAB37;

LAB36:    t31 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB37;

LAB38:    t37 = (t0 + 2416U);
    t38 = *((char **)t37);
    memset(t36, 0, 8);
    t37 = (t38 + 4);
    t39 = *((unsigned int *)t37);
    t40 = (~(t39));
    t41 = *((unsigned int *)t38);
    t42 = (t41 & t40);
    t43 = (t42 & 1U);
    if (t43 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t37) == 0)
        goto LAB41;

LAB43:    t44 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t44) = 1;

LAB44:    t45 = (t36 + 4);
    t46 = (t38 + 4);
    t47 = *((unsigned int *)t38);
    t48 = (~(t47));
    *((unsigned int *)t36) = t48;
    *((unsigned int *)t45) = 0;
    if (*((unsigned int *)t46) != 0)
        goto LAB46;

LAB45:    t53 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t53 & 1U);
    t54 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t54 & 1U);
    memset(t55, 0, 8);
    t56 = (t36 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t36);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t56) != 0)
        goto LAB49;

LAB50:    t64 = *((unsigned int *)t25);
    t65 = *((unsigned int *)t55);
    t66 = (t64 & t65);
    *((unsigned int *)t63) = t66;
    t67 = (t25 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB40;

LAB41:    *((unsigned int *)t36) = 1;
    goto LAB44;

LAB46:    t49 = *((unsigned int *)t36);
    t50 = *((unsigned int *)t46);
    *((unsigned int *)t36) = (t49 | t50);
    t51 = *((unsigned int *)t45);
    t52 = *((unsigned int *)t46);
    *((unsigned int *)t45) = (t51 | t52);
    goto LAB45;

LAB47:    *((unsigned int *)t55) = 1;
    goto LAB50;

LAB49:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB50;

LAB51:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t25 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t25);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t55);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t87 = (t80 & t82);
    t88 = (t84 & t86);
    t89 = (~(t87));
    t90 = (~(t88));
    t91 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t91 & t89);
    t92 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t92 & t90);
    t93 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t93 & t89);
    t94 = *((unsigned int *)t63);
    *((unsigned int *)t63) = (t94 & t90);
    goto LAB53;

LAB54:    xsi_set_current_line(46, ng0);

LAB57:    xsi_set_current_line(47, ng0);
    t101 = (t0 + 768);
    t102 = *((char **)t101);
    t101 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t101, t102, 0, 0, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2976);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB56;

LAB58:    xsi_set_current_line(51, ng0);

LAB61:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 768);
    t5 = *((char **)t4);
    t4 = (t0 + 3136);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2816);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB60;

}


extern void work_m_00000000002243314862_1784716329_init()
{
	static char *pe[] = {(void *)Always_23_0};
	xsi_register_didat("work_m_00000000002243314862_1784716329", "isim/dot_dash_tb_isim_beh.exe.sim/work/m_00000000002243314862_1784716329.didat");
	xsi_register_executes(pe);
}
