#!/bin/bash

# Aktuellen Zustand auslesen (gibt 'true' oder 'false' zurück)
CURRENT_STATUS=$(gsettings get org.gnome.shell disable-user-extensions)

if [ "$CURRENT_STATUS" = "true" ]; then
    # Wenn deaktiviert, schalte sie wieder ein
    gsettings set org.gnome.shell disable-user-extensions false
    echo "Gnome-Erweiterungen wurden AKTIVIERT."
else
    # Wenn aktiviert, schalte sie aus
    gsettings set org.gnome.shell disable-user-extensions true
    echo "Gnome-Erweiterungen wurden DEAKTIVIERT."
fi

