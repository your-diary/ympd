__input="demo.mkv"
__output="demo_annotated.mkv"

ffmpeg -y -i "${__input}" -filter:v \
drawtext=text="original \`ympd\`":box=1:boxcolor=Orange:boxborderw=10:x=20:y=164:fontcolor=Black:fontsize=16,\
drawtext=text="\`ympd++\`":box=1:boxcolor=Orange:boxborderw=10:x=480:y=164:fontcolor=Black:fontsize=16 \
"${__output}"

