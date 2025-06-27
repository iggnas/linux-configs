# linux-configs
this are my personal configs so use at own risk

# sysctl.d
```
# BASIC KERNEL SETTINGS
kernel.sysrq = 1                # Enable sysrq (emergency requests)
kernel.kexec_load_disabled = 1  # Prevent loading a new kernel without reboot
kernel.kptr_restrict = 2        # Hide kernel pointers from non-privileged users
kernel.bootloader_version = 0   # Do not report bootloader version
kernel.cad_pid = 0              # Disable special handling for Ctrl+Alt+Del
kernel.unprivileged_userns_clone = 1  # Allow unprivileged user namespaces

# PANIC AND WATCHDOG SETTINGS
kernel.unknown_nmi_panic = 0         # Do not panic on unknown NMIs
kernel.panic = 0                     # Prevent automatic kernel panic
kernel.panic_on_io_nmi = 0           # Do not panic on I/O NMIs
kernel.panic_on_oops = 0             # Do not panic on kernel oops
kernel.panic_on_rcu_stall = 0        # Do not panic on RCU stalls
kernel.panic_on_unrecovered_nmi = 0  # Do not panic on unrecovered NMIs
kernel.panic_on_warn = 0             # Do not panic on warnings
kernel.panic_print = 0               # Do not print detailed panic info
kernel.nmi_watchdog = 0              # Disable NMI watchdog
kernel.hardlockup_all_cpu_backtrace = 0   # No backtrace on hard lockup
kernel.hung_task_all_cpu_backtrace = 0      # No backtrace on hung tasks
kernel.hung_task_check_interval_secs = 0    # No hung task checks
kernel.hung_task_panic = 0                # Do not panic on hung tasks
kernel.softlockup_all_cpu_backtrace = 0   # No backtrace on soft lockups
kernel.watchdog = 0                      # Disable kernel watchdog
kernel.soft_watchdog = 0                 # Disable soft watchdog

# MEMORY MANAGEMENT
vm.overcommit_memory = 1       # Always allow memory overcommitment
vm.overcommit_kbytes = 0        # No limit on overcommitted memory
vm.nr_overcommit_hugepages = 0  # Do not allocate huge pages specially
vm.swappiness = 180             # Set aggressive swapping
vm.vfs_cache_pressure = 1       # Low cache pressure
vm.dirty_bytes = 268435456      # 256 MB max dirty memory
vm.page-cluster = 0             # Minimal page clustering for I/O
vm.dirty_background_bytes = 67108864  # Start background writeout at 64 MB
vm.dirty_expire_centisecs = 2500      # Dirty pages expire after 25 seconds
vm.dirty_writeback_centisecs = 1500     # Writeback every 15 seconds
vm.laptop_mode = 0              # Disable laptop mode
vm.legacy_va_layout = 0         # Use modern virtual address layout
vm.memfd_noexec = 0             # Allow exec from memfd objects
vm.oom_kill_allocating_task = 1 # Kill task causing OOM
vm.panic_on_oom = 0             # Do not panic on out-of-memory
vm.percpu_pagelist_high_fraction = 0  # Minimal per-CPU paging lists
vm.compact_unevictable_allowed = 1    # Allow compaction of unevictable pages
vm.memory_failure_recovery = 1        # Enable memory failure recovery
vm.oom_dump_tasks = 0           # Do not dump task info on OOM
vm.max_map_count = 2147483642    # Very high limit for memory map areas
vm.watermark_boost_factor = 0    # No boost for allocation watermarks
vm.watermark_scale_factor = 125  # Set watermark scale factor
vm.hugetlb_optimize_vmemmap = 0  # Disable huge page vmemmap optimization
vm.hugetlb_shm_group = 0         # No special hugepage shared memory group
vm.nr_hugepages_mempolicy = 0    # Default hugepage policy
vm.unprivileged_userfaultfd = 1 # Allow unprivileged userfaultfd
vm.workingset_protection = 1

# FILESYSTEM
fs.inotify.max_user_watches = 524288  # Increase max inotify watches
fs.file-max = 2097152                 # Set maximum file descriptors
fs.leases-enable = 0                  # Disable file leases
fs.protected_hardlinks = 0            # Disable hardlink protection
fs.protected_regular = 0              # Disable regular file protection
fs.protected_symlinks = 0             # Disable symlink protection
fs.protected_fifos = 0                # Disable FIFO protection

# DEBUG & TRACING
abi.vsyscall32 = 0              # Disable legacy 32-bit vsyscall
debug.kprobes-optimization = 0  # Disable kprobes optimization
kernel.ftrace_enabled = 0       # Disable function tracing
kernel.ftrace_dump_on_oops = 0  # Do not dump ftrace on oops
debug.exception-trace = 0       # Disable detailed exception tracing
kernel.stack_tracer_enabled = 0 # Disable stack tracer
kernel.traceoff_on_warning = 0  # Keep tracing active on warnings
kernel.yama.ptrace_scope = 0    # Allow unrestricted ptrace use
dev.tty.ldisc_autoload = 0      # Do not autoload TTY line disciplines
dev.tty.legacy_tiocsti = 0      # Disable legacy TIOCSTI ioctl

# SCHEDULER & IO
kernel.sched_itmt_enabled = 1   # Enable improved multi-CPU scheduling
kernel.timer_migration = 1      # Allow timer migration between CPUs
kernel.io_delay_type = 0        # No artificial I/O delay
kernel.io_uring_disabled = 1    # Disable io_uring
kernel.sched_schedstats = 0     # Disable scheduler statistics
kernel.acpi_video_flags = 0      # No ACPI video flags

# NETWORK
net.core.somaxconn = 8192            # Increase pending connections queue
net.ipv4.tcp_fastopen = 3            # Enable TCP Fast Open
net.ipv4.tcp_congestion_control = bbr  # Use BBR congestion control
net.ipv4.tcp_timestamps = 0          # Disable TCP timestamps
net.core.netdev_max_backlog = 4096   # Increase network device backlog
net.ipv4.tcp_max_syn_backlog = 10240 # Increase SYN backlog
net.ipv6.conf.all.disable_ipv6 = 1     # Disable IPv6 on all interfaces
net.ipv6.conf.default.disable_ipv6 = 1  # Disable IPv6 by default for new interfaces
net.ipv4.conf.all.log_martians = 0       # Do not log martian packets
```

# kernel parameters 
```
quiet splash intel_pstate=active kernel.split_lock_mitigate=0 split_lock_detect=off loglevel=0 udev.log_level=0 cryptomgr.notests noaudit nowatchdog nosoftlockup audit=0 usbcore.autosuspend=-1 pci=pcie_bus_perf no_timer_check iomem=relaxed hpet=force nohz_full
```

# dxvk.conf
```
dxgi.customVendorId = 10de

dxgi.customDeviceId = 2705

d3d9.customVendorId = 10de

d3d9.customDeviceId = 2705

dxgi.customDeviceDesc = "GeForce RTX 4070 Ti SUPER"

d3d9.customDeviceDesc = "GeForce RTX 4070 Ti SUPER"


dxvk.deviceFilter = "NVIDIA"


dxgi.nvapiHack = false

dxgi.hideNvidiaGpu = False


# latency stuff

dxgi.syncInterval = 0

d3d9.presentInterval = 0
```

# make.conf
```
# These settings were set by the catalyst build script that automatically
# built this stage.
# Please consult /usr/share/portage/config/make.conf.example for a more
# detailed example.
COMMON_FLAGS="-O3 -march=raptorlake -mabm -mno-cldemote -mno-kl -mno-pconfig -mno-sgx -mno-widekl -mshstk --param=l1-cache-line-size=64 --param=l1-cache-size=32 --param=l2-cache-size=33792 -pipe -flto=auto -fdevirtualize-at-ltrans -fipa-pta -fno-semantic-interposition -fomit-frame-pointer -fgraphite-identity -floop-nest-optimize -floop-parallelize-all -ftree-parallelize-loops=4"
LDFLAGS="-Wl,-O2 -Wl,--as-needed"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"
MAKEOPTS="-j14 -l28"
EMERGE_DEFAULt_OPTS="--jobs 3 --load-average 28"

CGO_CFLAGS="${COMMON_FLAGS}"
CGO_CXXFLAGS="${COMMON_FLAGS}"
CGO_FFLAGS="${COMMON_FLAGS}"
CGO_FCFLAGS="${COMMON_FLAGS}"
CGO_LDFLAGS="${LDFLAGS}"

RUSTFLAGS="-C target-cpu=native -C opt-level=3 -C strip=symbols"

ABI_X86="64"

GOOS="linux"
GOARCH="amd64"
GOAMD64="v3"

CPU_FLAGS_X86="aes avx avx2 f16c fma3 mmx mmxext pclmul popcnt rdrand sha sse sse2 sse3 sse4_1 sse4_2 ssse3 vpclmulqdq"

USE="host-only multilib ithreads kernel-open lto nvidia openmp pgo strip threads graphite uefi64 vdpau wifi -accessibility -aalib -afs -apache2 -apparmor -aqua -atm -big-endian -bindist -bluetooth -branding -cdb -cgi -cjk -connman -coreaudio -cups -debug -dedicated -dist-kernel -djvu -doc -eds -emacs -emboss -examples -fastcgi -fbcon -firebird -freetds -ggi -gnome -gnuplot -gphoto2 -gps -graphviz -gsl -gsm -hddtemp -ibm -imap -infiniband -ios -ipod -ipv6 -jack -kde -lcms -maildir -mbox -mng -mtp -pcmcia -pop3 -ppds -qmail-spp -samba -scanner -secureboot -selinux -sdl -smartcard -smtp -speech -steamruntime -systemd -telemetry -test -wayland -xinerama -xwayland"
ACCEPT_LICENSE="*"

VIDEO_CARDS="nvidia"
INPUT_DEVICES="libinput"
# NOTE: This stage was built with the bindist USE flag enabled

MICROCODE_SIGNATURES="-s 0x000b0671"

# This sets the language of build output to English.
# Please keep this setting intact when reporting bugs.
LC_MESSAGES=C.utf8
GRUB_PLATFORMS="efi-64"
GENTOO_MIRRORS="http://tux.rainside.sk/gentoo/ \
    ftp://tux.rainside.sk/gentoo/"
```
