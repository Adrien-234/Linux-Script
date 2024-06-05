#!/bin/bash

# Zmienna zawierająca treść informacji o pakietach biurowych
i_offi="LibreOffice to darmowy pakiet biurowy, a WPS Office to alternatywa dla MS Office."

while true; do
    echo "• LibreOffice | Darmowy pakiet biurowy - Lible / l"
    echo "• WPS Office | Alternatywa dla MS Office - WPS / w"
    echo "• Główne różnice między pakietami Office - info / i / vs"
    read -p "> LibreOffice / WPS Office [info]: " PacOfi

    case "$PacOfi" in
        1 | "LIBLEOFFICE" | "LibleOffice" | "lIBLEoFFICE" | "LIBLE" | "lIBLE" | "Lible" | "lible" | "LIB" | "lIB" | "lib" | "LIb")
            instalOffice="LibreOffice"
            # Wykonanie dalszego kodu dla LibreOffice
            ;;
        2 | "WPSOffice" | "WPS Office" | "wpsoffice" | "wps office" | "wpsoFFICE" | "wps oFFICE" | "WPSOFFICE" | "WPS OFFICE" | "w" | "W")
            instalOffice="WPSOffice"
            # Wykonanie dalszego kodu dla WPS Office
            ;;
        3 | "Info" | "info" | "i" | "I" | "vs" | "VS" | "Vs" | "WPSOFFICE")
            echo "$i_offi"
            read -n 1 -s -r -p "Naciśnij dowolny klawisz lub Enter, aby kontynuować..."
            clear
            ;;
        *)
            echo "Błąd: Wybierz poprawną opcję."
            ;;
    esac
done
