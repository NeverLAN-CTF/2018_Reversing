# Name
The Curse of the Hex    

# Value
100 

# Description
Someone put a curse, or was it a hex, on the Krusty Krab. Clear the curse.

# Hints
-----------------------------------------------------------------

## Hint 1
Who put the curse on the Kursty Krab? (lower case, no spaces)

## Hint 2
Find the curse and give the name

# Flag
`flag{y0u_th1nk_Im_g0nna_w4ste_g0od_sp3lls_on_a_b0ttom-fe3der_l1ke_u?}`

# Solution

```
1) Debug the app w/ gdb or your favorite tool
    a) patch the binary for an extra 10 points
    b) must submit binary to gr3yR0n1n for review to get 10 points?
2) Find the curse method()
3) Pass madamehagfish (no spaces)
4) cipher xor'd w/ key and output flag
Note: For binary test: gcc -D DEBUG krusty_krab.c -o krusty_krab

Breakpoint 2, 0x0000555555554875 in main ()
gdb-peda$ call curse("madamehagfish")
madamehagfishmadamehagfishmadamehagfishmadamehagfishmadamehagfishmada
flag{y0u_th1nk_Im_g0nna_w4ste_g0od_sp3lls_on_a_b0ttom-fe3der_l1ke_u?}

```
