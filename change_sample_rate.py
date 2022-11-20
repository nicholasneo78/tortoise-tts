import os
import librosa
import soundfile as sf

filepath = '/home/nicholas/code/tortoise-tts/results/1_0_0.wav'
target_sr = 16000


speech_array, sr = librosa.load(filepath, sr=None)
speech_array_16k = librosa.resample(speech_array, orig_sr=sr, target_sr=target_sr)

# overwrite the sound with the target sample rate
sf.write(filepath, speech_array_16k, target_sr, subtype='PCM_16')
