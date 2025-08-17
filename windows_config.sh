# 安装scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex                             

# 安装git 
scoop install git

# 安装NerdFonts字体
scoop bucket add nerd-fonts

Get-ChildItem ~/scoop/buckets/nerd-fonts/bucket/*.json | ForEach-Object {
    $pkg = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
    Write-Host "👉 正在安装字体: $pkg ..." -ForegroundColor Cyan
    scoop install $pkg
    Start-Sleep -Seconds 3   # 延时 3 秒
}

