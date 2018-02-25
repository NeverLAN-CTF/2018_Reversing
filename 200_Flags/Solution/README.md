# Name
Where did I put that flag?

# Value
200 

# Description
I must be losing my mind, I know I left it around here somewhere...

# Hints
-----------------------------------------------------------------

## Hint 1
Sometimes you have to debug the application

## Hint 2
Check your memory, maybe you left it there

# Flag
`f146{50m371m35_y0u_h4v3_70_l00k_47_7h3_r361573r5}`

# Solution

```
1) Debug the app w/ gdb or your favorite tool
2) Set a breakpoint at (or just after) the [mov r12, #0x7d] instruction 
3) Copy values from registers [r0 - r12] 
4) Convert hex as ascii of register values for flag 
Note: gcc where_is_the_flag.s -o where_is_the_flag
```
