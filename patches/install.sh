echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/base hardware/interfaces hardware/libhardware hardware/lineage/livedisplay hardware/qcom/audio-caf/msm8998 lineage-sdk"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/xiaomi/sagit/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
