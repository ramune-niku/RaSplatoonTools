@echo off
echo --- Blazor GitHub Pages 用リネーム処理を開始します ---

REM _frameworkフォルダへ移動（パスは自分の環境に合わせて調整してください）
cd /d %~dp0_framework

REM 各ファイルのハッシュ付き最新版を探して、ハッシュなし名でコピー作成
for %%f in (blazor.webassembly.*.js) do copy /y "%%f" blazor.webassembly.js
for %%f in (dotnet.*.js) do copy /y "%%f" dotnet.js
for %%f in (dotnet.native.*.js) do copy /y "%%f" dotnet.native.js
for %%f in (dotnet.runtime.*.js) do copy /y "%%f" dotnet.runtime.js
for %%f in (dotnet.native.*.wasm) do copy /y "%%f" dotnet.native.wasm

echo --- 処理が完了しました！ ---
pause