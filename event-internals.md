
# event proc layout

    +00 | proc head
    +40 | word |
    +5E | half | flags
    +68 | byte | overwritten text speed

# flags

    flag 0 (0x0001) | 
    flag 1 (0x0002) | 
    flag 2 (0x0004) | 
    flag 4 (0x0010) | disables reloading some system graphics at the end of scene
    flag 5 (0x0020) | "slient" skip mode (do not fade to black on skip)
    flag 6 (0x0040) | skip disable
    flag 7 (0x0080) | talk skip disable
    flag 8 (0x0100) | talk fast scroll disable
