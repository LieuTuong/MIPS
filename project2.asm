.data
_day:		.word 0
_month:		.word 0
_year: 		.word 0
TIME1: 		.space 50
TIME2: 		.space 50
TIME3: 		.space 50
TIMEE:	 	.asciiz"01/01/0001"
strTam:		.space 50
TB1:      	.asciiz "\nNhap ngay DAY: "
TB2:      	.asciiz "\nNhap thang MONTH: "
TB3:     	 	.asciiz "\nNhap nam YEAR: "
menu:     .asciiz "\n----------------------------- MENU ---------------------------------"
yc1:      .asciiz "\n\t1. Xuat chuoi TIME theo dinh dang DD/MM/YYYY"
yc2:      .asciiz "\n\t2. Chuyen doi chuoi TIME thanh mot trong cac dinh dang sau: "
yc2a:     .asciiz "\n\t\t\tA. MM/DD/YYYY"
yc2b:     .asciiz "\n\t\t\tB. Month DD, YYYY"
yc2c:     .asciiz "\n\t\t\tC. DD Month, YYYY"
yc3:      .asciiz "\n\t3. Kiem tra nam trong chuoi TIME co phai la nam nhuan khong"
yc4:      .asciiz "\n\t4. Cho biet ngay vua nhap la ngay thu may trong tuan"
yc5:      .asciiz "\n\t5. Cho biet ngay vua nhap la ngay thu may ke tu ngay 1/1/1"
yc6:      .asciiz "\n\t6. Cho biet can chi cua nam vua nhap"
yc7:	.asciiz "\n\t7. Cho biet khoang thoi gian giua chuoi TIME_1 va TIME_2"
yc8:	.asciiz "\n\t8. Cho biet 2 nam nhuan gan nhat voi nam trong chuoi TIME"
yc9:      .asciiz "\n\t9. Doc ghi File"
kc:	.asciiz "\n---------------------------------------------------------------------"

loai:      .asciiz "\nChon (A,B,C): " 
TB4:       .asciiz "\nNhap lua chon: "
TB5:       .asciiz "\nKet qua: "
TB6:	 .asciiz"\nBan co muon tiep tuc (y=1/n=0): "
TBnhapSai: .asciiz "\nNhap khong hop le. Moi nhap lai.\n"
TBNhuan:   .asciiz "Nam nhuan"
TBKoNhuan: .asciiz"Nam khong nhuan"

yeuCau:    .word c1,c2,c3,c4,c5,c6,c7,c8,c9
MonthTable:.word 1, 4, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5
Century:   .word 0, 5, 3, 1

thg:     .word thg1, thg2 ,thg3, thg4, thg5, thg6, thg7, thg8, thg9, thg10, thg11, thg12
thang1:  .asciiz "January"
thang2:  .asciiz "February"
thang3:  .asciiz "March"
thang4:  .asciiz "April"
thang5:  .asciiz "May"
thang6:  .asciiz "June"
thang7:  .asciiz "July"
thang8:  .asciiz "August"
thang9:  .asciiz "September"
thang10: .asciiz "October"
thang11: .asciiz "November"
thang12: .asciiz "December"

sun:      .asciiz "Sunday"
mon:      .asciiz "Monday"
tue:      .asciiz "Tuesday"
wed:      .asciiz "Wednesday"
thu:      .asciiz "Thursday"
fri:      .asciiz "Friday"
sat:      .asciiz "Saturday"


can:      .word giap, at, binh, dinh, mau, ky, canh, tan ,nham, quy
Giap:     .asciiz"Giap"
At:	.asciiz"At"
Binh:     .asciiz"Binh"
Dinh:     .asciiz"Dinh"
Mau:      .asciiz"Mau"
Ky:       .asciiz"Ky"
Canh:     .asciiz"Canh"
Tan:      .asciiz"Tan"
Nham:     .asciiz"Nham"
Quy:	.asciiz"Quy"

chi:      .word ti,suu,dan,meo,thin,ty,ngo,mui,than,dau,tuat,hoi
Ti:       .asciiz"Ti"
Suu:	.asciiz"Suu"
Dan:	.asciiz"Dan"
Meo:	.asciiz"Meo"
Thin:	.asciiz"Thin"
Ty:	.asciiz"Ty"
Ngo:	.asciiz"Ngo"
Mui:	.asciiz"Mui"
Than:	.asciiz"Than"
Dau:	.asciiz"Dau"
Tuat:	.asciiz"Tuat"
Hoi: 	.asciiz"Hoi"

strCanChi: 	.space 50
str2NamNhuan: 	.space 50
TBnhapNgay2:	.asciiz"\nNhap TIME 2: "

inputFile:  .asciiz"./input.txt"
outputFile: .asciiz"./output.txt"
buffer: 	  .space 50

cau1:   .asciiz"\nCau 1: "
cau2:   .asciiz"\nCau 2: "
cau2a:  .asciiz"\n\ta) "
cau2b:  .asciiz"\n\tb) "
cau2c:  .asciiz"\n\tc) "
cau3:   .asciiz"\nCau 3: "
cau4:   .asciiz"\nCau 4: "
cau5:   .asciiz"\nCau 5: "
cau6:   .asciiz"\nCau 6: "
cau7:   .asciiz"\nCau 7: "
cau8:   .asciiz"\nCau 8: "

TBtiepTuc: .asciiz"\nBan co muon tiep tuc (Y=1/N=0): "
TBTime1:   .asciiz"\nChuoi TIME_1 khong hop le"
TBTime2:   .asciiz"\nChuoi TIME_2 khong hop le"
monthDays: .word 31, 28, 31, 30, 31, 30,31, 31, 30, 31, 30, 31
.text

main:

while:

	jal MENU
tiepTuc:
	li $v0,4
	la $a0,TBtiepTuc
	syscall
	
	li $v0,5
	syscall
	
	beq $v0,0,system.end
	beq $v0,1, while
	li $v0,4
	la $a0,TBnhapSai
	syscall
	j tiepTuc
	
system.end:
	li $v0,10
	syscall
#---------------------------------------------
MENU:
	addi $sp,$sp,-12
	sw $ra,4($sp)
	sw $a0,8($sp)
		
	li $v0,4
	la $a0,menu
	syscall
	la $a0,yc1
	syscall
	la $a0,yc2
	syscall
	la $a0,yc2a
	syscall
	la $a0,yc2b
	syscall
	la $a0,yc2c
	syscall
	la $a0,yc3
	syscall
	la $a0,yc4
	syscall
	la $a0,yc5
	syscall
	la $a0,yc6
	syscall
	la $a0,yc7
	syscall
	la $a0,yc8
	syscall
	la $a0,yc9
	syscall
	la $a0,kc
	syscall
	la $a0,TB4
	syscall
	
	li $v0,5
	syscall
	move $s0,$v0
	bne $s0,9, userInput
	li $s7,1
	j option
userInput:
	la $a0,TIME1
	jal Nhap
	sw $v0,0($sp)
	
option:	
	move      $v0,$s0	
	addi	$v0, $v0, -1
	sll	$v0, $v0, 2
	la	$t0, yeuCau
	add	$t0, $t0, $v0
	lw	$t0, ($t0)
	jr	$t0
	
c1:		
	
	lw $s0,0($sp)
	beq $s7,0	,xuatRaManHinh
	
	la $a0,cau1
	jal writeFile
	lw $a0,($sp)	
	jal writeFile

	j c2
c2:
	beq $s7,1,filec2
	li $v0,4
	la $a0,loai
	syscall
	
	li $v0,12
	syscall
	
	beq $v0,'a',nhapDungc2
	beq $v0,'A',nhapDungc2
	beq $v0,'b',nhapDungc2
	beq $v0,'B',nhapDungc2
	beq $v0,'c',nhapDungc2
	beq $v0,'C',nhapDungc2
	j nhapSaic2
nhapDungc2:
	move $a1,$v0
	lw $a0,0($sp)		
	jal Convert
	move $s0,$v0
	j xuatRaManHinh
		
nhapSaic2:
	li $v0,4
	la $a0,TBnhapSai
	syscall
	j c2
filec2:
	la $a0,cau2
	jal writeFile
	la $a0,cau2a
	jal writeFile
	
	lw $a1,($sp)
	la $a0,TIME3
	li $a2,0
	jal strCpy
	li $a1,'A'
	jal Convert
	move $a0,$v0
	jal writeFile
	
	la $a0,cau2b
	jal writeFile
	
	lw $a1,($sp)
	la $a0,TIME3
	li $a2,0
	jal strCpy
	li $a1,'B'	
	jal Convert
	move $a0,$v0
	jal writeFile
	
	la $a0,cau2c
	jal writeFile
	
	lw $a1,($sp)
	la $a0,TIME3
	li $a2,0
	jal strCpy
	li $a1,'C'	
	jal Convert
	move $a0,$v0
	jal writeFile
	
	j c3		
c3:
	lw $a0,0($sp)
	jal year
	move $a0,$v0
	jal leapYear
	move $t0,$v0
	beq $t0,0,KNhuan
	j Nhuan
KNhuan:	
	
	la $s0,TBKoNhuan		
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau3
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j c4
	
Nhuan:	
	la $s0,TBNhuan
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau3
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	
	j c4
	
c4:
	lw $a0,0($sp)
	jal day
	move $a1,$v0
	
	lw $a0,0($sp)
	jal month
	move $a2,$v0
	
	lw $a0,0($sp)
	jal year
	move $a3,$v0
	 
	jal WeekDay
	move $s0,$v0
	
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau4
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j c5
	
c5:
	lw $a1,0($sp)
	la $a0,TIMEE
	jal khoangCachGiuaTIME1_TIME2
	move $a0,$v0
	jal ToStr
	move $s0,$v0
	
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau5
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j c6
	
c6:
	lw $a0,0($sp)
	jal tinhCanChi
	move $s0,$v0
	
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau6
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j c7
c7:
	beq $s7,1,boNhap
	li $v0,4
	la $a0,TBnhapNgay2
	syscall
	la $a0,TIME2	
	jal Nhap
	
boNhap:	
	lw $a0,0($sp)
	la $a1,TIME2
	jal khoangCachGiuaTIME1_TIME2
	move $a0,$v0
	jal ToStr
	move $s0,$v0
	
	beq $s7,0,xuatRaManHinh
	la $a0,cau7
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j c8
	
c8:
	lw $a0,0($sp)
	jal _2namNhuanGanNhat
	move $s0,$v0
	
	beq $s7,0,xuatRaManHinh
	
	la $a0,cau8
	jal writeFile
	
	la $a0,($s0)
	jal writeFile
	j menu.end
c9:
	li $s6,0
	jal readFile
	#tach chuoi luu vao TIME1
	la $a0,buffer
	la $a1,TIME1
	li $a2,0
	li $a3,10
	jal storeStr
	move $s2,$v0 #luu dia chi cuoi dg doc
	
	
	la $a0,TIME1
	jal day
	sw $v0,_day
	
	la $a0,TIME1
	jal month
	sw $v0,_month
	
	la $a0,TIME1
	jal year
	sw $v0,_year
	
	la $a1,_day
	la $a2,_month
	la $a3,_year
	jal checkDate
	beq $v0,1,TIME1_dung
	j TIME1_sai
	
TIME1_sai:
	la $a0,TBTime1
	jal writeFile
	li $s6, 1
	j ktTIME_2
	
TIME1_dung:	
	la $a0,TIME1
	sw $a0,0($sp)
	

ktTIME_2:		
	#tach chuoi luu vao TIME2
	move $a2,$s2
	addi $a2,$a2,1
	la $a0,buffer
	la $a1,TIME2
	li $a3,'\0'
	jal storeStr
	
	#kiem tra tinh hop le cua TIME2	
	la $a0,TIME2
	jal day
	sw $v0,_day
	
	la $a0,TIME2
	jal month
	sw $v0,_month
	
	la $a0,TIME2
	jal year
	sw $v0,_year
	
	la $a1,_day
	la $a2,_month
	la $a3,_year
	jal checkDate
	beq $v0,0,TIME2_sai
	j ktCoHopLe
TIME2_sai:
	la $a0,TBTime2
	jal writeFile
	li $s6,1
	
ktCoHopLe:
	beq $s6,1,menu.end  #neu 1 trong 2 chuoi sai, thi ket thuc chuong trinh
	
	j c1
	
xuatRaManHinh:
	
	li $v0,4
	la $a0,TB5
	syscall
		
	li $v0,4
	la $a0,($s0)
	syscall
	j menu.end
	
menu.end:
	lw $v0,0($sp)
	lw $ra,4($sp)
	lw $a0,8($sp)
	addi $sp,$sp,12
	jr $ra
#---------------------------------------
# char* Nhap (char* TIME)
# 
Nhap:
	addi $sp,$sp,-8
	sw $a0,($sp)
	sw $ra,4($sp)	
	
loop.Nhap:
	li $v0,4
	la $a0,TB1
	syscall
	li $v0,8
	la $a0,strTam
	li $a1,3
	syscall
	
	la $a0,strTam
	jal ToInt
	sw $v0,_day

	li $v0,4
	la $a0,TB2
	syscall
	li $v0,8
	la $a0,strTam
	li $a1,3
	syscall
	
	la $a0,strTam
	jal ToInt
	sw $v0,_month

	li $v0,4
	la $a0,TB3
	syscall
	li $v0,8
	la $a0,strTam
	li $a1,5
	syscall
	
	la $a0,strTam
	jal ToInt
	sw $v0,_year
	
	
	la $a1,_day
	la $a2,_month
	la $a3,_year
	
	#kiem tra tinh hop le
	jal checkDate
	move $t3,$v0
	bnez $t3, chapNhan   #nhap DATE dung
		
	li $v0,4
	la $a0,TBnhapSai
	syscall
	j loop.Nhap

chapNhan:
	la $a1,_day
	la $a2,_month
	la $a3,_year
	lw $a0,0($sp)
	jal date
	la $v0,($v0)
	
	lw $ra,($sp)
	lw $ra,4($sp)
	addi $sp,$sp,8
	jr $ra
	
#------------------------------------------------------
#bool checkDate (int ngay, int thang, int nam)	
checkDate:
	addi $sp,$sp,-36
	sw $ra,   ($sp)
	sw $t0,  4($sp)
	sw $t1,  8($sp)
	sw $t2, 12($sp)
	sw $t3, 16($sp)
	sw $a1,	20($sp)
	sw $a2,	24($sp)
	sw $a3,	28($sp)
	sw $a0, 32($sp)

	lw $t0,($a1)#ngay
	lw $t1,($a2)#thang
	lw $t2,($a3)#nam
	
	
	bltz $t2,   nhapSai#neu nam < 0
	blt  $t1,1, nhapSai #neu thang < 1
	bgt  $t1,12,nhapSai #neu thang > 12
	blt  $t0,1, nhapSai  #neu ngay < 1
	
	jal soNgayTrongThang
	move $t3,$v0  
	ble   $t0,$t3,nhapDung
	j nhapSai	
	
nhapSai:
	li $v0,0
	j checkDate.done

nhapDung:
	li $v0,1
	j checkDate.done
checkDate.done:
	lw $ra,   ($sp)
	lw $t0,  4($sp)
	lw $t1,  8($sp)
	lw $t2, 12($sp)
	lw $t3, 16($sp)
	lw $a1,	20($sp)
	lw $a2,	24($sp)
	lw $a3,	28($sp)
	lw $a0, 32($sp)
	addi $sp,$sp,36
	jr $ra

#-------------------------------------------------
#int soNgayTrongThang (int thang, int nam)



soNgayTrongThang:
	addi $sp,$sp,-16
	sw $ra,0  ($sp)
	sw $t1,4 ($sp)
	sw $t2,8 ($sp)
	sw $a0,12($sp)
			
	lw $t1,($a1)
		
	beq $t1,1,co31ngay
	beq $t1,3,co31ngay
	beq $t1,5,co31ngay
	beq $t1,7,co31ngay
	beq $t1,8,co31ngay
	beq $t1,10,co31ngay
	beq $t1,12,co31ngay
	
	beq $t1,4,co30ngay
	beq $t1,6,co30ngay
	beq $t1,9,co30ngay
	beq $t1,11,co30ngay
	
	move $a0,$t2
	jal leapYear  #neu la thang 2, kt nam nhuan
	move $t2,$v0      #luu ket qua trong $t3
	beq  $t2,1,co29ngay #neu la nam nhuan
	j co28ngay


co31ngay:
	li $v0,31
	j soNgayTrongThang_done
co30ngay:
	li $v0,30
	j soNgayTrongThang_done
co29ngay:	
	li $v0,29
	j soNgayTrongThang_done
co28ngay:
	li $v0,28
	j soNgayTrongThang_done

soNgayTrongThang_done:
	lw $ra,  ($sp)
	lw $t1,4 ($sp)
	lw $t2,8 ($sp)
	lw $a0,12($sp)
	addi $sp,$sp,16
	jr $ra		

#------------------------------------------------
#bool leapYear (int year)
#year dg luu trong ($a0)
leapYear:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	
	move $t0,$a0

	div  $t1,$t0,4
	mfhi $t1 #luu phan du vao $t1
	
	beqz $t1, chia400 #neu chia het thi xet den truong hop chia cho 400
	j leapYear.false
	
chia400:	
	div  $t1,$t0,400
	mfhi $t1
	
	bnez $t1, chia100
	j leapYear.true  #neu $t1=0 return 1
	
chia100:	
	div  $t1,$t0,100
	mfhi $t1
	beqz $t1, leapYear.false
	j leapYear.true
		
leapYear.false:
	li $v0,0
	j leapYear.done
leapYear.true:
	li $v0,1
	j leapYear.done
	
leapYear.done:
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)	
	addi $sp,$sp,12
	jr $ra

#------------------------
# $a0(TIME),$a1(TYPE)
# (TIME)
Convert:
	addi $sp,$sp,-28
	sw $s0,($sp)
	sw $s1,4($sp)
	sw $t0,8($sp)
	sw $t1,12($sp)
	sw $t2,16($sp)
	sw $t3,20($sp)
	sw $ra,24($sp)
	move $s0,$a0
	move $s1,$a1

	beq $a1,'A',A.Convert
	beq $a1,'a',A.Convert
	beq $a1,'B',B.Convert
	beq $a1,'b',B.Convert
	beq $a1,'C',C.Convert
	beq $a1,'c',C.Convert
A.Convert:
	lb $t0,($s0)
	lb $t1,1($s0)
	lb $t2,3($s0)
	lb $t3,4($s0)
	sb $t2,($s0)
	sb $t3,1($s0)
	sb $t0,3($s0)
	sb $t1,4($s0)
	j done.Convert
B.Convert:
	
	lb $t0,3($s0)
	lb $t1,4($s0)
	la $t2,strTam
	sb $t0,($t2)
	sb $t1,1($t2)
	li $t0,'\0'
	sb $t0,2($t2)
	move $a0,$t2
	jal ToInt
	
	move $a1,$v0
	li $a2,0

	lb $t0,($s0)
	lb $t1,1($s0)
	lb $t2,6($s0)
	lb $t3,7($s0)
	lb $t4,8($s0)
	lb $t5,9($s0)
	
	move $a0,$s0
	jal Convert_Month

	add $s0,$s0,$v0
	li $t6,' '
	sb $t6,($s0)
	sb $t0,1($s0)
	sb $t1,2($s0)
	li $t0,','
	sb $t0,3($s0)
	sb $t2,4($s0)
	sb $t3,5($s0)
	sb $t4,6($s0)
	sb $t5,7($s0)
	li $t0,'\0'
	sb $t0,8($s0)
	j done.Convert
C.Convert:
	
	lb $t0,3($s0)
	lb $t1,4($s0)
	la $t2,strTam
	sb $t0,($t2)
	sb $t1,1($t2)
	li $t0,'\0'
	sb $t0,2($t2)
	move $a0,$t2
	jal ToInt
	
	move $a1,$v0
	li $a2,3

	lb $t2,6($s0)
	lb $t3,7($s0)
	lb $t4,8($s0)
	lb $t5,9($s0)

	li $t0,' '
	sb $t0,2($s0)
	move $a0,$s0
	jal Convert_Month
	addi $s0,$s0,3
	add $s0,$s0,$v0
	li $t0,','
	sb $t0,($s0)
	sb $t2,1($s0)
	sb $t3,2($s0)
	sb $t4,3($s0)
	sb $t5,4($s0)
	li $t0,'\0'
	sb $t0,5($s0)

done.Convert:
	move $v0,$a0
	
	lw $s0,($sp)
	lw $s1,4($sp)
	lw $t0,8($sp)
	lw $t1,12($sp)
	lw $t2,16($sp)
	lw $t3,20($sp)
	lw $ra,24($sp)
	addi $sp,$sp,28
	jr $ra
#-----------------------------
#$a0(TIME), $a1(month), $a2( Vi tri ghi vao)
# Ghi chuoi month vao TIME , $v0(sott)
Convert_Month:
	addi $sp,$sp,-12
	sw $t0,($sp)
	sw $t1,4($sp)
	sw $ra,8($sp)

	move $t0,$a1
	addi $t0,$t0,-1
	sll $t0,$t0,2
	la $t1,thg
	add $t1,$t1,$t0
	lw $t1,($t1)
	jr $t1
thg1:
	la $a1,thang1
	jal strCpy
	j done.Convert_Month
thg2:
	la $a1,thang2
	jal strCpy
	j done.Convert_Month
thg3:
	la $a1,thang3
	jal strCpy
	j done.Convert_Month
thg4:
	la $a1,thang4
	jal strCpy
	j done.Convert_Month
thg5:
	la $a1,thang5
	jal strCpy
	j done.Convert_Month
thg6:
	la $a1,thang6
	jal strCpy
	j done.Convert_Month
thg7:
	la $a1,thang7
	jal strCpy
	j done.Convert_Month
thg8:
	la $a1,thang8
	jal strCpy
	j done.Convert_Month
thg9:
	la $a1,thang9
	jal strCpy
	j done.Convert_Month
thg10:
	la $a1,thang10
	jal strCpy
	j done.Convert_Month
thg11:
	la $a1,thang11
	jal strCpy
	j done.Convert_Month
thg12:
	la $a1,thang12
	jal strCpy
	j done.Convert_Month
done.Convert_Month:
	lw $t0,($sp)
	lw $t1,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra
#-----------------------------------------------	
# $a0(str)
# $v0(int)
ToInt:	
	addi $sp,$sp,-16
	sw $s0,($sp)
	sw $s2,4($sp)
	sw $s3,8($sp)
	sw $ra,12($sp)

	la $s0,($a0)
	li $s3,0
for.ToInt:
	lb $s2,($s0)
	beq $s2,'\0',tt.ToInt
	beq $s2,10,tt.ToInt
	addi $s2,$s2,-48
	add $s3,$s3,$s2
	li $t0,10
	mult $t0,$s3
	mflo $s3
	addi $s0,$s0,1
	j for.ToInt
tt.ToInt:
	div $s3,$t0
	mflo $v0

	lw $s0,($sp)
	lw $s2,4($sp)
	lw $s3,8($sp)
	lw $ra,12($sp)
	addi $sp,$sp,16
	jr $ra
#-------------------------------------------
date:
	#khoi tao stack
	addi $sp,$sp,-32
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	sw $t0,20($sp)
	sw $t1,24($sp)
	sw $t2,28($sp)

#than thuc tuc
	#gan dia chi chuoi time cho $s0
	move $s0,$a0
	
	li $t0,'/'
	lw $s1,($a1)
	lw $s2,($a2)
	lw $s3,($a3)
	#doi ngay sang char
	div $t1,$s1,10
	mflo $t1
	mfhi $t2
	addi $t1,$t1,48
	addi $t2,$t2,48
	#them vao chuoi
	sb $t1,($s0)
	sb $t2,1($s0)
	
	#them / vao chuoi
	sb $t0,2($s0)

	#doi thang sang char
	div $t1,$s2,10
	mflo $t1
	mfhi $t2
	addi $t1,$t1,48
	addi $t2,$t2,48
	#them vao chuoi
	sb $t1,3($s0)
	sb $t2,4($s0)

	#them / vao chuoi
	sb $t0,5($s0)

	#doi nam sang char
	div $t1,$s3,1000
	mflo $t1
	mfhi $t2
	addi $t1,$t1,48
	sb $t1,6($s0)

	div $t2,$t2,100
	mflo $t1
	mfhi $t2
	addi $t1,$t1,48
	sb $t1,7($s0)

	div $t2,$t2,10
	mflo $t1
	mfhi $t2
	addi $t1,$t1,48
	addi $t2,$t2,48
	sb $t1,8($s0)
	sb $t2,9($s0)

	li $t1,'\0'
	sb $t1,10($s0)
	move $v0,$s0

# cuoi thu tuc
	lw $ra,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	lw $t0,20($sp)
	lw $t1,24($sp)
	lw $t2,28($sp)
	addi $sp,$sp,32
	jr $ra
		
#-----------------------------------------------
#int storeStr(string source,string des, int viTri, char c)
#source luu trong $a0, des trong $a1, viTri trong $a2, c trong $a3
#luu tu viTri den khi nao gap c thi dung
#return dia chi cua c
storeStr:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	
	li $t3,0
	move $t0,$a2  
storeStr.loop:
	add $s1,$a0,$t0
	add $s2,$a1,$t3
	lb $t2, 0($s1)
	beq $t2,$a3, storeStr.exit
	sb $t2,0($s2)
	addi $t0,$t0,1
	addi $t3,$t3,1
	j storeStr.loop
				
storeStr.exit:
	#luu ki tu ket thuc chuoi
	li $t2,'\0'
	addi $t3,$t3,1
	add $s2,$a1,$t3
	sb $t2,0($s2)
	
	#tra ve dia chi cuoi cua source
	move $v0,$t0
	
	sw $ra,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	addi $sp,$sp,12
	jr $ra	
#---------------------------------
#int day(char* TIME)
#TIME dg luu trong  ($a0)
day:
	addi $sp,$sp,-12
	sw $s0,($sp)
	sw $s1,4($sp)
	sw $ra,8($sp)
	
	la $s0,strTam
	lb $s1,($a0)
	sb $s1,($s0)
	lb $s1,1($a0)
	sb $s1,1($s0)
	li $s1,'\0'
	sb $s1,2($s0)

	la $a0,strTam
	jal ToInt
	
	lw $s0,($sp)
	lw $s1,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra

#----------------------------------------
month:
	addi $sp,$sp,-12
	sw $s0,($sp)
	sw $s1,4($sp)
	sw $ra,8($sp)
	
	la $s0,strTam
	lb $s1,3($a0)
	sb $s1,($s0)
	lb $s1,4($a0)
	sb $s1,1($s0)
	li $s1,'\0'
	sb $s1,2($s0)

	la $a0,strTam
	jal ToInt
	
	lw $s0,($sp)
	lw $s1,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra

#-----------------------------------------
year:
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $a0,12($sp)
	
	la $t0,strTam
	lb $t1,6($a0)
	sb $t1,($t0)
	lb $t1,7($a0)
	sb $t1,1($t0)
	lb $t1,8($a0)
	sb $t1,2($t0)
	lb $t1,9($a0)
	sb $t1,3($t0)
	li $t1,'\0'
	sb $t1,4($t0)

	la $a0,strTam
	jal ToInt

	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $a0,12($sp)
	addi $sp,$sp,16
	jr $ra
#-------------------------------

# $a1,$a2,$a3
# $v0(thu trong ngay)(str)
WeekDay:
	addi $sp,$sp,-36
	sw $s0,($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $s3,12($sp)
	sw $s4,16($sp)
	sw $s5,20($sp)
	sw $s6,24($sp)
	sw $s7,28($sp)
	sw $ra,32($sp)

	la $t0,MonthTable

	la $t2,Century

	#cong thuc w = (d + m + c +y) mod 7
	#luu ngay thg nam
	la $s1,($a1)	# s1 luu ngay
	la $s2,($a2)	# s2 luu thang
	la $s3,($a3)	# s3 luu nam
	
	beq $s2,1,dkWeekDay
	beq $s2,2,dkWeekDay
	j ttWeekDay
dkWeekDay:
	addi $s1,$s1,-1
	j ttWeekDay
ttWeekDay:
	addi $sp,$sp,-12
	sw $s3,($sp)
	sw $t0,4($sp)
	sw $t2,8($sp)
	move $a0,$s3
	jal leapYear
	lw $s3,($sp)
	lw $t0,4($sp)
	lw $t2,8($sp)
	addi $sp,$sp,12	

	move $t7,$v0
	bne $t7,1,ttWeekDay1
	addi $s1,$s1,-1

ttWeekDay1:

	#Tinh y
	li $t4,100	#Tinh y
	div $s3,$t4
	mfhi $t4
	li $t5,4
	div $t4,$t5
	mflo $t5
	add $s5,$t4,$t5

	#Tinh thg
	addi $s2,$s2,-1	#Tinh thg
	li $t4,4
	mult $s2,$t4
	mflo $t4
	add $t4,$t4,$t0
	lw $s2,($t4)

	#Tinh c
	li $t5,100	#Tinh c
	div $s3,$t5
	mflo $t5
	li $t6,4
	div $t5,$t6
	mfhi $t5
	mult $t5,$t6
	mflo $t5
	add $t5,$t5,$t2
	lw $s4,($t5)

	#Tinh theo ct
	add $s6,$s1,$s2	#Tinh theo ct
	add $s6,$s6,$s4
	add $s6,$s6,$s5
	li $t4,7
	div $s6,$t4
	mfhi $s6

	#in thu trong tuan
	bne $s6,0,cnWD
	la $a0,sat
	j ktWD
cnWD:
	bne $s6,1,t2WD
	la $v0,sun
	j ktWD
t2WD:
	bne $s6,2,t3WD
	la $v0,mon
	j ktWD
t3WD:
	bne $s6,3,t4WD
	la $v0,tue
	j ktWD
t4WD:
	bne $s6,4,t5WD
	la $v0,wed
	j ktWD
t5WD:
	bne $s6,5,t6WD
	la $v0,thu
	j ktWD
t6WD:
	bne $s6,6,ktWD
	la $v0,fri
	j ktWD
ktWD:
	lw $s0,($sp)
	lw $s1,4($sp)
	lw $s2,8($sp)
	lw $s3,12($sp)
	lw $s4,16($sp)
	lw $s5,20($sp)
	lw $s6,24($sp)
	lw $s7,28($sp)
	lw $ra,32($sp)
	addi $sp,$sp,36
	jr $ra	

#--------------------------------------
#Tra ve $v0(str) 
tinhCan:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	
	jal year
	move $t0,$v0
	
	move $t1,$t0
	addi $t1,$t1,6
	div $t2,$t1,10
	mfhi $t2	#ra chi so i
	
	sll $t2,$t2,2
	la $t3,can
	add $t3,$t3,$t2
	lw $t3,($t3)
	jr $t3
giap: 
	la $v0, Giap
	j tinhCan.done
at:
	la $v0, At
	j tinhCan.done
binh:
	la $v0, Binh
	j tinhCan.done
dinh:
	la $v0, Dinh
	j tinhCan.done
mau:
	la $v0, Mau
	j tinhCan.done
ky:
	la $v0, Ky
	j tinhCan.done
canh:
	la $v0, Canh
	j tinhCan.done
tan:
	la $v0, Tan
	j tinhCan.done
nham:
	la $v0, Nham
	j tinhCan.done
quy:
	la $v0, Quy
	j tinhCan.done
	
tinhCan.done:
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	addi $sp,$sp,20
	jr $ra
#----------------------------------------	
tinhChi:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	
	jal year
	move $t0,$v0
	
	move $t1,$t0
	addi $t1,$t1,8
	div $t2,$t1,12
	mfhi $t2	#ra chi so i
	
	sll $t2,$t2,2
	la $t3,chi
	add $t3,$t3,$t2
	lw $t3,($t3)
	jr $t3
ti:
	la $v0,Ti
	j tinhChi.done
suu:
	la $v0,Suu
	j tinhChi.done
dan:
	la $v0,Dan
	j tinhChi.done
meo:
	la $v0,Meo
	j tinhChi.done
thin:
	la $v0,Thin
	j tinhChi.done
ty:
	la $v0,Ty
	j tinhChi.done
ngo:
	la $v0,Ngo
	j tinhChi.done
mui:
	la $v0,Mui
	j tinhChi.done
than:
	la $v0,Than
	j tinhChi.done
dau:
	la $v0,Dau
	j tinhChi.done
tuat:
	la $v0,Tuat
	j tinhChi.done
hoi:
	la $v0,Hoi
	j tinhChi.done
tinhChi.done:
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	addi $sp,$sp,20
	jr $ra
#-------------------------------------	
tinhCanChi:
	addi $sp,$sp,-12
	sw $ra,($sp)
	sw $t0,4($sp)
	sw $a0,8($sp)

	jal tinhCan
	
	la $a0,strCanChi
	la $a1,($v0)
	li $a2,0
	jal strCpy
		
	move $t1,$v0
	add $a0,$a0,$t1
	li $t2,' '
	sb $t2,($a0)
	addi $t1,$t1,1
	
	lw $a0,8($sp)
	jal tinhChi
	
	la $a0,strCanChi
	la $a1,($v0)
	move $a2,$t1
	jal strCpy
	
	add $t1,$t1,$v0
	move $t2,$a0
	add $t2,$t2,$t1
	li $t3,'\0'
	sb $t3,($t2)
		
	move $v0,$a0
	lw $ra,($sp)
	lw $t0,4($sp)
	lw $a0,8($sp)
	addi $sp,$sp,12
	jr $ra
#----------------------------------------
#$a0,$a1($a0<---$a1),$a2(Vi Tri copy)
#$v0(sott)
strCpy:
	addi $sp,$sp,-24
	sw $s0,($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $t0,12($sp)
	sw $t1,16($sp)
	sw $ra,20($sp)

	move $s0,$a0
	add $s0,$s0,$a2
	move $s1,$a1
	li $t1,0
loop.strCpy:
	lb $t0,($s1)
	beq $t0,'\0',tt.strCpy
	sb $t0,($s0)
	addi $s0,$s0,1
	addi $s1,$s1,1
	addi $t1,$t1,1
	j loop.strCpy
tt.strCpy:
	move $v0,$t1
	lw $s0,($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $t0,12($sp)
	lw $t1,16($sp)
	lw $ra,20($sp)
	addi $sp,$sp,24
	jr $ra
#-------------------------------------------

#$a0(int)
#$v0
ToStr:
	addi $sp,$sp,-24
	sw $s0,($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $t0,12($sp)
	sw $t1,16($sp)
	sw $ra,20($sp)
	
	move $s0,$a0
	li $s1,1
	li $t0,10
	li $t2,0
loop.ToStr:
	mult $s1,$t0
	mflo $s1
	div $s0,$s1
	mflo $t1
	addi $t2,$t2,1
	bgt $t1,0,loop.ToStr
	div $s1,$t0
	mflo $s1
	
	la $s2,strTam
loop2.ToStr:
	div $s0,$s1
	mfhi $s0
	mflo $t1
	addi $t1,$t1,48
	sb $t1,($s2)
	addi $s2,$s2,1
	div $s1,$t0
	mflo $s1
	addi $t2,$t2,-1
	bne $t2,0,loop2.ToStr

	li $t1,'\0'
	sb $t1,($s2)
	la $v0,strTam
	
	lw $s0,($sp)
	lw $s1,4($sp)
	lw $s2,8($sp)
	lw $t0,12($sp)
	lw $t1,16($sp)
	lw $ra,20($sp)
	addi $sp,$sp,24
	jr $ra
#-----------------------------------------------
#ham tra ve chuoi doc dc tu file luu trong $v0
readFile:
	addi $sp,$sp,-20
	sw $ra,($sp)
	sw $a0,4($sp)
	sw $a1,8($sp)
	sw $a2,12($sp)
	sw $s0,16($sp)
	
	#open file
	li $v0,13
	la $a0,inputFile
	li $a1,0
	syscall
	move $s0,$v0

	#read the file, cau doc duoc dg dc luu trong fileWord
	li $v0,14
	move $a0,$s0
	la $a1,buffer
	la $a2,50
	syscall
		
	#dong file
	li $v0,16
	move $a0,$s0
	syscall
	
	la $v0,buffer
	
	lw $ra,($sp)
	lw $a0,4($sp)
	lw $a1,8($sp)
	lw $a2,12($sp)
	lw $s0,16($sp)
	addi $sp,$sp,20
	
	jr $ra	
#----------------------------------------
#tham so truyen vao la chuoi se ghi vao file luu trong $a0
writeFile:
	addi $sp,$sp,-24
	sw $a0,0($sp)
	sw $ra,4($sp)
	sw $s1,8($sp)
	sw $a1,12($sp)
	sw $a2,16($sp)
	sw $a3,20($sp)
	
	#lay chieu dai cua chuoi truyen vao
	lw $a0,0($sp)
	
	jal strlen
	move $a3,$v0
	
	#mo file
	li $v0,13
	la $a0,outputFile
	li $a1,9
	syscall
	move $s1,$v0
	
	lw $t0,0($sp)
	li $v0,15
	move $a0,$s1
	la $a1,($t0)
	la $a2,($a3)
	syscall
	
	li $v0,16
	move $a0,$s1
	syscall
	
	lw $a0,0($sp)
	lw $ra,4($sp)
	lw $s1,8($sp)
	lw $a1,12($sp)
	lw $a2,16($sp)
	lw $a3,20($sp)
	addi $sp,$sp,24
	jr $ra
#----------------------------------------
strlen: 
	addi $sp,$sp,-16
	sw $ra,($sp)
	sw $t0,4($sp) #res
	sw $t1,8($sp) #tung ki tu cua input
	sw $t2,12($sp)#dia chi tung byte

	li $t0,0 #khoi tao res=0
	li $t1,0
strlen.loop:
	add $t2,$a0,$t0 
	lb $t1,0($t2)
	beqz $t1,strlen.exit
	addi $t0,$t0,1
	j strlen.loop
strlen.exit:
	
	add $v0,$zero,$t0
	sw $ra,($sp)
	lw $t0,4($sp) #res
	lw $t1,8($sp) #tung ki tu cua input
	lw $t2,12($sp)#dia chi tung byte
	addi $sp,$sp,16
	jr $ra
#-----------------------------------------
#int countLeapYear(char* TIME)
countLeapYear:
	addi $sp,$sp,-24
	sw $a0,0($sp)
	sw $ra,4($sp)
	sw $t0,8($sp)
	sw $t1,12($sp)
	sw $t2,16($sp)
	sw $t3,20($sp)
	
	lw $a0,0($sp)
	jal month
	move $t0,$v0  #$t0 luu thang
	
	lw $a0,0($sp)
	jal year
	move $t1,$v0  #$t luu nam
	
	bleu $t0,2, giamNam
	j countLeapYear.return
giamNam:
	addi $t1,$t1,-1
	
countLeapYear.return:
	li $t3,0
	
	div $t2,$t1,4
	mflo $t2
	
	add $t3,$t3,$t2
	
	div $t2,$t1,100
	mflo $t2
	
	sub $t3,$t3,$t2
	
	div $t2,$t1,400
	mflo $t2
	
	add $t3,$t3,$t2
	
	move $v0,$t3
	
	lw $a0,0($sp)
	lw $ra,4($sp)
	lw $t0,8($sp)
	lw $t1,12($sp)
	lw $t2,16($sp)
	lw $t3,20($sp)
	addi $sp,$sp,24
	jr $ra
#-----------------------------
# int addDays (int month)
addDays:
	addi $sp,$sp,-28
	sw $ra,0($sp)
	sw $t0,4($sp)
	sw $t1,8($sp)
	sw $t2,12($sp)
	sw $t3,16($sp)
	sw $t4,20($sp)
	sw $s0,24($sp)
	
	li $t0,0
	la $t1,monthDays
	li $s0,0
	sub $a0,$a0,1
addDays.loop:
	add $t2,$zero,$t0
	beq $t2,$a0,addDays.return
	mul $t2,$t2,4
	mflo $t2
	
	add $t3,$t2,$t1
	lw $t4,0($t3)
	
	add $s0,$s0,$t4
	
	addi $t0,$t0,1
	blt $t0,$a0,addDays.loop
	j addDays.return
	
addDays.return:
	move $v0,$s0
	
	lw $ra,0($sp)
	lw $t0,4($sp)
	lw $t1,8($sp)
	lw $t2,12($sp)
	lw $t3,16($sp)
	lw $t4,20($sp)
	lw $s0,24($sp)
	addi $sp,$sp,28
	jr $ra
	
#-----------------------------
#int congThuc(char* TIME1)

congThuc:	
	addi $sp,$sp,-28
	sw $a0,0($sp)
	sw $ra,4($sp)
	sw $s0,8($sp)
	sw $s1,12($sp)
	sw $s2,16($sp)
	sw $s3,20($sp)
	sw $t0,24($sp)
		
	lw $a0,0($sp)
	jal day
	move $s0,$v0 #$s0 = ngay cua TIME1
	
	lw $a0,0($sp)
	jal month
	move $s1,$v0 #$s1 = thang cua TIME1
	
	lw $a0,0($sp)
	jal year
	move $s2,$v0 #$s2 = nam cua TIME1
		
	
	mul $t0,$s2,365  # dt1.y * 365
	mflo $t0
	
	add $s3, $zero,$t0 # n1 = dt1.y * 365
	
	add $s3,$s3,$s0  #n1 = dt1.y *365 + dt1.d
	
	add $a0,$zero,$s1
	jal addDays
	add $s3,$s3,$v0
	
	lw $a0,0($sp)
	jal countLeapYear
	add $s3,$s3,$v0   
	
	move $v0,$s3
	lw $a0,0($sp)
	lw $ra,4($sp)
	lw $s0,8($sp)
	lw $s1,12($sp)
	lw $s2,16($sp)
	lw $s3,20($sp)
	lw $t0,24($sp)
	addi $sp,$sp,28
	jr $ra
#----------------------------------
# int khoangCachTIME1_TIME2 (char* TIME1, char* TIME2)
khoangCachGiuaTIME1_TIME2:
	addi $sp,$sp,-28
	sw $a0,0($sp)
	sw $a1,4($sp)
	sw $ra,8($sp)
	sw $t0,12($sp)
	sw $t1,16($sp)
	sw $t2,20($sp)
	sw $t3,24($sp)
	
	lw $a0,0($sp)
	jal congThuc
	move $t1,$v0
	
	lw $a0,4($sp)
	jal congThuc
	move $t2,$v0
	
	sub $t3,$t2,$t1
	
	bltz $t3,absolute
	j khoangCach.exit
	
absolute:
	mul $t3,$t3,-1
	mflo $t3
	
khoangCach.exit:
	move $v0,$t3
	
          lw $a0,0($sp)
	lw $a1,4($sp)
	lw $ra,8($sp)
	lw $t0,12($sp)
	lw $t1,16($sp)
	lw $t2,20($sp)
	lw $t3,24($sp)
	addi $sp,$sp,28
	jr $ra
	
#-------------------------------------------	
_2namNhuanGanNhat:
	addi $sp,$sp,-24
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $t0,8($sp)
	sw $t1,12($sp)
	sw $s1,16($sp)
	sw $s2,20($sp)
	
	
	jal year
	move $s0,$v0  #$s0 luu year
	
	add $a0,$zero,$s0
	jal leapYear
	move $t0,$v0
	
	beq $t0,1,laNamNhuan
	j koLaNamNhuan

laNamNhuan:
	add $t1,$zero,$s0
	
	subi $t1,$t1,4
	move $a0,$t1
	jal leapYear
	move $t0,$v0
	beq $t0,0,laNamNhuan  #neu (y-4) ko nhuan thi tru 4 tiep
	
	#Duoc nam nhuan thu 1
	move $s1,$t1
	la $a0,($s1)
	jal ToStr
	la $a0,str2NamNhuan
	move $a1,$v0
	li $a2,0
	jal strCpy
	
	move $t3,$v0
	add $a0,$a0,$t3
	li $t2,' '
	sb $t2,($a0)
	addi $t3,$t3,1
	
	add $t1,$zero,$s0
namNhuanThu2:	
	
	addi $t1,$t1,4
	move $a0,$t1
	jal leapYear
	move $t0,$v0
	beq $t0,0,namNhuanThu2 
	
	move $s2,$t1
	la $a0,($s2)
	jal ToStr
	la $a0,str2NamNhuan
	move $a1,$v0
	add $a2,$a2,$t3
	jal strCpy
	 j namNhuanGanNhat.exit

koLaNamNhuan:
	div $t1,$s0,4
	mfhi $t1
	bne $t1,0,ttKLNN
	addi $s0,$s0,-4
	j tt2KLNN
ttKLNN:
	sub $s0,$s0,$t1 #nam nhuan truoc do
tt2KLNN:	
	move $t6,$s0
	#nam nhuan thu 1
	la $a0,($s0)
	jal ToStr
	la $a0,str2NamNhuan
	move $a1,$v0
	li $a2,0
	jal strCpy
	
	move $t3,$v0
	add $a0,$a0,$t3
	li $t2,' '
	sb $t2,($a0)
	addi $t3,$t3,1
	
	move $t1,$t6
	j namNhuanThu2

namNhuanGanNhat.exit:
	la $v0,str2NamNhuan
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $t0,8($sp)
	lw $t1,12($sp)
	lw $s1,16($sp)
	lw $s2,20($sp)
	addi $sp,$sp,24
	jr $ra
	
