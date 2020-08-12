@2
M=0 //Reset output; maybe not necessary
@0
D=M
@end
D; JEQ
@1
D=M
@end
D; JEQ // If either operand is 0 jump to end
D=0
(start)
    @2
    D=M
    @0
    D=D+M
    @2
    M=D
    @1
    M=M-1
    D=M
    @start
    D; JGT
(end)
