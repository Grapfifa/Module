#!/system/bin/sh
spict() {
    EXP_DATE="2025-07-30"
    CURRENT_DATE=$(date +%F)
    if [ "$CURRENT_DATE" \< "$EXP_DATE" ]; then
        echo "[✓] Ngày hiện tại: $CURRENT_DATE - Đang chạy module..."
    else
        echo "[✘] Hôm nay là $CURRENT_DATE - Module đã hết hạn."
        exit 0
    fi
}
spict
echo "
                 █▀ █░█ █▀█ █▀▀ █▀█
                 ▄█ █▄█ █▀▀ ██▄ █▀▄

         █▀▀ ▄▀█ █▀▄▀█ █ █▄░█ █▀▀ █░█ ▄█
         █▄█ █▀█ █░▀░█ █ █░▀█ █▄█ ▀▄▀ ░█"
echo ".      🔰 DEV: GRAP FIFA / YTB: GRAP FIFA📂"
echo ".                👽Zalo: Thắng Lê👽"
    echo ".  📱 Thông tin thiết bị 🔍"
    echo "-----------------------"
    sleep 0.3
    echo ".  👾 - Phần cứng:              $(getprop ro.hardware)"
    sleep 0.3
    echo ".  👾 Phiên bản Android  ➜ $(getprop ro.build.version.release)"
    sleep 0.3
    echo ".  👾 Device Model      ➜ $(getprop ro.product.model)"
    sleep 0.3   
 echo "Đang khôi phục lại trạng thái ban đầu"   
reset() {
cmd power set-adaptive-power-saver-enabled true
cmd power set-fixed-performance-mode-enabled false
settings put system touchscreen_sensitivity_threshold
settings delete system touch.size.calibration geometric
settings delete system touch.coverage.calibration octagram
settings delete system touch.pressure.scale 0.0001
settings delete system touch.gesturemode spots
device_config delete systemui min_fling_velocity
device_config delete systemui max_fling_velocity
settings delete system pointer_speed 
}> /dev/null 2>&1  
echo "Reset buff màn về mặc định"
wm size reset
wm density reset    
