
# start as root
openocd -f interface/flyswatter.cfg -f mydragonite.cfg -f init.cfg -c telnet_port 4444

openocd -f interface/flyswatter.cfg -mydragonite.cfg -f init.cfg -c "init; reset" telnet_port 4444

# connect to openocd from another terminal
telnet localhost 4444

# dump reg
reg

# halt openocd
halt

# load image
> load_image "hello_world/my.elf" 0
1036 bytes written at address 0x00008000
284 bytes written at address 0x00010f0c
downloaded 1320 bytes in 0.135020s (9.547 KiB/s)

# continue
continue

# list breakpoints
> bp
IVA breakpoint: 0x00000000, 0x4, 1, 0x04
IVA breakpoint: 0x000007d0, 0x4, 1, 0x09
IVA breakpoint: 0x01312d00, 0x4, 1, 0x06
IVA breakpoint: 0x77359400, 0x4, 0, 0x0F
IVA breakpoint: 0x001e8480, 0x4, 0, 0x0F
IVA breakpoint: 0x00030d40, 0x4, 1, 0x0D
IVA breakpoint: 0x00004e20, 0x4, 1, 0x0A
IVA breakpoint: 0x00000004, 0x4, 1, 0x07
IVA breakpoint: 0x00000008, 0x4, 1, 0x00
IVA breakpoint: 0x0000000c, 0x4, 1, 0x0F

# remove breakpoint
rbp 0x00030d40

# list breakpoints again and you won't see it listed
bp

# download arm-none-eabi-gdb

Download and install Code Sourcery to install arm-none-eabi-gdb

Add /path/to/code/sourcery/bin to your path.

# gdbinit to start gdb

# Start gdb in the same directory as your files.
> arm-none-eabi-gdb

# load symbol table for program
(gdb)  file "hello_world/my.elf"

# possibly helpful
poll on
reset_config trst_only combined
reset_config trst_and_srst combined
