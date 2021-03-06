#!/system/bin/sh
# Copyright (c) 2014-2016, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

enable_trace_events()
{
    # core setting
    echo 55 > /sys/module/msm_rtb/parameters/filter
    echo 1 > /sys/kernel/debug/tracing/tracing_on

    # timer
    echo 1 > /sys/kernel/debug/tracing/events/timer/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/filter
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_cancel/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_expire_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_expire_exit/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_init/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/timer_start/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/tick_stop/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_cancel/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_expire_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_expire_exit/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_init/enable
    echo 1 > /sys/kernel/debug/tracing/events/timer/hrtimer_start/enable
    #enble FTRACE for softirq events
    echo 1 > /sys/kernel/debug/tracing/events/irq/enable
    echo 1 > /sys/kernel/debug/tracing/events/irq/filter
    echo 1 > /sys/kernel/debug/tracing/events/irq/softirq_entry/enable
    echo 1 > /sys/kernel/debug/tracing/events/irq/softirq_exit/enable
    echo 1 > /sys/kernel/debug/tracing/events/irq/softirq_raise/enable
    #enble FTRACE for Workqueue events
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/enable
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/filter
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_activate_work/enable
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_end/enable
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_execute_start/enable
    echo 1 > /sys/kernel/debug/tracing/events/workqueue/workqueue_queue_work/enable
    # schedular
    echo 1 > /sys/kernel/debug/tracing/events/sched/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/filter
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_cpu_hotplug/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_cpu_load/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_enq_deq_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_kthread_stop_ret/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_kthread_stop/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_load_balance/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_migrate_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_pi_setprio/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_exec/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_exit/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_fork/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_free/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_process_wait/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_blocked/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_iowait/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_runtime/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_sleep/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_stat_wait/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_task_load/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_update_history/enable
    # echo 1 > /sys/kernel/debug/tracing/events/sched/sched_update_task_ravg/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wait_task/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_get_busy/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_get_nr_running_avg/enable
    echo 1 > /sys/kernel/debug/tracing/events/sched/sched_reset_all_window_stats/enable
    # sound
    echo 1 > /sys/kernel/debug/tracing/events/asoc/snd_soc_reg_read/enable
    echo 1 > /sys/kernel/debug/tracing/events/asoc/snd_soc_reg_write/enable
    # mdp
    echo 1 > /sys/kernel/debug/tracing/events/mdss/mdp_video_underrun_done/enable
    # video
    echo 1 > /sys/kernel/debug/tracing/events/msm_vidc/enable
    # clock
    echo 1 > /sys/kernel/debug/tracing/events/power/clock_set_rate/enable
    # regulator
    echo 1 > /sys/kernel/debug/tracing/events/regulator/enable
    # power
    echo 1 > /sys/kernel/debug/tracing/events/msm_low_power/enable
    #thermal
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_offline/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_core_online/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_pre_frequency_mit/enable
    echo 1 > /sys/kernel/debug/tracing/events/thermal/thermal_post_frequency_mit/enable

    # size
    echo 8192 > /sys/kernel/debug/tracing/buffer_size_kb
}

# Function MSMCOBALT DCC configuration
enable_msm8998_dcc_config()
{
    DCC_PATH="/sys/bus/platform/devices/10b3000.dcc"
    if [ ! -d $DCC_PATH ]; then
        echo "DCC don't exist on this build."
        return
    fi

    echo  0 > $DCC_PATH/enable
    echo cap > $DCC_PATH/func_type
    echo sram > $DCC_PATH/data_sink
    echo  1 > $DCC_PATH/config_reset

    #OSM WDOG
    echo 0x179C1C00 37 > $DCC_PATH/config
    echo 0x179C3C00 37 > $DCC_PATH/config
    #APM
    echo 0x179D0000 1 > $DCC_PATH/config
    echo 0x179D000C 1 > $DCC_PATH/config
    echo 0x179D0018 1 > $DCC_PATH/config
    #L2_SAW4_PMIC_STS
    echo 0x17912C18 1 > $DCC_PATH/config
    echo 0x17812C18 1 > $DCC_PATH/config
    #CPRH_STATUS
    echo 0x179CBAA4 1 > $DCC_PATH/config
    echo 0x179C7AA4 1 > $DCC_PATH/config

    # default configuration
    #SPM registers
    echo 0x17989000 > $DCC_PATH/config
    echo 0x17989C0C > $DCC_PATH/config
    echo 0x17988064 > $DCC_PATH/config
    echo 0x17999000 > $DCC_PATH/config
    echo 0x17999C0C > $DCC_PATH/config
    echo 0x17998064 > $DCC_PATH/config
    echo 0x179A9000 > $DCC_PATH/config
    echo 0x179A9C0C > $DCC_PATH/config
    echo 0x179A8064 > $DCC_PATH/config
    echo 0x179B9000 > $DCC_PATH/config
    echo 0x179B9C0C > $DCC_PATH/config
    echo 0x179B8064 > $DCC_PATH/config
    echo 0x17912000 > $DCC_PATH/config
    echo 0x17912C0C > $DCC_PATH/config
    echo 0x17911210 > $DCC_PATH/config
    echo 0x17911290 > $DCC_PATH/config
    echo 0x17911218 > $DCC_PATH/config
    echo 0x17889000 > $DCC_PATH/config
    echo 0x17889C0C > $DCC_PATH/config
    echo 0x17888064 > $DCC_PATH/config
    echo 0x17899000 > $DCC_PATH/config
    echo 0x17899C0C > $DCC_PATH/config
    echo 0x17898064 > $DCC_PATH/config
    echo 0x178A9000 > $DCC_PATH/config
    echo 0x178A9C0C > $DCC_PATH/config
    echo 0x178A8064 > $DCC_PATH/config
    echo 0x178B9000 > $DCC_PATH/config
    echo 0x178B9C0C > $DCC_PATH/config
    echo 0x178B8064 > $DCC_PATH/config
    echo 0x17812000 > $DCC_PATH/config
    echo 0x17812C0C > $DCC_PATH/config
    echo 0x17811210 > $DCC_PATH/config
    echo 0x17811290 > $DCC_PATH/config
    echo 0x17811218 > $DCC_PATH/config
    echo 0x179D2000 > $DCC_PATH/config
    echo 0x179D2C0C > $DCC_PATH/config
    echo 0x17904008 > $DCC_PATH/config
    echo 0x1790400C > $DCC_PATH/config
    echo 0x17904010 > $DCC_PATH/config
    echo 0x17904014 > $DCC_PATH/config

    echo  1 > $DCC_PATH/enable
}

enable_msm8998_core_hang_config()
{
    CORE_PATH_SILVER="/sys/devices/system/cpu/hang_detect_silver"
    CORE_PATH_GOLD="/sys/devices/system/cpu/hang_detect_gold"
    if [ ! -d $CORE_PATH_SILVER ]; then
        echo "CORE hang does not exist on this build."
        return
    fi

    #select instruction retire as the pmu event
    echo 0x7 > $CORE_PATH_SILVER/pmu_event_sel
    echo 0xA > $CORE_PATH_GOLD/pmu_event_sel

    #set the threshold to around 9 milli-second
    echo 0x2a300 > $CORE_PATH_SILVER/threshold
    echo 0x2a300 > $CORE_PATH_GOLD/threshold

    #To the enable core hang detection
    #echo 0x1 > /sys/devices/system/cpu/hang_detect_silver/enable
    #echo 0x1 > /sys/devices/system/cpu/hang_detect_gold/enable
}

enable_msm8998_osm_wdog_status_config()
{
    echo 1 > /sys/kernel/debug/osm/pwrcl_clk/wdog_trace_enable
    echo 1 > /sys/kernel/debug/osm/perfcl_clk/wdog_trace_enable
}

enable_msm8998_gladiator_hang_config()
{
    GLADIATOR_PATH="/sys/devices/system/cpu/gladiator_hang_detect"
    if [ ! -d $GLADIATOR_PATH ]; then
        echo "Gladiator hang does not exist on this build."
        return
    fi

    #set the threshold to around 9 milli-second
    echo 0x0002a300 > $GLADIATOR_PATH/ace_threshold
    echo 0x0002a300 > $GLADIATOR_PATH/io_threshold
    echo 0x0002a300 > $GLADIATOR_PATH/m1_threshold
    echo 0x0002a300 > $GLADIATOR_PATH/m2_threshold
    echo 0x0002a300 > $GLADIATOR_PATH/pcio_threshold

    #To enable gladiator hang detection
    #echo 0x1 > $GLADIATOR_PATH/ace_enable
    #echo 0x1 > $GLADIATOR_PATH/io_enable
    #echo 0x1 > $GLADIATOR_PATH/m1_enable
    #echo 0x1 > $GLADIATOR_PATH/m2_enable
    #echo 0x1 > $GLADIATOR_PATH/pcio_enable
}

enable_msm8998_core_hang_config
enable_msm8998_gladiator_hang_config
#enable_msm8998_osm_wdog_status_config

enable_trace_events
enable_msm8998_dcc_config
