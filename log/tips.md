### 导出Android手机照片到macOS
    On Android：
    Settings > About Phone > Build number > Tap it 7 times to become developer 
    Settings > Developer Options > USB Debugging.  # Enable Debug Mode

    On macOS:
    brew cask install android-sdk
    brew cask install android-platform-tools

    Get Android Serial No:
    adb devices  
    Export Camera Photos:
    adb -s KV7SI7VW5TONZPZ5 pull /sdcard/DCIM ./DCIM 
    Export WeChat Photos:
    adb -s KV7SI7VW5TONZPZ5 pull /sdcard/Tencent/MicroMsg/camera ./camera
