#!/usr/bin/env bash

# Membunuh polybar yang sudah jalan
killall -q polybar

# Tunggu hingga benar-benar mati
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Mulai polybar
polybar mybar &
