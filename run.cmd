REM Syntax: run.cmd source-image.jpg driving-video.mp4

call activate FOM

python crop-video.py --inp driving-video/%2 | FindStr /BC:"ffmpeg" | cmd.exe

del "driving-video\%2"
move "temp\driving-video\%2" "driving-video\%2"

python demo.py ^
--config config/vox-adv-256.yaml ^
--driving_video driving-video/%2 ^
--source_image source-image/%1 ^
--checkpoint fom-checkpoints/vox-adv-cpk.pth.tar ^
--result_video output-video/%2 ^
--relative ^
--adapt_scale

call conda deactivate

ffmpeg -y -i output-video/%2 -i driving-video/%2 ^
-c copy -map 0:v:0 -map 1:a:0 ^
temp/output-video/%2

del "output-video\%2"
move "temp\output-video\%2" "output-video\%2"

echo The output can be found at output-video\%2.