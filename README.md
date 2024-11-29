# linux-configs
this are my personal configs so use at own risk

# sysctl.d
```
# Memory management settings
vm.overcommit_memory=1
# Controls the memory overcommit mode.
# 0: heuristic (default), 1: always allow, 2: don't allow overcommit

vm.overcommit_kbytes=0
# Specifies a limit in bytes for the amount of memory that can be overcommitted.
# 0 means no limit.

vm.nr_overcommit_hugepages=0
# Sets the number of Huge Pages that can be allocated.
# 0 means no special allocation for Huge Pages.

vm.swappiness=180
# Determines the tendency of the kernel to swap out memory pages.

vm.vfs_cache_pressure=20
# Controls the tendency of the kernel to reclaim the memory used for caching of directory and inode objects.
# Higher values increase the tendency to reclaim, while lower values decrease it.

vm.dirty_bytes=268435456
# Sets the maximum amount of dirty memory (in bytes) allowed before the kernel starts writing it back to disk.

vm.page-cluster=1
# Specifies the number of pages that are read or written at a time during paging. 
# A lower value means more frequent but smaller I/O operations.

vm.dirty_background_bytes=134217728
# Sets the threshold for background writes. When the amount of dirty memory exceeds this value, the kernel starts writing it.

vm.dirty_expire_centisecs=2500
# Specifies the time in centiseconds (25 seconds) before old dirty pages are written to disk.

vm.dirty_writeback_centisecs=1500
# Sets the time in centiseconds (15 seconds) before a dirty page is written to the disk once it becomes dirty.

kernel.nmi_watchdog=0
# Disables the non-maskable interrupt watchdog which can help detect hung processes but may add overhead.

kernel.unprivileged_userns_clone=1
# Allows unprivileged users to use user namespaces; useful for containerization without root.

kernel.printk = 0 0 0 0
# Controls the console logging level; lower values provide less logs, higher values more.

kernel.kptr_restrict=2
# Restricts access to kernel pointers based on user privileges to enhance security.

kernel.kexec_load_disabled=1
# Disables kexec_load, which allows swapping the running kernel with another kernel; can be a security measure.

fs.inotify.max_user_watches=524288
# Increases the maximum number of inotify instances allowed for a user.
# Inotify monitors file system changes.

fs.file-max=2097152
# Sets the maximum number of open file descriptors for the entire system.

fs.xfs.xfssyncd_centisecs=10000
# Specifies the frequency at which XFS synchronizes dirty data to disk (every 100 seconds).

vm.oom_dump_tasks=0
# Suppresses the dump of process information when the Out-Of-Memory (OOM) killer is invoked.

vm.oom_kill_allocating_task=1
# Configures OOM killer to terminate the task attempting to allocate memory when memory is exhausted.

debug.kprobes-optimization=0
# Disables optimization of kprobes (kernel probes) which are used for debugging and tracing.

kernel.hardlockup_all_cpu_backtrace=0
# Disables backtracing of all CPUs when a hard lockup is detected; useful for debugging.

kernel.oops_all_cpu_backtrace=0
# Disables backtracing of all CPUs when an oops (kernel error) is detected.

kernel.stack_tracer_enabled=0
# Disables stack tracing support for debugging kernel stack traces.

kernel.traceoff_on_warning=0
# Prevents immediate disabling of tracing when a warning occurs.

vm.max_map_count=2147483642
# Sets the maximum number of memory map areas a process may have; allows applications that create many mappings.

kernel.hung_task_all_cpu_backtrace=0
# Disables backtrace logging for all CPUs when a hung task is detected.

kernel.hung_task_check_interval_secs=0
# Disables periodic checks for hung tasks.

kernel.hung_task_panic=0
# Prevents the system from panicking when a hung task is detected.

kernel.softlockup_all_cpu_backtrace=0
# Disables backtrace logging for all CPUs when a soft lockup is detected.

kernel.ftrace_enabled=0
# Disables function tracing (ftrace) which is a performance-analysis tool.

kernel.soft_watchdog=0
# Disables soft watchdogs, which help to keep track of soft lock-ups in the kernel.

kernel.watchdog=0
# Disables the kernel watchdog feature.

debug.exception-trace=0
# Disables exception tracing for debugging purposes.

abi.vsyscall32=0
# Disables the use of the vsyscall interface for 32-bit binaries on modern 64-bit systems.

kernel.ftrace_dump_on_oops=0
# Prevents dumping the ftrace buffer on kernel oops (error occurrence).

kernel.yama.ptrace_scope=0
# Sets the ptrace scope for processes, allowing all processes to trace each other (useful for debugging).

fs.leases-enable=0
# Disables file leases, which can provide coherence in a multi-process environment.

kernel.io_delay_type=0
# Sets the I/O delay type (0 for no delay), which can impact performance.

kernel.io_uring_disabled=1
# Disables the io_uring interface for asynchronous I/O; can be useful if not utilized in workloads.

vm.watermark_boost_factor=0
# Sets the boost factor for memory allocation attempts; higher values increase the chance of allocation success.

vm.watermark_scale_factor=125
# Adjusts aspects of the memory allocation algorithm related to page allocation success under pressure.

# NETWORK settings
net.core.somaxconn=8192
# Sets the maximum number of incoming connections that can be queued for acceptance by a socket.

net.ipv4.tcp_fastopen=3
# Enables TCP Fast Open, allowing data to be sent during the TCP handshake; optimized for latency.

net.ipv4.tcp_congestion_control=bbr
# Sets the TCP congestion control algorithm to BBR for optimized throughput and latency.

net.ipv4.tcp_ecn=1
# Enables Explicit Congestion Notification (ECN) for IP packets to react to network congestion.

net.ipv4.tcp_timestamps=0
# Disables TCP timestamps for outgoing packets to reduce some types of packet overhead.

net.core.netdev_max_backlog=16384
# Sets the maximum number of packets that can be queued on the interface in case of high network traffic.

net.ipv4.tcp_slow_start_after_idle=0
# Disables the TCP slow start mechanism after an idle period; allows the sender to ramp up quickly.

net.ipv4.tcp_rfc1337=1
# Enables RFC 1337 compliance which handles a specific issue in TCP packet handling.

net.ipv4.tcp_low_latency=1
# Enables a low-latency mode for TCP connections, optimizing for latency-sensitive applications.

net.ipv4.tcp_max_syn_backlog=10240
# Increases the maximum number of half-open connections queued for acceptance, helpful during SYN flood attacks.

# Disable scheduler statistics collection for improved performance.
# Setting kernel.sched_schedstats to 0 turns off the gathering of scheduling-related statistics,
# which can reduce overhead and improve performance in workloads where this data is not needed.
kernel.sched_schedstats=0
```

# kernel parameters 
```
kernel.split_lock_mitigate=0 split_lock_detect=off loglevel=0 udev.log_level=0 console=tty2 vt.global_cursor_default=0 cryptomgr.notests noaudit nowatchdog nosoftlockup audit=0 usbcore.autosuspend=-1 raid=noautodetect pci=pcie_bus_perf
```

# dxvk.conf
```
# no fake device

# sudo lspci -nn | grep VGA


dxgi.customVendorId = 10de

dxgi.customDeviceId = 2705

d3d9.customVendorId = 10de

d3d9.customDeviceId = 2705

dxgi.customDeviceDesc = "GeForce RTX 4070 Ti SUPER"

d3d9.customDeviceDesc = "GeForce RTX 4070 Ti SUPER"


dxgi.nvapiHack = false

dxgi.hideNvidiaGpu = False


# latency stuff

dxgi.syncInterval = 0

d3d9.presentInterval = 0

dxgi.maxFrameLatency = 1

d3d9.maxFrameLatency = 1
```
