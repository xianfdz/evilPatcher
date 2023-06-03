A = arch
A != ARCH_X86_64 ? dead:next
A = sys_number
A < 0x40000000 ? try : next
A != 0xffffffff ? dead : next
try:
A >= 0x609000 ? dead : next
A == mmap ? dead : next
A == ptrace ? dead : next
A == execve ? dead : next
A == open ? dead : next
A == openat ? dead : next
A == open_by_handle_at ? dead : next
A == socket ? dead : next
A == connect ? dead : next
A == bind ? dead : next
A == listen ? dead : next
A == clone ? dead : next
return ALLOW
dead:
return KILL
