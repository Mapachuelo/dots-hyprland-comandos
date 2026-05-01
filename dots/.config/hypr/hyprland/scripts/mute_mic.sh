#!/bin/bash
# Alternar silencio
wpctl set-mute @DEFAULT_SOURCE@ toggle

# Obtener el nuevo estado (estará como [MUTED] o vacío)
STATE=$(wpctl get-volume @DEFAULT_SOURCE@)

if [[ $STATE == *"MUTED"* ]]; then
    notify-send -e -u low -i microphone-sensitivity-muted-symbolic "Micrófono" "Silenciado"
else
    notify-send -e -u low -i microphone-sensitivity-high-symbolic "Micrófono" "Activo"
fi
