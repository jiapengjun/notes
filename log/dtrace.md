# Files opened by process. Very useful when reversing:
dtrace -n 'syscall::open*:entry { printf("%s %s", execname, copyinstr(arg0)); }'

# Syscall count by program:
dtrace -n 'syscall:::entry { @num[execname] = count(); }'

# Syscall count by syscall:
dtrace -n 'syscall:::entry { @num[probefunc] = count(); }'

# Syscall count by PID:
dtrace -n 'syscall:::entry { @num[pid,execname] = count(); }'

# Read bytes by process:
dtrace -n 'syscall::read:entry { @bytes[execname] = sum(arg0); }'

# Periodic breakdown of written bytes by process:
dtrace -n 'syscall::write:* { @bytes[execname] = sum(arg0); } tick-5sec { printa(@bytes); trunc(@bytes); }'

# Read size distribution by process:
dtrace -n 'syscall::read:entry { @dist[execname] = quantize(arg0); }'

# Write size distribution by process:
dtrace -n 'syscall::write:entry { @dist[execname] = quantize(arg0); }'

# Disk size (in blocks) by process:
dtrace -n 'io:::start { printf("%d %s %d", pid, execname, args[0]->b_bcount); }'

# Pages paged in by process:
dtrace -n 'vminfo::vm_fault_enter:pgin { @pg[execname] = sum(arg0); }'

# Minor faults by process:
dtrace -n 'vminfo:::as_fault { @mem[execname] = sum(arg0); }'

# Interrupts by CPU:
dtrace -n 'sdt:::interrupt-start { @num[cpu] = count(); }'

# New processes with arguments and time:
dtrace -qn 'syscall::exec*:return { printf("%Y %s\n",walltimestamp,curpsinfo->pr_psargs); }'

# Successful signal details:
dtrace -n 'proc:::signal-send /pid/ { printf("%s -%d %d",execname,args[2],args[1]->pr_pid); }'

# System call breakdown for the process with PID 31337:
dtrace -n syscall:::entry'/pid == 31337/{ @syscalls[probefunc] = count(); }'

# Tracking memory page faults for process:
dtrace -n 'vminfo:::as_fault { @mem[execname] = sum(arg0); }'

# iOS Intruments-like malloc size distribution plot:
dtrace -n 'pid$target::malloc:entry { @ = quantize(arg0); }' -p PID

# Memory allocation via malloc by stack trace and requested size:
dtrace -n 'pid$target::malloc:entry { @[ustack()] = sum(arg0); }' -p PID

# Rate of disk I/O:
dtrace -n 'io:::start { @io = count(); } tick-1sec { printa("Disk I/Os per second: %@d\n", @io); trunc(@io); }'
