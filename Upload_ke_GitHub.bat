@echo off
title Upload KasMate AI ke GitHub (walkwithmjpro)
echo ======================================================================
echo             UPLOAD OTOMATIS KASMATE AI KE GITHUB
echo ======================================================================
echo.
echo Akun GitHub: walkwithmjpro@gmail.com
echo.
echo Pastikan Anda sudah membuat repository kosong di GitHub:
echo 👉 https://github.com/new (Beri nama: kasmate-ai)
echo.
set /p REPO_URL="Masukkan URL Repository GitHub Anda (contoh: https://github.com/USERNAME/kasmate-ai.git): "

if "%REPO_URL%"=="" (
    echo Error: URL Repository tidak boleh kosong!
    pause
    exit /b
)

echo.
echo Menginisialisasi dan mengunggah kode...
git config user.email "walkwithmjpro@gmail.com"
git config user.name "walkwithmjpro"
git add .
git commit -m "feat: deploy kasmate ai untuk vercel dan whatsapp business"
git branch -M main
git remote remove origin 2>nul
git remote add origin %REPO_URL%
echo.
echo Mengirimkan kode ke GitHub (jika muncul jendela login, pilih 'Sign in with your browser')...
git push -u origin main

echo.
echo ======================================================================
echo SELESAI! Repositori GitHub Anda kini sudah terisi kode KasMate AI.
echo Selanjutnya buka https://vercel.com/new untuk 1-Click Import ke Vercel!
echo ======================================================================
pause
