#!/system/bin/sh

    EXP_DATE="2025-07-30"
    CURRENT_DATE=$(date +%F)
    if [ "$CURRENT_DATE" \< "$EXP_DATE" ]; then
        echo "[✓] Ngày hiện tại: $CURRENT_DATE - Đang chạy module..."
    else
        echo "[✘] Hôm nay là $CURRENT_DATE - Module đã hết hạn."
        exit 0
    fi

#!/bin/bash

# In banner mới với thiết kế đơn giản, tinh tế
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
echo "[+] Đang bật chế độ fix lag..."
echo "[*] Đang tối ưu giao diện cho Brevent..."
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
for a in debug.sf.early.app.duration debug.sf.early.sf.duration debug.sf.earlyGl.app.duration debug.sf.earlyGl.sf.duration debug.sf.earlyGl_app_phase_offset_ns debug.sf.earlyGl_phase_offset_ns debug.sf.early_app_phase_offset_ns debug.sf.early_phase_offset_ns debug.sf.late.app.duration debug.sf.late.sf.duration debug.sf.late_app_phase_offset_ns debug.sf.late_phase_offset_ns;do setprop "$a" 16666666;done;while true;do sleep 1;refresh_rate="$(dumpsys SurfaceFlinger|grep refresh-rate|awk '{print $3}')";sleep 1;duration="$(echo "1000000000/$refresh_rate/3"|bc)";sleep 1;for surface_flinger in $(getprop|grep duration|grep debug.sf|cut -f1 -d]|tr -d [);do setprop "$surface_flinger" "$duration";done;sleep 1;offset="$(echo "1000000000/$refresh_rate/3/2"|bc)";sleep 1;for surface_flinger in $(getprop|grep phase_offset_ns|grep debug.sf|cut -f1 -d]|tr -d [);do setprop "$surface_flinger" "$offset";done;sleep 1;done>/dev/null 2>&1&
fixlag() {
setprop log.tag.SQLiteQueryBuilder WARN 
setprop log.tag.FuseDaemon WARN 
setprop log.tag.GAv4 WARN 
setprop log.tag.CAM2PORT_ WARN 
setprop log.tag.FragmentManager WARN 
setprop log.tag.libfuse WARN 
setprop log.tag.AndroidRuntime WARN 
setprop log.tag.PackageManager WARN 
setprop log.tag.ActivityManager WARN 
setprop log.tag.WindowManager WARN 
setprop log.tag.AudioManager WARN 
setprop log.tag.InputMethodManager WARN 
setprop log.tag.BluetoothManager WARN 
setprop log.tag.NetworkManagement WARN 
setprop log.tag.ConnectivityManager WARN 
setprop log.tag.WifiManager WARN 
setprop log.tag.TelephonyManager WARN 
setprop log.tag.LocationManager WARN 
setprop log.tag.SensorManager WARN 
setprop log.tag.PowerManager WARN 
setprop log.tag.SurfaceFlinger WARN 
setprop log.tag.MediaPlayer WARN 
setprop log.tag.AudioPolicyManager WARN 
setprop log.tag.InputManager WARN 
setprop log.tag.AccountManager WARN 
setprop log.tag.DevicePolicyManager WARN 
setprop log.tag.WallpaperManager WARN 
setprop log.tag.BatteryManager WARN 
setprop log.tag.ContentManager WARN 
setprop log.tag.GraphicsStats WARN 
setprop log.tag.JobScheduler WARN 
setprop log.tag.UsbManager WARN 
setprop log.tag.VpnManager WARN 
setprop log.tag.NotificationManager WARN 
setprop log.tag.AlarmManager WARN 
setprop log.tag.ClipboardManager WARN 
setprop log.tag.InputDispatcher WARN 
setprop log.tag.NetworkStats WARN 
setprop log.tag.BackupManager WARN 
setprop log.tag.KeyguardManager WARN 
setprop log.tag.DeviceIdleController WARN 
setprop log.tag.ActivityTaskManager WARN 
setprop log.tag.DisplayManager WARN 
setprop log.tag.UsbHostManager WARN 
setprop log.tag.AppOps WARN 
setprop log.tag.HardwarePropertiesManager WARN 
setprop log.tag.StorageManager WARN 
setprop log.tag.ServiceManager WARN 
setprop log.tag.DockObserver WARN 
setprop log.tag.PersistentDataBlockManager WARN 
setprop log.tag.NetworkTimeUpdateService WARN 
setprop log.tag.ThermalManager WARN 
setprop log.tag.PrintManager WARN 
setprop log.tag.NetworkPolicy WARN 
setprop log.tag.BluetoothAdapter WARN 
setprop log.tag.BluetoothSocket WARN 
setprop log.tag.BluetoothDevice WARN 
setprop log.tag.MediaRouter WARN 
setprop log.tag.MediaSession WARN 
setprop log.tag.LocationProvider WARN 
setprop log.tag.ConnectivityService WARN 
setprop log.tag.BatteryStatsService WARN 
setprop log.tag.ProcessStats WARN 
setprop log.tag.PackageInstaller WARN 
setprop log.tag.DownloadManager WARN 
setprop log.tag.SystemServer WARN 
setprop log.tag.HardwareService WARN 
setprop log.tag.PowerManagerService WARN 
setprop log.tag.InputMethodManagerService WARN 
setprop log.tag.StatusBarManagerService WARN 
setprop log.tag.NetworkManagementService WARN 
setprop log.tag.NetworkPolicyManagerService WARN 
setprop log.tag.TelephonyRegistry WARN 
setprop log.tag.MountService WARN 
setprop log.tag.WindowManagerService WARN 
setprop log.tag.DisplayManagerService WARN 
setprop log.tag.ActivityManagerService WARN 
setprop log.tag.ActivityTaskManagerService WARN 
setprop log.tag.AlarmManagerService WARN 
setprop log.tag.NotificationManagerService WARN 
setprop log.tag.VibratorService WARN 
setprop log.tag.ConsumerIrService WARN 
setprop log.tag.DevicePolicyManagerService WARN 
setprop log.tag.LocationManagerService WARN 
setprop log.tag.InputManagerService WARN 
setprop log.tag.AudioService WARN 
setprop log.tag.MediaPlayerService WARN 
setprop log.tag.AudioPolicyService WARN 
setprop log.tag.BluetoothService WARN 
setprop log.tag.BluetoothGattService WARN 
setprop log.tag.BluetoothHidService WARN 
setprop log.tag.BluetoothPanService WARN 
setprop log.tag.BluetoothMapService WARN 
setprop log.tag.BluetoothPbapService WARN 
setprop log.tag.BluetoothSapService WARN 
setprop log.tag.SQLiteQueryBuilder WARN 
setprop log.tag.FuseDaemon WARN 
setprop log.tag.GAv4 WARN 
setprop log.tag.CAM2PORT_ WARN 
setprop log.tag.FragmentManager WARN 
setprop log.tag.libfuse WARN 
setprop log.tag.AndroidRuntime WARN 
setprop log.tag.PackageManager WARN 
setprop log.tag.ActivityManager WARN 
setprop log.tag.WindowManager WARN 
setprop log.tag.AudioManager WARN 
setprop log.tag.InputMethodManager WARN 
setprop log.tag.BluetoothManager WARN 
setprop log.tag.NetworkManagement WARN 
setprop log.tag.ConnectivityManager WARN 
setprop log.tag.WifiManager WARN 
setprop log.tag.TelephonyManager WARN 
setprop log.tag.LocationManager WARN 
setprop log.tag.SensorManager WARN 
setprop log.tag.PowerManager WARN 
setprop log.tag.SurfaceFlinger WARN 
setprop log.tag.MediaPlayer WARN 
setprop log.tag.AudioPolicyManager WARN 
setprop log.tag.InputManager WARN 
setprop log.tag.AccountManager WARN 
setprop log.tag.DevicePolicyManager WARN 
setprop log.tag.WallpaperManager WARN 
setprop log.tag.BatteryManager WARN 
setprop log.tag.ContentManager WARN 
setprop log.tag.GraphicsStats WARN 
setprop log.tag.JobScheduler WARN 
setprop log.tag.UsbManager WARN 
setprop log.tag.VpnManager WARN 
setprop log.tag.NotificationManager WARN 
setprop log.tag.AlarmManager WARN 
setprop log.tag.ClipboardManager WARN 
setprop log.tag.InputDispatcher WARN 
setprop log.tag.NetworkStats WARN 
setprop log.tag.BackupManager WARN 
setprop log.tag.KeyguardManager WARN 
setprop log.tag.DeviceIdleController WARN 
setprop log.tag.ActivityTaskManager WARN 
setprop log.tag.DisplayManager WARN 
setprop log.tag.UsbHostManager WARN 
setprop log.tag.AppOps WARN 
setprop log.tag.HardwarePropertiesManager WARN 
setprop log.tag.StorageManager WARN 
setprop log.tag.ServiceManager WARN 
setprop log.tag.DockObserver WARN 
setprop log.tag.PersistentDataBlockManager WARN 
setprop log.tag.NetworkTimeUpdateService WARN 
setprop log.tag.ThermalManager WARN 
setprop log.tag.PrintManager WARN 
setprop debug.egl.callstack false
setprop debug.egl.blobcache.multifile true
setprop debug.egl.blobcache.multifile_limit -1
setprop debug.egl.recordable.rgba8888 1
setprop debug.egl.finish false
setprop debug.sf.enable_egl_image_tracker false
setprop debug.sf.vrr_timeout_hint_enabled true
setprop debug.sf.enable_legacy_frontend true
setprop debug.sf.trace_hint_sessions false
setprop debug.sf.enable_cached_set_render_scheduling true
setprop debug.sf.enable_adpf_cpu_hint true
setprop debug.sf.frame_rate_category_mrr true
setprop debug.sf.cache_source_crop_only_moved true
setprop debug.sf.multithreaded_present true
setprop debug.sf.enable_vrr_config true
setprop debug.stagefright.fps false
setprop debug.stagefright.rtp false
setprop debug.art.monitor.app false
setprop debug.media.c2.large.audio.frame true
setprop debug.adpf.use_report_actual_duration true
setprop debug.hwc.flattenning_enabled false
setprop debug.hwc.normalize_hint_session_durations false
setprop debug.hwc.trace_hint_sessions false
setprop debug.incremental.enable_read_timeouts_after_install true
setprop debug.force_low_ram false
setprop debug.angle.validation false
setprop debug.c2.use_dmabufheaps 1
setprop debug.codec2.stop_hal_before_surface false
settings put global activity_manager_constants max_cached_processes=1024
settings put global max_cached_processes 22900
settings put global background_settle_time 0
settings put global fgservice_min_shown_time 0
settings put global fgservice_min_report_time 0
settings put global fgservice_screen_on_before_time 0
settings put global fgservice_screen_on_after_time 0
settings put global content_provider_retain_time 0
settings put global gc_timeout 0
settings put global full_pss_min_interval 0
settings put global full_pss_lowered_interval 0
settings put global power_check_interval 0
settings put global power_check_max_cpu_1 0
settings put global power_check_max_cpu_2 0
settings put global power_check_max_cpu_3 0
settings put global restricted_device_performance 1,1
settings put global activity_manager_constants max_cached_processes=0
settings put system user_refresh_rate 120
settings put system min_refresh_rate 120
settings put system peak_refresh_rate 120
settings put system user_refresh_rate infinity
settings get system user_refresh_rate
setprop debug.gfx.early_z 1
setprop debug.hwui.skip_empty_damage true
setprop debug.qctwa.preservebuf 1
setprop debug.qctwa.preservebuf.comp_level 3
setprop debug.qc.hardware 1
setprop debug.gr.swapinterval 0
setprop debug.sf.swapinterval 0
setprop debug.perf.tuning 1
setprop debug.qcom.hw_hmp.min_fps -1
setprop debug.qcom.hw_hmp.max_fps -1
setprop debug.qcom.pil.q6_boost q
setprop debug.qcom.render_effect 0
setprop debug.adreno.force_rast 1
setprop debug.adreno.prefer_native_sync 1
setprop debug.adreno.q2d_decompress 1
setprop debug.rs.qcom.use_fast_math 1
setprop debug.rs.qcom.disable_expand 1
setprop debug.sf.hw 1
setprop debug.hwui.shadow.renderer monothic
setprop debug.gfx.driver.1 com.qualcomm.qti.gpudrivers.kona.api30
setprop debug.power_management_mode pref_max
setprop debug.gfx.driver 1
setprop debug.renderengine.backend skiagl
setprop debug.renderengine.backend skiaglthreaded
setprop debug.angle.overlay FPS:skiagl*PipelineCache*
setprop debug.javafx.animation.framerate 120
setprop debug.systemuicompilerfilter speed
setprop debug.app.performance_restricted false
setprop debug.sf.set_idle_timer_ms 30
setprop debug.sf.disable_backpressure 1
setprop debug.sf.latch_unsignaled 1
setprop debug.sf.enable_hwc_vds 1
setprop debug.sf.showfps 0
setprop debug.sf.showcpu 0
setprop debug.sf.showbackground 0
setprop debug.sf.shoupdates 0
setprop debug.hwui.target_cpu_time_percent 300
setprop debug.hwui.target_gpu_time_percent 300
setprop debug.hwui.use_hint_manager true
setprop debug.multicore.processing 1
setprop debug.fb.rgb565 1
setprop debug.sf.lag_adj 0
setprop debug.sf.showfps 0
setprop debug.hwui.max_frame_time 35.55
setprop debug.sf.disable_backpressure 1
setprop debug.hbm.direct_render_pixmaps 1
setprop debug.hwui.render_compability true
setprop debug.heat_suppression 0
setprop debug.systemuicompilerfilter speed
setprop debug.sensor.hal 0
setprop debug.hwui.render_quality high
setprop debug.sf.gpu_freq_index 7
setprop debug.sf.cpu_freq_index 7
setprop debug.sf.mem_freq_index 7
setprop debug.egl.force_fxaa false
setprop debug.egl.force_taa false
setprop debug.egl.force_msaa false
setprop debug.egl.force_ssaa false
setprop debug.egl.force_smaa false
setprop debug.egl.force_mlaa false
setprop debug.egl.force_txaa false
setprop debug.egl.force_csaa false
setprop debug.hwui.fps_divisor -1
setprop debug.redroid.fps 120
setprop debug.disable_sched_boost true
setprop debug.gpu.cooling.callback_freq_limit false
setprop debug.cpu.cooling.callback_freq_limit false
setprop debug.rs.default-CPU-driver 1
setprop debug.rs.default-CPU-buffer 65536
setprop debug.hwui.use_hint_manager 1
setprop debug.egl.profiler 0
setprop debug.enable.gamed false
setprop debug.qualcomm.sns.daemon 0
setprop debug.qualcomm.sns.libsensor 1
setprop debug.sf.disable_client_composition_cache 1
setprop debug.sf.disable_client_composition_cache 1
setprop debug.sf.disable_hw_vsync true
setprop debug.hwui.disable_vsync true
setprop debug.egl.hw 1
setprop debug.sf.native_mode 1
setprop debug.gralloc.gfx_ubwc_disable 1
setprop debug.video.accelerate.hw 1
cmd power set-adaptive-power-saver-enabled false
cmd power set-fixed-performance-mode-enabled true
cmd power set-mode 0
device_config put systemui min_fling_velocity 25000
device_config put systemui max_fling_velocity 25000
settings put secure multi_press_timeout 500
settings put secure long_press_timeout 500
settings put system pointer_speed 7
dumpsys binder_calls_stats --disable
dumpsys binder_calls_stats --disable-detailed-tracking 
settings put global binder_calls_stats sampling_interval=600000000,detailed_tracking=disable,enabled=false,upload_data=false
settings put secure game_auto_temperature 0
settings put system adaptive_fast_charging 1
settings put system super_fast_charging 1
settings put system wireless_fast_charging 1
settings put global adaptive_battery_management_enabled 0
settings put global app_standby_enabled 1
settings put global cached_apps_freezer disabled
settings put global enhanced_processing 0
settings put global preferred_network_mode 9,26
settings put global sem_enhanced_cpu_responsiveness 1
settings put system android.wallpaper.settings_systemui_transparency 0
settings put system min_refresh_rate 0.1
settings put system peak_refresh_rate 0.1
settings put secure long_press_timeout 250
settings put secure multi_press_timeout 250
settings put global accessibility_reduce_transparency 1
settings put global ram_expand_size 4095,8095,9095
settings put global zram_enabled 1
cmd device_config put activity_manager fstrim_mandatory_interval 1
cmd device_config put lmkd_native thrashing_limit_critical 500
cmd device_config put activity_manager bg_current_drain_auto_restrict_abusive_apps_enabled true
cmd device_config put activity_manager_native_boot use_freezer true
cmd device_config put activity_manager max_cached_processes 12
/system/bin/device_config put activity_manager max_phantom_processes 2147483647
/system/bin/device_config put activity_manager max_cached_processes 12
cmd device_config put activity_manager ro.FOREGROUND_APP_MEM 6400
cmd device_config put activity_manager ro.VISIBLE_APP_MEM 8960
cmd device_config put activity_manager ro.SECONDARY_SERVER_MEM 19200
cmd device_config put activity_manager ro.BACKUP_APP_MEM 23040
cmd device_config put activity_manager ro.HOME_APP_MEM 3200
cmd device_config put activity_manager ro.HIDDEN_APP_MEM 23040
cmd device_config put activity_manager ro.EMPTY_APP_MEM 64000
cmd device_config put activity_manager ro.PERCEPTIBLE_APP_MEM 3200
cmd device_config put activity_manager ro.HEAVY_WEIGHT_APP_MEM 19200
cmd device_config put activity_manager ro.CONTENT_PROVIDER_MEM 38400
cmd device_config put activity_manager ro.FOREGROUND_APP_ADJ 25
cmd device_config put activity_manager ro.VISIBLE_APP_ADJ 35
cmd device_config put activity_manager ro.SECONDARY_SERVER_ADJ 75
cmd device_config put activity_manager ro.BACKUP_APP_ADJ 76
cmd device_config put activity_manager ro.HOME_APP_ADJ 26
cmd device_config put activity_manager ro.EMPTY_APP_ADJ 89
cmd device_config put activity_manager ro.HIDDEN_APP_MIN_ADJ 250
cmd device_config put activity_manager ro.HEAVY_WEIGHT_APP_ADJ 36
cmd device_config put activity_manager ro.CONTENT_PROVIDER_ADJ 90
cmd device_config put activity_manager ENFORCE_PROCESS_LIMIT false
cmd device_config put activity_manager MAX_SERVICE_INACTIVITY false
cmd device_config put activity_manager MIN_HIDDEN_APPS false
cmd device_config put activity_manager MAX_HIDDEN_APPS false
cmd device_config put activity_manager MAX_ACTIVITIES false
cmd device_config put activity_manager MAX_RECENT_TASKS false
cmd device_config put activity_manager MIN_RECENT_TASKS false
cmd device_config put activity_manager MAX_PROCESSES false
cmd device_config put activity_manager ro.FOREGROUND_APP_MEM 6400
cmd device_config put activity_manager ro.VISIBLE_APP_MEM 8960
cmd device_config put activity_manager ro.SECONDARY_SERVER_MEM 19200
cmd device_config put activity_manager ro.BACKUP_APP_MEM 23040
cmd device_config put activity_manager ro.HOME_APP_MEM 3200
cmd device_config put activity_manager ro.HIDDEN_APP_MEM 23040
cmd device_config put activity_manager ro.EMPTY_APP_MEM 64000
cmd device_config put activity_manager ro.PERCEPTIBLE_APP_MEM 3200
cmd device_config put activity_manager ro.HEAVY_WEIGHT_APP_MEM 19200
cmd device_config put activity_manager ro.CONTENT_PROVIDER_MEM 38400
settings put system touch.coverage.calibration box
settings put system touch.distance.calibration area
settings put system touch.distance.scale 0
settings put system touch.gestureMode spots
settings put system touch.orientation.calibration interpolated
settings put system touch.orientationAware 1
settings put system touch.pressure.calibration amplitude
settings put system touch.pressure.scale 0.0001
settings put system touch.size.bias 0
settings put system touch.size.calibration geometric
settings put system touch.size.isSummed 0
settings put system touch.size.scale 1
settings put system touch.toolSize.areaScale 22
settings put system touch.toolSize.isSummed 0
settings put system touch.deviceType touchScreen
settings put system view.scroll_friction 10
}
fixlag > /dev/null 2>&1  
game() { 
packages=(
  "com.garena.game.kgvn"
  "com.vng.speedvn"
  "com.vng.codmvn"
  "com.vng.pubgmobile"
  "com.tencent.tmgp.speedmobile"
  "com.roblox.client.vnggames"
  "com.roblox.client"
  "com.dts.freefiremax"
  "com.dts.freefireth"
  "com.GlobalSoFunny.Sausage"
)
for package in "${packages[@]}"; do
  cmd game mode performance "$package"
  cmd device_config put game_overlay "$package" mode=2,fps=120,useAngle=true
done
}
game > /dev/null 2>&1  
echo "Thành công👌"   
echo "Đã bật chế độ fix lag trò chơi 👌"
echo "Cảm ơn các bạn đã sử dụng 😎"
echo "Thắng Lê Uy tín 👽"    
