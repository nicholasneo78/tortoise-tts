TEXT="BECAUSE ONE DAB IS NEVER ENOUGH"

VOICE_START=1
VOICE_END=155
CANDIDATES=3
PRESET="fast"
index=7
OUTPUT_PATH="results${index}/"

for ((c=$VOICE_START; c<=$VOICE_END; c++)) 
do
    echo "Generating audio for voice $c" 
    python3 tortoise/do_tts.py \
        --text "${TEXT}" \
        --voice "${c}" \
        --preset "${PRESET}" \
        --candidates "${CANDIDATES}" \
        --output_path "${OUTPUT_PATH}"
done