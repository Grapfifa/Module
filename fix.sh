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
echo "[+] Đang bật chế độ fix lag..."
echo "[*] Đang bật chế độ tăng nhạy cảm ứng..."
echo "[+] Đang bật chế độ tối ưu trò chơi..."
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
for a in debug.sf.early.app.duration debug.sf.early.sf.duration debug.sf.earlyGl.app.duration debug.sf.earlyGl.sf.duration debug.sf.earlyGl_app_phase_offset_ns debug.sf.earlyGl_phase_offset_ns debug.sf.early_app_phase_offset_ns debug.sf.early_phase_offset_ns debug.sf.late.app.duration debug.sf.late.sf.duration debug.sf.late_app_phase_offset_ns debug.sf.late_phase_offset_ns;do setprop "$a" 16666666;done;while true;do sleep 1;refresh_rate="$(dumpsys SurfaceFlinger|grep refresh-rate|awk '{print $3}')";sleep 1;duration="$(echo "1000000000/$refresh_rate/3"|bc)";sleep 1;for surface_flinger in $(getprop|grep duration|grep debug.sf|cut -f1 -d]|tr -d [);do setprop "$surface_flinger" "$duration";done;sleep 1;offset="$(echo "1000000000/$refresh_rate/3/2"|bc)";sleep 1;for surface_flinger in $(getprop|grep phase_ofset_ns|grep debug.sf|cut -f1 -d]|tr -d [);do setprop "$surface_flinger" "$offset";done;sleep 1;done>/dev/null 2>&1&
log() {
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
}
log > /dev/null 2>&1  
grapfifa() {
setprop debug.egl.force_msaa false
setprop debug.hwui.trace_gpu_resources false
setprop debug.display.render_frame_rate_is_physical_refresh_rate true
setprop debug.hwui.skia_use_perfetto_track_events false
setprop debug.sf.enable_gl_backpressure true
setprop debug.sf.show_predicted_vsync false
setprop debug.sf.kernel_idle_timer_update_overlay false
setprop debug.sf.enable_egl_image_tracker false
setprop debug.sf.edge_extension_shader false
setprop debug.generate-debug-info false
setprop debug.hwui.render_dirty_regions false
setprop debug.hwui.skip_eglmanager_telemetry true
setprop debug.hwui.capture_skp_enabled true
setprop debug.hwui.disabledither true
setprop debug.egl.callstack false
setprop debug.sf.vsp_trace 0
setprop debug.sf.drop_missed_frames 0
setprop debug.egl.trace 0
setprop debug.hwui.skia_tracing_enabled 0
setprop debug.hwui.skia_atrace_enabled 0
setprop debug.hwui.profile 0
setprop debug.display.allow_non_native_refresh_rate_override 1
setprop debug.hwui.skip_empty_damage 1
setprop debug.sf.layer_history_trace 0
setprop debug.sf.enable_gl_callback 0
setprop debug.sf.luma_sampling 1
setprop debug.sf.use_frame_rate_priority 1
setprop debug.sf.vsync_trace_detailed_info 0
setprop debug.sf.showbackground 0
setprop debug.sf.showupdates 0
setprop debug.onetrace.tag 0
setprop debug.atrace.tags.enableflags 0
setprop debug.fdtrack_enable 0
setprop debug.hwui.early_z 1
setprop debug.hwui.capture_skp_frames 0
setprop debug.hwui.trace_skia 0
setprop debug.mdpcomp.logs 0
setprop debug.sf.dump 0
setprop debug.sf.ddms 0
setprop debug.egl.hw 1
setprop debug.sf.hw 1
settings put global activity_manager_constants max_cached_processes 2048  
setprop debug.egl.force_msaa false  
setprop debug.egl.force_fxaa false  
setprop debug.egl.force_taa false  
setprop debug.egl.force_ssaa false  
setprop debug.egl.force_smaa false  
setprop debug.egl.native_scaling false
setprop debug.hwui.disable_vsync true
setprop debug.egl.vsync 0
setprop debug.rs.vsync false
setprop debug.hwui.use_vsync false
setprop debug.hwui.disable_cpu_vsync true
setprop debug.hwui.disable_gpu_vsync true
setprop debug.hwui.vsync 0
setprop debug.hwui.vsync_enabled 0
setprop debug.hwui.disable_vsync_support true
setprop debug.hwui.vsync_support 0
setprop debug.hwui.vsync_support_enabled 0
settings put system activity_manager_constants \
max_cached_processes=2, \
background_settle_time=10000, \
fgservice_min_shown_time=500, \
fgservice_min_report_time=1000, \
fgservice_screen_on_before_time=500, \
fgservice_screen_on_after_time=2000, \
content_provider_retain_time=5000, \
gc_timeout=3000, \
gc_min_interval=20000, \
full_pss_min_interval=180000, \
full_pss_lowered_interval=120000, \
power_check_interval=180000, \
power_check_max_cpu_1=70, \
power_check_max_cpu_2=100, \
power_check_max_cpu_3=120, \
power_check_max_cpu_4=80, \
service_usage_interaction_time=1200000, \
usage_stats_interaction_interval=1200000, \
service_restart_duration=500, \
service_reset_run_duration=15000, \
service_restart_duration_factor=1, \
service_min_restart_time_between=1500, \
service_max_inactivity=1200000, \
service_bg_start_timeout=5000, \
CUR_MAX_CACHED_PROCESSES=2, \
CUR_MAX_EMPTY_PROCESSES=1, \
CUR_TRIM_EMPTY_PROCESSES=1, \
CUR_TRIM_CACHED_PROCESSES=1, \
foreground_service_start_timeout=1000
#Tối ưu game và tăng nhạy
settings put global window_animation_scale 0.5
settings put global transition_animation_scale 0.5
settings put global animator_duration_scale 0.5
setprop debug.input.resampling 1
setprop debug.input.latency_reduction 1
setprop debug.input.touch_boost 1
setprop debug.input.optimize 1
setprop debug.input.acceleration 1
setprop debug.input.delay 0
setprop debug.input.filter 0
setprop debug.input.min_time 0
setprop debug.input.max_events_per_sec 240
setprop debug.input.multi_touch 1
setprop debug.input.buffer_size 1024
setprop debug.input.process_events 1
setprop debug.input.event_queue_size 512
setprop debug.input.response_time 1
setprop debug.input.fast_path 1
setprop debug.input.low_latency 1
setprop debug.input.prefetch 1
setprop debug.input.event_mode 2
setprop debug.input.optimize_processing 1
setprop debug.input.parallel_processing 1
settings put global tombstone_enhanced_mode 1
settings put global debug.crash_sys_key_enable 1
settings put global debug.detailed_tombstones 1
settings put global package_monitor_enable_tombstone 1
settings put global tombstone_sys_error_control 1
settings put global tombstone_anr_show_background 0
settings put global show_tombstone_on_crash 0
settings put global tombstone_sys_pstore 1
setprop debug.tombstonedeadline 999999999999
setprop debug.crash.logcat 0
setprop debug.dumpstate.enable 1
setprop debug.android.tombstone 1
setprop debug.debuggerd 1
setprop debug.dumpstate 1
setprop debug.detailed_tombstones 1
setprop debug.crash_sys_key_enable 1
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
settings put secure multi_press_timeout 300
settings put secure long_press_timeout 500
settings put system pointer_speed 7
dumpsys binder_calls_stats --disable
dumpsys binder_calls_stats --disable-detailed-tracking 
settings put global binder_calls_stats sampling_interval=600000000,detailed_tracking=disable,enabled=false,upload_data=false
settings put system touch.toolSize.isSummed 0
settings put system touch.deviceType touchScreen
settings put system view.scroll_friction 10
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
}
grapfifa > /dev/null 2>&1  
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
echo "Cảm ơn các bạn đã sử dụng 😎"
echo "Thắng Lê Uy tín 👽"    
