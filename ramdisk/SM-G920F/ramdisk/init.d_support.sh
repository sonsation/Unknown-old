#!/system/bin/sh

on property:sys.boot_completed=1
    start sysinit.sh
    start ksm.sh
    
service sysinit /sbin/sysinit.sh
    class late_start
    user root
    group root
    seclabel u:r:init:s0
    oneshot
    disabled

service ksm /sbin/ksm.sh
    class late_start
    user root
    group root
    seclabel u:r:init:s0
    oneshot
    disabled
