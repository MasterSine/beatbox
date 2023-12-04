'''
This program takes all the files in the current working directory and
checks for the .mp3 files. Then it uses the time series information 
from load and gets the song BPM.
'''

import librosa
import os

path = os.getcwd();
length = len(path)

os.chdir(path)
songlist = []

def roundtofive(number):
    return 5 * round(number / 5)

def temporder(l):
    l.sort(key=lambda a: a[1])
    return l

for file in os.listdir():
    if file.endswith(".mp3"):
        file_path = os.path.join(path, file)

        # Get BPM for each song
        y, sr = librosa.load(file_path)
        tempo, beat_frames = librosa.beat.beat_track(y=y, sr=sr)

        songName = file_path[length + 1: len(file_path) - 4]

        tc = (f"{songName}", roundtofive(tempo))
        songlist.append(tc)

songlist = temporder(songlist)

# Print the sorted list
for song in songlist:
    print(f"{song[0]} - BPM: {song[1]}")
