@echo off
setlocal enabledelayedexpansion

echo "Choose an option:"
echo "1. select1"
echo "2. select2"
echo "3. select3"
echo "4. select4"

choice /c 1234 /n /m "Enter your choice (1-4):"
set user_choice=%errorlevel%

if !user_choice! equ 1 (
    set domain=x.x.x.x
) else if !user_choice! equ 2 (
    set domain=example2.doamin.com
) else if !user_choice! equ 3 (
    set domain=example3.doamin.com
) else if !user_choice! equ 4 (
    set domain=example4.doamin.com
) else (
    echo "Invalid choice. Exiting."
    exit /b 1
)


ssh -i C:\Users\path\to\my\AWS_key.pem ec2-user@!domain!

