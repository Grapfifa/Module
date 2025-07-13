#!/system/bin/sh

buff() {
  # Reset kích thước màn hình về mặc định
  wm size reset
  wm density reset
  sleep 0.2

  size=$(wm size | grep -oE '[0-9]+x[0-9]+')
  dpi=$(wm density | grep -oE '[0-9]+')

  if [ -z "$dpi" ]; then
    echo "❌ Không lấy được DPI. Thoát..."
    exit 1
  fi

  width=$(echo "$size" | cut -d'x' -f1)
  height=$(echo "$size" | cut -d'x' -f2)

  compare=$(echo "$dpi < 400" | bc)
  if [ "$compare" -eq 1 ]; then
    scale=1.1
    echo "🔧 Buff màn hình lên $scale"
  else
    scale=0.9
    echo "⚙️ Giảm độ phân giải xuống $scale"
  fi

  new_width=$(echo "$width * $scale" | bc | cut -d'.' -f1)
  new_height=$(echo "$height * $scale" | bc | cut -d'.' -f1)

  wm size ${new_width}x${new_height}
  echo "✅ Kích thước màn hình đã đổi: ${new_width}x${new_height}"
}

buff > /dev/null 2>&1
echo "Đã buff màn thành công ✔"
