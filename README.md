# MIPS
2. Yêu	cầu chương	trình
1. Phải cài đặt đầy đủ các hàm nêu trong phần 4 dưới dạng thư viện trong MIPS
2. Các hàm thư viện không được sử dụng biến toàn cục để lưu trữ giá trị tính toán trung
gian, phải sử dụng biến cục bộ
3. Tuân thủ chặt chẽ qui tắc gọi hàm, mỗi hàm vi phạm qui tắc sẽ bị trừ 50% số điểm của
hàm đó
3. Đề bài:
Viết một chương trình minh họa có giao diện menu như sau:
• Nhap ngay DAY:
• Nhap thang MONTH:
• Nhap nam YEAR:
----------Bạn hãy chọn 1 trong các thao tác dưới đây -----
1. Xuất chuỗi TIME theo định dạng DD/MM/YYYY
2. Chuyển đổi chuỗi TIME thành một trong các định dạng sau:
A. MM/DD/YYYY
B. Month DD, YYYY
C. DD Month, YYYY
3. Kiểm tra năm trong chuỗi TIME có phải là năm nhuận không
4. Cho biết ngày vừa nhập là ngày thứ mấy trong tuần
5. Cho biết ngày vừa nhập là ngày thứ mấy kể từ ngày 1/1/1.
6. Cho biết can chi của năm vừa nhập. Ví dụ năm 2019 là Kỷ
Hợi
7. Cho biết khoảng thời gian giữa chuỗi TIME_1 và TIME_2
8. Cho biết 2 năm nhuận gần nhất với năm trong chuỗi time
(Chú ý: Hàm này phải sử dụng lại hàm ở câu 3.)
9. Nhập input từ file input.txt xuất kết quả toàn bộ các
chức năng trên ra file output.txt
---------------------------------------------------------
• Lựa chọn:
• Kết quả:
Chú ý: Kiểm tra bộ dữ liệu đầu vào khi nhập, nếu dữ liệu
không hợp lệ thì yêu cầu người dùng nhập lại. (Ví dụ
30/02/2012 (lưu ý năm nhuận) hoặc a/1/2000 là không hợp lệ)
Cấu trúc file input.txt:
dd1 mm1 yyyy1
dd2 mm2 yyyy2 (Chuỗi này dùng để test chức năng số 7)
Ví dụ:
Input.txt Output.txt
01 04 2019
15 04 2019
1. 01/04/2019
2A. 01/04/2019
2B. April 01, 2019
2C. 01 April, 2019
3. 2019 La Nam Thuong
4. 01/04/2019 la thu hai
5. Khoang cach tu ngay 01/01/0001 den ngay 01/04/2019 la 6664 ngay
6. 2019 la nam Ky Hoi
7. Khoang cach tu ngay 01/04/2019 den ngay 15/04/2019 la 14 ngay
8. Hai nam nhuan gan voi 2019 nhat la 2016 va 2020
29 02 2019
15 04 2019
Chuoi Time_1 khong hop le
28 02 2019
aa 04 2019
Chuoi Time_2 khong hop le
29 02 2019
aa 04 2019
Chuoi Time_1 va Time_2 khong hop le

4. Các	hàm
char* Date(int day, int month, int year, char* TIME)
• Mô tả:
o Xuất chuỗi TIME theo định dạng mặc định DD/MM/YYYY
• Tham số:
o day, month, year: tương ứng 3 giá trị ngày, tháng, năm do người dùng nhập
vào
o TIME: trỏ đến vùng nhớ lưu trữ kết quả chuỗi ngày tháng đã định dạng
• Giá trị trả về:
o Trả về giá trị mà biến TIME đang giữ
char* Convert(char* TIME, char type)
• Mô tả:
o Chuyển đổi kiểu định dạng của chuỗi TIME
• Tham số:
o TIME: trỏ đến vùng nhớ lưu giá trị chuỗi ngày tháng cần chuyển định dạng
o type: kiểu định dạng muốn chuyển
type = ‘A’ : định dạng MM/DD/YYYY
type = ‘B’ : định dạng Month DD, YYYY
type = ‘C’ : định dạng DD Month, YYYY
• Giá trị trả về:
o Trả về giá trị mà biến TIME đang giữ
int Day(char* TIME)
• Mô tả:
o Lấy giá trị ngày từ chuỗi TIME
• Tham số:
o TIME: trỏ đến vùng nhớ lưu giá trị ngày tháng cầ
o Trả về giá trị tháng trong chuỗi TIME (1 - 12)
int Year(char* TIME)
• Mô tả:
o Lấy giá trị năm từ chuỗi TIME
• Tham số:
o TIME: trỏ đến vùng nhớ lưu giá trị ngày tháng cần xử lý
• Giá trị trả về:
o Trả về giá trị năm trong chuỗi TIME
int LeapYear(char* TIME)
• Mô tả:
o Kiểm tra năm nhuận
• Tham số:
o TIME: trỏ đến vùng nhớ lưu giá trị ngày tháng cần xử lý
• Giá trị trả về:
o 0: năm trong chuỗi TIME không phải là năm nhuận
o 1: năm trong chuỗi TIME là năm nhuận
int DateDiff(char* TIME_1, char* TIME_2)
• Mô tả:
o Tính khoảng thời gian cách biệt giữa giá trị năm của chuỗi TIME_1 và
TIME_2
• Tham số:
o TIME_1 và TIME_2: trỏ đến vùng nhớ lưu giá trị ngày tháng cần xử lý
• Giá trị trả về:
o Số ngày cách biệt (>= 0)
char* Weekday(char* TIME)
• Mô tả:
o Cho biết giá trị ngày trong chuỗi TIME là thứ mấy trong tuần
• Tham số:
o TIME: trỏ đến vùng nhớ lưu giá trị ngày tháng cần xử lý
• Giá trị trả về:
o Trả về thứ trong tuần thuộc tập giá trị sau: {Mon; Tues, Wed, Thurs, Fri,
Sat, Sun}
Ghi chú: định dạng mặc định của chuỗi TIME, TIME_1, TIME_2 trong các hàm là DD/MM/YYYY
Phụ lục
Code tính năm can chi:
#include <stdio.h>
#include <conio.h>
void main()
{
unsigned nam;
char can[][5] = {"Giap", "At", "Binh", "Dinh", "Mau", "Ky", "Canh", "Tan", "Nham", "Quy"};
char chi[][5] = {"Ty", "Suu", "Dan", "Meo", "Thin", "Ty", "Ngo", "Mao", "Than", "Dau", "Tuat", "Hoi"};
printf("\nNhap nam can biet : ");
scanf("%d", &nam);
printf("Nam am lich cua %d la %s %s", nam, can[(nam+6)%10], chi[(nam+8)%12]);
getch();
}
