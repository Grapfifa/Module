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
refresh_rate=$(dumpsys SurfaceFlinger | grep -m1 "refresh-rate" | awk '{print int($3)}')
echo "Tần số quét phát hiện: $refresh_rate Hz"

case "$refresh_rate" in
  60)
    frame_ns=16666667
    phazev1=995000
    phazev2=1984000
    phazev3=4012000
    phazev4=4762000
    phazev5=5596000
    phazev6=9200000
    phazev7=17540000
    hwc_duration=21666667
    ;;
  90)
    frame_ns=11111111
    phazev1=663636
    phazev2=1322798
    phazev3=2677156
    phazev4=3174603
    phazev5=3728597
    phazev6=6132605
    phazev7=11701064
    hwc_duration=14444444
    ;;
  120)
    frame_ns=8333333
    phazev1=497015
    phazev2=991101
    phazev3=2008056
    phazev4=2380952
    phazev5=2800000
    phazev6=4601845
    phazev7=8771930
    hwc_duration=10833333
    ;;
  144)
    frame_ns=6944444
    phazev1=414903
    phazev2=826718
    phazev3=1673494
    phazev4=2026984
    phazev5=2373892
    phazev6=3900552
    phazev7=7425736
    hwc_duration=9027777
    ;;
  *)
    echo "Không hỗ trợ tần số quét này ($refresh_rate Hz). Thoát."
    exit 1
    ;;
esac
setprop debug.sf.hwc.min.duration $hwc_duration
setprop debug.sf.high_fps_early_app_phase_offset_ns $phazev1
setprop debug.sf.high_fps_early_gl_app_phase_offset_ns $phazev1
setprop debug.sf.early_app_phase_offset_ns $phazev2
setprop debug.sf.early_gl_app_phase_offset_ns $phazev2
setprop debug.sf.high_fps_early_gl_phase_offset_ns $phazev3
setprop debug.sf.high_fps_early_phase_offset_ns $phazev3
setprop debug.sf.region_sampling_duration_ns $phazev4
setprop debug.sf.cached_set_render_duration_ns $phazev4
setprop debug.sf.early.app.duration $phazev4
setprop debug.sf.early.sf.duration $phazev4
setprop debug.sf.earlyGl.app.duration $phazev4
setprop debug.sf.earlyGl.sf.duration $phazev4
setprop debug.sf.early_gl_phase_offset_ns $phazev5
setprop debug.sf.early_phase_offset_ns $phazev5
setprop debug.sf.region_sampling_period_ns $phazev6
setprop debug.sf.phase_offset_threshold_for_next_vsync_ns $phazev6
setprop debug.sf.high_fps_late_app_phase_offset_ns $phazev6
setprop debug.sf.high_fps_late_sf_phase_offset_ns $phazev6
setprop debug.sf.late.app.duration $phazev6
setprop debug.sf.late.sf.duration $phazev6
setprop debug.sf.region_sampling_timer_timeout_ns $phazev7
echo "Đã áp dụng tối ưu cho $refresh_rate Hz thành công."
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
settings put system touchscreen_sensitivity_threshold 9
settings put system touch.size.calibration geometric
settings put system touch.coverage.calibration octagram
settings put system touch.pressure.scale 0.0001
settings put system touch.gesturemode spots
device_config put systemui min_fling_velocity 25000
device_config put systemui max_fling_velocity 25000
settings put secure multi_press_timeout 500
settings put secure long_press_timeout 500
settings put system pointer_speed 7
dumpsys binder_calls_stats --disable
dumpsys binder_calls_stats --disable-detailed-tracking 
settings put global binder_calls_stats sampling_interval=600000000,detailed_tracking=disable,enabled=false,upload_data=false
settings put secure game_auto_temperature 0
settings put secure game_dashboard_always_on 1
}> /dev/null 2>&1  
fixlag  
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
}> /dev/null 2>&1  
echo "[+] Đang buff màn hình..."
current_size=$(wm size | grep -oE '[0-9]+x[0-9]+')
width=$(echo "$current_size" | cut -d'x' -f1)
height=$(echo "$current_size" | cut -d'x' -f2)
current_dpi=$(wm density | grep -oE '[0-9]+')
if [ -z "$width" ] || [ -z "$height" ] || [ -z "$current_dpi" ]; then
    echo "❌ Không lấy được thông tin màn hình hoặc DPI"
    exit 1
fi
width=$(expr "$width" + 0)
height=$(expr "$height" + 0)
current_dpi=$(expr "$current_dpi" + 0)
echo "📱 Độ phân giải gốc: ${width}x${height}, DPI: $current_dpi"
if [ "$current_dpi" -lt 400 ]; then
    echo "🚀 Tăng DPI và độ phân giải"
    new_width=$((width * 11 / 10))
    new_height=$((height * 11 / 10))
    new_dpi=$((current_dpi + 40))
else
    echo "📉  → Giảm DPI và độ phân giải "
    new_width=$((width * 8 / 10))
    new_height=$((height * 8 / 10))
    tentative_dpi=$((current_dpi * 95 / 100))
    if [ "$tentative_dpi" -lt 320 ]; then
        new_dpi=320
    else
        new_dpi=$tentative_dpi
    fi
fi
wm size "${new_width}x${new_height}" >/dev/null 2>&1
wm density "$new_dpi" >/dev/null 2>&1
echo "✅ Đã thay đổi: ${new_width}x${new_height}, DPI: $new_dpi"
echo "Thành công👌"   
echo "Đã bật chế độ fix lag trò chơi 👌"
echo "Cảm ơn các bạn đã sử dụng 😎"
echo "Thắng Lê Uy tín 👽"    
