.data

message1:.asciiz "enter first number:"
message2:.asciiz "enter second number:"
message3:.asciiz "Sum is:"

.text

#Give user message to enter number
li $v0,4
la $a0,message1
syscall

#read user input
li $v0,5
syscall

#store input taken from user into any register
move $t0,$v0

#Give user message to enter number
li $v0,4
la $a0,message2
syscall

#Read user input
li,$v0,5

syscall
#store input taken by user into any register
move $t1,$v0

#add both register in which input was stored
add $t2,$t0,$t1

#display the message of answer
li,$v0,4
la $a0,message3
syscall

#display the answer
li,$v0,1
move $v0,$t2
syscall



