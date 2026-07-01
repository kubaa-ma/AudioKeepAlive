# AudioKeepAlive

AudioKeepAlive is a simple Windows utility that keeps audio devices active by continuously playing a very low-level background audio stream.

Some USB DACs, Bluetooth audio devices, AV receivers or speakers may produce buzzing, clicks or unwanted noise when there is no audio signal. This project helps prevent that by keeping the audio output active with an almost inaudible audio file.

## Features

- Works with USB DACs
- Works with Bluetooth audio devices
- Works with AV receivers
- Works with powered speakers
- Lightweight
- Starts automatically with Windows
- Hidden background execution
- No additional software required except MPV


## Requirements

- Windows
- MPV Player

## Installation

1. Install MPV.
2. Copy the project folder anywhere you like.
3. Edit `start_keep_alive.vbs` if your file paths are different.
4. Create a shortcut to `start_keep_alive.vbs`.
5. Press `Win + R` and type:

```
shell:startup
```

6. Copy the shortcut into the Startup folder.

The audio stream will now start automatically every time you log in.

## How it works

The script starts MPV in the background without opening a window.

MPV continuously plays a very low-level pink noise WAV file. The signal is almost inaudible but keeps the audio output active.

This can help reduce or eliminate:

- buzzing
- humming
- clicking
- audio device sleep
- unwanted analog noise

on some audio hardware.

## Stop

Simply end `mpv.exe` in Task Manager or remove the shortcut from the Startup folder.

## Notes

This project was created for devices that behave differently when the audio output becomes completely silent.

It does not modify the audio driver or hardware. It simply keeps a valid audio stream active.

Results depend on the audio hardware being used.
