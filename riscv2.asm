.data 
	lower:	.word 2
	upper:	.word 13
.globl main
.text

main:
	lw a0,lower
	lw a1,upper
	li a3,2
	li a4 0
	rem t0,a0,a3
	sw t0 ,0(sp) 
	sw a4,4(sp)
	flw ft0, 0(sp)
	flw ft1 4(sp)
	feq.s t1,f1,f0
	beqz t1 odd
even:
	mv t0,a0
	addi a0,a0,1
	mv t1,a0
	beq a0,a1 end
	addi a0,a0,1
	j even
odd:
	beq a0,a1 end
	mv t1,a0
	addi a0,a0,1
	mv t0,a0
	beq a0,a1 end
	addi a0,a0,1
	
	j odd
end:
	
	
	 
	
	