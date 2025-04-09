# linux-configs
this are my personal configs so use at own risk

# sysctl.d
```
# BASIC KERNEL SETTINGS
kernel.sysrq = 1                # Enable emergency system requests.
kernel.kexec_load_disabled = 1  # Prevent loading a new kernel without reboot.
kernel.kptr_restrict = 2        # Hide kernel pointers from non-privileged users.
kernel.bootloader_version = 0   # Do not report the bootloader version.
kernel.cad_pid = 0              # Disable special handling for Ctrl+Alt+Del.
kernel.unprivileged_userns_clone = 1  # Allow unprivileged user namespaces.

# PANIC AND WATCHDOG SETTINGS
kernel.unknown_nmi_panic = 0         # Do not panic on unknown NMIs.
kernel.panic = 0                     # Prevent automatic kernel panic.
kernel.panic_on_io_nmi = 0           # Do not panic on I/O NMIs.
kernel.panic_on_oops = 0             # Do not panic on kernel oops.
kernel.panic_on_rcu_stall = 0        # Do not panic on RCU stalls.
kernel.panic_on_unrecovered_nmi = 0  # Do not panic on unrecovered NMIs.
kernel.panic_on_warn = 0             # Do not panic on warnings.
kernel.panic_print = 0               # Do not print detailed panic info.
kernel.nmi_watchdog = 0              # Disable the NMI watchdog.
kernel.hardlockup_all_cpu_backtrace = 0   # Do not backtrace all CPUs on hard lockup.
kernel.hung_task_all_cpu_backtrace = 0      # Disable hung task backtraces.
kernel.hung_task_check_interval_secs = 0    # Disable periodic hung task checks.
kernel.hung_task_panic = 0                # Do not panic on hung tasks.
kernel.softlockup_all_cpu_backtrace = 0   # Disable soft lockup backtracing.
kernel.watchdog = 0                      # Disable the kernel watchdog.
kernel.soft_watchdog = 0                 # Disable soft watchdog monitoring.

# MEMORY MANAGEMENT
vm.overcommit_memory = 1       # Always allow memory overcommitment.
vm.overcommit_kbytes = 0        # No explicit limit on overcommitted memory.
vm.nr_overcommit_hugepages = 0  # No special huge pages allocation.
vm.swappiness = 180             # Aggressive swapping.
vm.vfs_cache_pressure = 1       # Keep inode/dentry cache usage low.
vm.dirty_bytes = 268435456      # 256 MB maximum dirty memory before writeback.
vm.page-cluster = 0             # Minimal page grouping for paging I/O.
vm.dirty_background_bytes = 67108864  # Start background writeout at 64 MB.
vm.dirty_expire_centisecs = 2500      # Dirty pages expire after 25 seconds.
vm.dirty_writeback_centisecs = 1500     # Writeback interval of 15 seconds.
vm.laptop_mode = 0              # Disable laptop mode (no batching of disk writes).
vm.legacy_va_layout = 0         # Use modern virtual address layout.
vm.memfd_noexec = 0             # Allow exec from memfd objects.
vm.oom_kill_allocating_task = 1 # Kill task responsible for OOM.
vm.panic_on_oom = 0             # Do not panic on out-of-memory.
vm.percpu_pagelist_high_fraction = 0  # Minimal extra per-CPU paging lists.
vm.compact_unevictable_allowed = 1    # Allow compaction of normally unevictable pages.
vm.memory_failure_recovery = 1        # Enable memory failure recovery.
vm.oom_dump_tasks = 0           # Do not dump task info on OOM.
vm.max_map_count = 2147483642    # Very high limit for memory map areas.
vm.watermark_boost_factor = 0    # No boost for allocation watermarks.
vm.watermark_scale_factor = 125  # Scale factor for watermark calculations.

# FILESYSTEM
fs.inotify.max_user_watches = 524288  # Increase max inotify watches.
fs.file-max = 2097152                 # Set maximum system-wide file descriptors.
fs.leases-enable = 0                  # Disable file leases to reduce overhead.

# DEBUG & TRACING
abi.vsyscall32 = 0              # Disable legacy 32-bit vsyscall interface.
debug.kprobes-optimization = 0  # Disable kprobes optimization.
kernel.ftrace_enabled = 0       # Turn off function tracing.
kernel.ftrace_dump_on_oops = 0  # Do not dump ftrace on errors.
debug.exception-trace = 0       # Disable detailed exception tracing.
kernel.stack_tracer_enabled = 0 # Disable kernel stack trace support.
kernel.traceoff_on_warning = 0  # Keep tracing active on warnings.
kernel.yama.ptrace_scope = 0    # Allow unrestricted use of ptrace.
dev.tty.ldisc_autoload = 0      # Do not autoload TTY line disciplines.
dev.tty.legacy_tiocsti = 0      # Disable legacy TIOCSTI ioctl.

# SCHEDULER & IO
kernel.sched_itmt_enabled = 1   # Enable improved multi-CPU task management.
kernel.timer_migration = 1        # Allow timers to migrate between CPUs.
kernel.io_delay_type = 0          # No artificial delay for I/O operations.
kernel.io_uring_disabled = 1      # Disable io_uring for async I/O.
kernel.sched_schedstats = 0       # Disable scheduler statistics collection.

# NETWORK
net.core.somaxconn = 8192            # Increase pending connections queue.
net.ipv4.tcp_fastopen = 3            # Enable TCP Fast Open.
net.ipv4.tcp_congestion_control = bbr  # Use BBR congestion control.
net.ipv4.tcp_ecn = 1                 # Enable Explicit Congestion Notification.
net.ipv4.tcp_timestamps = 0          # Disable TCP timestamps.
net.core.netdev_max_backlog = 4096   # Increase network device backlog.
net.ipv4.tcp_slow_start_after_idle = 0  # Disable slow start after idle.
net.ipv4.tcp_rfc1337 = 1             # Enable RFC 1337 handling.
net.ipv4.tcp_low_latency = 1         # Optimize TCP for low latency.
net.ipv4.tcp_max_syn_backlog = 10240 # Increase maximum SYN backlog.
net.ipv6.conf.all.disable_ipv6 = 1     # Disable IPv6 on all interfaces.
net.ipv6.conf.default.disable_ipv6 = 1  # Disable IPv6 by default on new interfaces.
net.ipv4.conf.all.log_martians = 0       # Do not log packets from spoofed addresses.
```

# kernel parameters 
```
intel_pstate=active kernel.split_lock_mitigate=0 lpj=11392000 split_lock_detect=off loglevel=0 udev.log_level=0 console=tty2 vt.global_cursor_default=0 cryptomgr.notests noaudit nowatchdog nosoftlockup audit=0 usbcore.autosuspend=-1 raid=noautodetect pci=pcie_bus_perf no_timer_check iomem=relaxed nohz_full
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
COMMON_FLAGS="-O3 -march=alderlake -mabm -mno-cldemote -mno-kl -mno-pconfig -mno-sgx -mno-widekl -mshstk --param=l1-cache-line-size=64 --param=l1-cache-size=48 --param=l2-cache-size=33792 -pipe -flto=auto -fgraphite-identity -floop-nest-optimize -fdevirtualize-at-ltrans -fipa-pta -fno-semantic-interposition"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"
FCFLAGS="${COMMON_FLAGS}"
FFLAGS="${COMMON_FLAGS}"
MAKEOPTS="-j24 -l25"

CGO_CFLAGS="${COMMON_FLAGS}"
CGO_CXXFLAGS="${COMMON_FLAGS}"
CGO_FFLAGS="${COMMON_FLAGS}"
GCO_FCFLAGS="${COMMON_FLAGS}"
CGO_LDFLAGS="${LDFLAGS}"

RUSTFLAGS="-C target-cpu=native -C opt-level=3 -C strip=symbols"

GOOS="linux"
GOARCH="amd64"
GOAMD64="v3"

CPU_FLAGS_X96="aes avx avx2 f16c fma3 mmx mmxext pclmul popcnt rdrand sha sse sse2 sse3 sse4_1 sse4_2 ssse3 vpclmulqdq"

USE="strip kernel-open pgo host-only graphite lto wifi iwd nvidia -wayland -kde -gnome -debug -bluetooth -cups -ipv6 -telemetry -systemd -audit -jack -test -doc -apparmor -dist-kernel -samba -scanner -secureboot -smartcard -xinerama -accessibility -examples -static-libs "
ACCEPT_LICENSE="*"

VIDEO_CARDS="nvidia"
INPUT_DEVICES="libinput"
# NOTE: This stage was built with the bindist USE flag enabled

MICROCODE_SIGNATURES="-s 0x000b0671"

# This sets the language of build output to English.
# Please keep this setting intact when reporting bugs.
LC_MESSAGES=C.utf8
GENTOO_MIRRORS="http://tux.rainside.sk/gentoo/ \
    ftp://tux.rainside.sk/gentoo/"
GRUB_PLATFORMS="efi-64"
```
