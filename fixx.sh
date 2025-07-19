#!/system/bin/sh

    EXP_DATE="2025-07-30"
    CURRENT_DATE=$(date +%F)
    if [ "$CURRENT_DATE" \< "$EXP_DATE" ]; then
        echo "[✓] Ngày hiện tại: $CURRENT_DATE - Đang chạy module..."
    else
        echo "[✘] Hôm nay là $CURRENT_DATE - Module đã hết hạn."
        exit 0
    fi
echo "
========================================================

░██████╗░░█████╗░███╗░░░███╗███████╗  ██╗░░░██╗██████╗░
██╔════╝░██╔══██╗████╗░████║██╔════╝  ██║░░░██║╚════██╗
██║░░██╗░███████║██╔████╔██║█████╗░░  ╚██╗░██╔╝░░███╔═╝
██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░  ░╚████╔╝░██╔══╝░░
╚██████╔╝██║░░██║██║░╚═╝░██║███████╗  ░░╚██╔╝░░███████╗
░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝  ░░░╚═╝░░░╚══════╝
========================================================
DEV: GRAP FIFA | YTB: GRAP FIFA 📂
Zalo: Thắng Lê 👽
======================================"

# In thông tin thiết bị với bố cục rõ ràng
echo "THONG TIN THIET BI"
echo "-----------------------------"
sleep 0.3
echo "- Phần cưng:      $(getprop ro.hardware)"
sleep 0.3
echo "- Phiền bản Android:  $(getprop ro.build.version.release)"
sleep 0.3
echo "- Device Model:       $(getprop ro.product.model)"
sleep 0.3
echo "-----------------------------"
echo ""
 echo "Đang khôi phục lại trạng thái ban đầu"   
reset() {
cmd power set-adaptive-power-saver-enabled true
cmd power set-fixed-performance-mode-enabled false
settings delete system touchscreen_sensitivity_threshold
settings delete system touch.size.calibration geometric
settings delete system touch.coverage.calibration octagram
settings delete system touch.pressure.scale 0.0001
settings delete system touch.gesturemode spots
device_config delete systemui min_fling_velocity
device_config delete systemui max_fling_velocity
settings delete system pointer_speed 
settings delete system adaptive_fast_charging 
settings delete system super_fast_charging 
settings delete system wireless_fast_charging 
settings delete global adaptive_battery_management_enabled 
settings delete global app_standby_enabled 
settings delete global cached_apps_freezer enabled
settings delete global enhanced_processing 
settings delete global preferred_network_mode 
settings delete global sem_enhanced_cpu_responsiveness 
settings delete system android.wallpaper.settings_systemui_transparency 
settings delete system min_refresh_rate 
settings delete system peak_refresh_rate 
settings delete global accessibility_reduce_transparency 
settings delete global ram_expand_size
settings delete global zram_enabled
cmd device_config delete activity_manager fstrim_mandatory_interval 1
cmd device_config delete lmkd_native thrashing_limit_critical 500
cmd device_config delete activity_manager bg_current_drain_auto_restrict_abusive_apps_enabled true
cmd device_config delete activity_manager_native_boot use_freezer true
cmd device_config delete activity_manager max_cached_processes 12
/system/bin/device_config delete activity_manager max_phantom_processes 2147483647
/system/bin/device_config delete activity_manager max_cached_processes 12
settings delete system touch.coverage.calibration box
settings delete system touch.distance.calibration area
settings delete system touch.distance.scale 0
settings delete system touch.gestureMode spots
settings delete system touch.orientation.calibration interpolated
settings delete system touch.orientationAware 1
settings delete system touch.pressure.calibration amplitude
settings delete system touch.pressure.scale 0.0001
settings delete system touch.size.bias 0
settings delete system touch.size.calibration geometric
settings delete system touch.size.isSummed 0
settings delete system touch.size.scale 1
settings delete system touch.toolSize.areaScale 22
settings delete system touch.toolSize.isSummed 0
settings delete system touch.deviceType touchScreen
settings delete system view.scroll_friction 10
cmd device_config delete activity_manager fstrim_mandatory_interval 
cmd device_config delete lmkd_native thrashing_limit_critical 
cmd device_config delete activity_manager bg_current_drain_auto_restrict_abusive_apps_enabled 
cmd device_config delete activity_manager_native_boot use_freezer 
cmd device_config delete activity_manager max_cached_processes 
/system/bin/device_config delete activity_manager max_phantom_processes
/system/bin/device_config delete activity_manager max_cached_processes
}
reset > /dev/null 2>&1  
echo "Reset buff màn về mặc định"
wm size reset
wm density reset    
