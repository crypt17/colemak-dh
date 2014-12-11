
Install the file:
------------------------------------------------------------
    #> sudo cp colemak-dh /usr/share/X11/xkb/symbols/

    Some Linux distributions store the xkb symbols here instead
    #> sudo cp colemak-dh /etc/X11/xkb/symbols/


Switch to Colemak-DH
------------------------------------------------------------
    setxkbmap -v colemak-dh && xset r 66 


Switch back to Qwerty
------------------------------------------------------------
   setxkbmap us && xset -r 66

