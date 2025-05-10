# PipeWire Configuration Note

## 1. Install PipeWire

```bash
apt install pipewire pipewire-audio-client-libraries libspa-0.2-jack libspa-0.2-bluetooth pipewire-pulse wireplumber gstreamer1.0-pipewire libsox-fmt-all
```

## 2. Set Environment Variable

```bash
export SDL_AUDIODRIVER=pulse
export PULSE_SERVER=unix:/run/user/1000/pulse/native
```

