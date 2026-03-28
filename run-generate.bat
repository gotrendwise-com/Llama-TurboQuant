@echo off
echo.
echo ================================================================
echo   Llama TurboQuant - Text Generation
echo ================================================================
echo.

if "%1"=="" (
    echo Usage: run-generate.bat model.gguf "Your prompt here"
    echo.
    echo Example:
    echo   run-generate.bat models\Qwen3.5-2B.Q8_0.gguf "Write a poem"
    echo.
    echo Download GGUF models from:
    echo   https://huggingface.co/models?search=gguf
    echo.
    pause
    exit /b 1
)

if "%2"=="" (
    echo Usage: run-generate.bat model.gguf "Your prompt here"
    pause
    exit /b 1
)

bin\turboquant-generate.exe -m %1 -n 100 -b 4 %2
pause
