#!/bin/bash

#ustawienie języka i dopasowanie komunikatów :)
echo "Wybierz preferowany język (pl/en)";
echo "Select your preferred language (pl/en)";
read -p "> " lan

case "$lan" in
  1 | p | pl | P | PL | "polski" | "Polski" | "POLSKI" | "pOLSKI")
    echo "Ustawiono na język polski."
    i="Instalujeny";
    i_i="Lista programów które zostaną zainstalowane:";
    i_yes="Czy chcesz zainstalować te programy?";
    i_start="Rozpoczynam instalację programów";
    i_exit="Zamykam program :(";
    i_note="Edytor tekstu";
    i_menu="Menu główne | edytor menu start";
    i_shop="Oprogramowanie | sklemu z aplikacjami";
    i_flat="flatpack / flathub | dodatkowe aplikacje (repozytorium) do sklepu";
    i_bitw="Bitwarden | menadzer haseł - twój sejf z hasłami :)";
    i_mega="MEGAsyns | Program do szyfrowanego dysku w chmurze";
    i_anyd="AnyDesk | twoja pomoz zdalna";
    i_chrome="Google Chrome | twoje okno na świat";
    i_ofic="Pakiet biurowy - Offce";
    i_tofi="Wybierz rodzaj pakietu Office";
    i_fiic="Są do wyboru dwa pakiety Office i wyciesz który chcesz zainstalować.";
    i_libo="LibreOffice | Darmowy paniet biurowy";
    i_wpso=" WPS Office | Alternatywa dla MS Office";
    i_ofvs="Główne różnice między Pakietami Office";
    i_offi="Różnice międzi Pakietami Office:
    Licencje:
        - LibreOffice jest oprogramowaniem typu open source i jest twożony przez społeczność oraz jest darmowy dla wszystkich.

        - WPS Office jest przeznaczony dla mniejszych grup i oferuje bezpłatną podstawową licencję tylko do zastosowań domowych.

    Funkcje i kompatybilność plików:
        - WPS Office wyróżnia się w zakresie kompatybilności plików, narzędzi sztucznej inteligencji i szablonów. Oferuje bardziej praktyczne funkcje i lepsze wrażenia użytkownika niż LibreOffice.

        - LibreOffice również spełnia podstawowe potrzeby przetwarzania tekstu, edycji arkuszy kalkulacyjnych i tworzenia prezentacji, ale może być bardziej wymagający w nauce i nie oferuje tak zaawansowanych funkcji jak WPS Office.
";
    ;;
  2 | e | en | E | EN | english | English | ENGLiSH | eNGLISH)
    echo "Set to English language."
    ;;
  *)
    echo "Nieprawidłowy wybór. Wybierz Polski 'pl' lub English 'en'."
    echo "Incorrect selection. Select  Polish 'pl' or  English 'en'."
    echo"";
    ./3-install.sh 
    exit
    ;;
esac

echo "";
echo "";
echo "$i_yes";
echo "";
echo "• $i_note";
echo "• $i_menu";
echo "• $i_shop";
echo "• $i_flat";
echo "• $i_bitw";
echo "• $i_mega";
echo "• $i_anyd";
echo "• $i_chrome";
echo "• $i_ofic";
read -p ">  [yes]" yess
if [[ "$yess" == "yes" || "$yess" == "y" || "$yess" == "ye" || "$yess" == "" || "$yess" == " " || "$yess" == "t" || "$yess" == "ta"  || "$yess" == "tak" ]]; then
    # sukces, przechodzimy dalej :)
    echo"";
else
    echo "$i_exit";
    exit;
fi

clear
echo "$i_fiic";
echo "• $i_libo - Lible / l";
echo "• $i_wpso - WPS / w";
echo "• $i_ofvs - info / i / vs";
read -p ">LibreOffice / WPS Office  [info]" PacOfi

case "$PacOfi" in
  1 | "LIBLEOFFICE" | "LibleOffice" | "lIBLEoFFICE" | "LIBLE" | "lIBLE" | "Lible" | "lible" | "LIB" | "lIB" | "lib" | "LIb")
    
    ;;

  2 | "WPSOffice" | "WPS Office" | "wpsoffice" | "wps office"  | "wpsoFFICE" | "wps oFFICE" | "WPSOFFICE" | "WPS OFFICE" | "w" | "W")
    
    ;;

  3 | "Info" | "info" | "i" | "I"  | "vs" | "VS" | "Vs" | "WPSOFFICE")
    echo "$i_offi";
    ;;
esac
read -p ">LibreOffice / WPS Office  []" PacOfi


echo $i_start;
echo "$i $i_note";
sudo apt install -y mousepad
echo "$i $i_menu";
sudo apt install -y alacarte
echo "$i $i_shop";
sudo apt install -y gnome-software
echo "$i $i_flat";
sudo apt install -y snap
echo "$i $i_flat";
sudo apt install -y flatpak
echo "$i $i_bitw";
flatpak install flathub com.bitwarden.desktop
echo "$i $i_mega";
flatpak install flathub nz.mega.MEGAsync
echo "$i $i_anyd";
flatpak install flathub com.anydesk.Anydesk
echo "$i $i_chrome";
flatpak install flathub com.google.Chrome
echo "$i $i_logo";
flatpak install flathub org.libreoffice.LibreOffice

#echo "$i chrome"
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo apt install -y ./google-chrome-stable_current_amd64.deb

echo "End $x";

echo "Rozszerzenia do przeglądarek:";
echo "- Firefox:";
echo "        • Adblock Plus";
echo "https://addons.mozilla.org/pl/firefox/addon/adblock-plus/";
echo "";
echo "        • Tłumacz DeepL";
echo "https://addons.mozilla.org/en-US/firefox/addon/deepl-translate/";
echo "";
echo "        • h264ify";
echo "https://addons.mozilla.org/pl/firefox/addon/h264ify/";
echo "";
echo "        • YouTube Redux";
echo "https://addons.mozilla.org/pl/firefox/addon/youtube-redux/";
echo "";
echo "";
echo "- Chrome:";
echo "        • Adblock";
echo "https://chromewebstore.google.com/detail/name/gighmmpiobklfepjocnamgkkbiglidom";
echo "";
echo "        • Adblock Plus";
echo "https://chromewebstore.google.com/detail/name/mdgdgieddpndgjlmeblhjgljejejkikf";
echo "";
echo "        • h264ify";
echo "https://chromewebstore.google.com/detail/name/aleakchihdccplidncghkekgioiakgal";
echo "";
echo "        • YouTube Redux";
echo "https://chromewebstore.google.com/detail/name/mdgdgieddpndgjlmeblhjgljejejkikf";
echo "";

