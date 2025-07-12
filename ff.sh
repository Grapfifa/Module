#!/system/bin/sh
echo "DEV: GRAP FIFA"
echo "Zalo: Thangle / YTB: GRAP FIFA / Tik Tok: GRAP FIFA"
echo "🚀Module fix lag freefireth và freefiremax🚀"
echo "📂Chức năng chính:"
echo "→Xóa skin súng✔"
sleep 1
echo "→Xóa văn bản✔"
sleep 1
echo "→Xóa hình ảnh✔"
sleep 1
echo "→Xóa tự động cập nhật gói mở rộng✔"
fixlag() {
    for pkg in "com.dts.freefireth" "com.dts.freefiremax"; do
        base_path="/storage/emulated/0/Android/data/${pkg}/files/contentcache/Optional/android"
        folders=(
            "gameassetbundles"
            "optionalavatarres/gameassetbundles"
            "optionalfootballres/gameassetbundles"
            "optionalinfection/gameassetbundles"
            "optionalingameres/gameassetbundles"
            "optionallobbyres/gameassetbundles"
            "optionallocres/gameassetbundles"
            "optionallonewolfres/gameassetbundles"
            "optionalmap1res/gameassetbundles"
            "optionalmap4res/gameassetbundles"
            "optionalmaphippores/gameassetbundles"
            "optionalmapponyres/gameassetbundles"
            "optionalmapres/gameassetbundles"
            "optionalnewblast/gameassetbundles"
            "optionalpetres/gameassetbundles"
            "optionalrushingpetsres/gameassetbundles"
            "optionalsocialres/gameassetbundles"
            "optionaltrainingres/gameassetbundles"
            "optionalugcres/gameassetbundles"
            "optionalvoiceres/gameassetbundles"
            "optionalwerunres/gameassetbundles"
        )

        for folder in "${folders[@]}"; do
            full_path="${base_path}/${folder}"
            rm -rf "$full_path"
            touch "$full_path"
            echo "Thang_Le_uy_tin" > "$full_path"          
        done

        cdnicon_path="/storage/emulated/0/Android/data/${pkg}/files/ImageCache/CDNICON"
        rm -rf "$cdnicon_path"
        touch "$cdnicon_path"
        echo "Thang_Le_uy_tín" > "$cdnicon_path"
    done
}
fixlag > /dev/null 2>&1     
echo "Đã tối ưu thành công bạn có thể vào 🎮"
sleep 1
echo "An toàn 100% ✔👌👍"
