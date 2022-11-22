TEXT_LIST=(
    "ALL THREE WERE RELEASED AFTER THEY WERE ASSESSED TO NO LONGER POSE A SECURITY THREAT NEEDING PREVENTIVE DETENTION" "BECAUSE ONE DAB IS NEVER ENOUGH" "ONE SUCH EVENT IS THE NATIONAL DAY PARADE" 
)

index=7

VOICE_START=1
VOICE_END=155
CANDIDATES=3
PRESET="fast"

for text in "${TEXT_LIST[@]}"
do  
    OUTPUT_PATH="results${index}/"
    for ((c=$VOICE_START; c<=$VOICE_END; c++)) 
    do
        echo "Generating audio for voice $c" 
        python3 tortoise/do_tts.py \
            --text "${text}" \
            --voice "${c}" \
            --preset "${PRESET}" \
            --candidates "${CANDIDATES}" \
            --output_path "${OUTPUT_PATH}"
    done
    echo "done for index ${index}"
    index=$((index+1))
done
    