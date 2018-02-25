# Name
Turtles All the Way Down

# Value
300 

# Description
Sometimes you need to give a turtle an ARM to help it along its way.

# Hints
-----------------------------------------------------------------

## Hint 1
Encoding is a good transport method for a turtle

## Hint 2


# Flag
`flag{lud!rocks_all_the_way_up!}`

# Solution

```
1) Add ELF 64-bit linux file header back
2) Extract hex strings convert => ascii
3) Convert ascii from base64 => ascii
4) Take ascii schell code output and compile w/ ARM compiler
5) Flag!

notes:
as -mthumb -o flag.o flag.s
ld -o flag flag.o

```
