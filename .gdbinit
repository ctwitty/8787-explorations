target remote localhost:3333


monitor arm7_9 sw_bkpnts enable
#arm7_9 sw_bkpts_enable
monitor poll on
monitor halt
#monitor soft_reset_halt
#monitor reset halt

monitor load_image "hello_world/my.elf" 0
file "hello_world/my.elf"

