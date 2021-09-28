.data 
	input:	.word 10
.globl main
.text
	
main:
	lw a0,input
loop:
	beq x0,a0 end
	addi a0,a0,-1
	j loop
end:
	