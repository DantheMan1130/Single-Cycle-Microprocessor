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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002354223209_4183398931_init();
    work_m_00000000000994960773_0008057221_init();
    work_m_00000000003564069726_3711313583_init();
    work_m_00000000000305867227_1957175458_init();
    work_m_00000000002276077950_2138213552_init();
    work_m_00000000001626900682_3674772129_init();
    work_m_00000000000695983178_0886308060_init();
    work_m_00000000001014666945_2182486056_init();
    work_m_00000000003199525047_0967961054_init();
    work_m_00000000002834695306_0573104153_init();
    work_m_00000000002512744784_2461264495_init();
    work_m_00000000001377447714_2893305322_init();
    work_m_00000000003680655973_3081859917_init();
    work_m_00000000000717789194_1938225339_init();
    work_m_00000000003593243759_2231421726_init();
    work_m_00000000002896360554_0872821425_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002896360554_0872821425");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}