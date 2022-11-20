TEXT="PERFORM A STOP MARKET ORDER FOR THREE HUNDRED LOTS"

VOICE_START=1
VOICE_END=3
CANDIDATES=5
PRESET="fast"

for ((c=$VOICE_START; c<=$VOICE_END; c++)) 
do
    echo "Generating audio for voice $c" 
    python3 tortoise/do_tts.py \
        --text "${TEXT}" \
        --voice "${c}" \
        --preset "${PRESET}" \
        --candidates "${CANDIDATES}"
done