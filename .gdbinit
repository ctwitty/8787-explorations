target remote localhost:3333

monitor poll on
monitor halt
#monitor soft_reset_halt
#monitor reset halt

monitor load_image "hello_world/simplest.elf" 0
load "hello_world/simplest.elf"
file "hello_world/simplest.elf"
