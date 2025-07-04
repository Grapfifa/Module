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
    echo ""
    echo ""
    echo "[+] Đang bật chế độ fix lag..."
refresh_rate=$(dumpsys SurfaceFlinger | grep refresh-rate | awk -F': ' '{print $2}' | awk '{print int($1+0.5)}')
echo "$PROGRESS_DIV Display Refresh Rate: ${refresh_rate}Hz"
case $refresh_rate in
    144|120|90|60)
cmd device_config put system display_refresh_rate $refresh_rate
settings put secure user_refresh_rate $refresh_rate
settings put secure miui_refresh_rate $refresh_rate
settings put system min_frame_rate $refresh_rate
settings put system max_frame_rate $refresh_rate
settings put global min_fps $refresh_rate
settings put global max_fps $refresh_rate
settings put system min_refresh_rate $refresh_rate
settings put system max_refresh_rate $refresh_rate
settings put system peak_refresh_rate $refresh_rate
settings put secure refresh_rate_mode $refresh_rate
settings put system user_refresh_rate $refresh_rate
settings put system thermal_limit_refresh_rate $refresh_rate
settings put system NV_FPSLIMIT $refresh_rate
        ;;
    *)
        echo "$PROGRESS_DIV ${STICKER_ERROR}Refresh rate $refresh_rate not supported."
        exit 1
        ;;
esac
