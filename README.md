#### 여러개의 AWS 주소를 관리할 때 편하게 쉘에 접속하기 위한 파일

x.x.x.x 대신 ip를 입력하거나 
examp.domia.com 에 도메인을 입력하여 접속 가능

하단에 aws 키 파일 위치와 아이디를 맞춰 넣어줌. 

###### 코
@echo off 


setlocal enabledelayedexpansion </br>
echo "Choose an option:" </br>
echo "1. select1"</br>
echo "2. select2"</br>
echo "3. select3"</br>
echo "4. select4"</br>

choice /c 1234 /n /m "Enter your choice (1-4):"</br>
set user_choice=%errorlevel%</br>

if !user_choice! equ 1 (</br>
    set domain=x.x.x.x</br>
) else if !user_choice! equ 2 (</br>
    set domain=example2.doamin.com</br>
) else if !user_choice! equ 3 (</br>
    set domain=example3.doamin.com</br>
) else if !user_choice! equ 4 (</br>
    set domain=example4.doamin.com</br>
) else (</br>
    echo "Invalid choice. Exiting."</br>
    exit /b 1</br>
)</br>
</br>
</br>
ssh -i C:\Users\path\to\my\AWS_key.pem ec2-user@!domain!</br>
