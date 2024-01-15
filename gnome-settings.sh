#! /bin/bash -ex

# Set up GNOME (and stuff) to my liking.
# How to add things here:
# - Run `dconf watch /`
# - Change a setting in the GUI, and coppy its name here!

gsettings set org.gnome.mutter.keybindings switch-monitor "['XF86Display']"

dconf write /org/gnome/mutter/dynamic-workspaces "false"
dconf write /org/gnome/desktop/wm/preferences/num-workspaces "12"
dconf write /org/gnome/desktop/wm/preferences/workspace-names "['com', 'www', 'ofl', 'pvc',   'cpy', 'dir', 'pep', 'rvi',   'abc', 'xyz', 'prz', 'fun']"

for n in $(seq 1 12); do
    dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-$n "['<Super>F$n']"
    dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-$n "['<Primary><Super>F$n']"
done
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-left "['<Primary><Super>Page_Up']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-right "['<Primary><Super>Page_Down']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-left "['<Super>Page_Up']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-right "['<Super>Page_Down']"
dconf write /org/gnome/desktop/wm/keybindings/panel-run-dialog "['<Super>z']"
dconf write /org/gnome/desktop/wm/keybindings/toggle-fullscreen "['<Super>f']"
dconf write /org/gnome/desktop/wm/preferences/button-layout "'appmenu:close'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Super>Return'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'tilix'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'tilix'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Super>x'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'open-kate-for-desktop'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'open-kate-for-desktop'"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

dconf write /org/gnome/desktop/input-sources/xkb-options "['compose:prsc', 'caps:menu', 'numpad:mac']"
dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us'), ('xkb', 'cz+qwerty')]"
dconf write /org/gnome/mutter/overlay-key "'Menu'"

dconf write /org/gnome/desktop/interface/clock-show-seconds "true"
dconf write /org/gnome/desktop/interface/clock-show-weekday "true"

dconf write /org/gnome/desktop/interface/enable-hot-corners "false"
dconf write /org/gnome/mutter/workspaces-only-on-primary "false"
dconf write /org/gnome/shell/app-switcher/current-workspace-only "true"
dconf write /org/gnome/desktop/interface/overlay-scrolling "false"
dconf write /org/gnome/desktop/sound/allow-volume-above-100-percent "true"

dconf write /org/gnome/shell/enabled-extensions "['Bottom_Panel@rmy.pobox.com', 'system-monitor@paradoxxx.zero.gmail.com']"

dconf write /org/gnome/mutter/attach-modal-dialogs "false"

dconf write /com/gexperts/Tilix/theme-variant "'dark'"
dconf write /com/gexperts/Tilix/terminal-title-show-when-single "false"

dconf write /com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d/visible-name "'Default'"
dconf write /com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d/use-theme-colors "true"
dconf write /com/gexperts/Tilix/profiles/2b7c4080-0ddd-46c5-8f23-563fd3ba789d/palette "['#000000', '#CC0000', '#4D9A05', '#C3A000', '#3464A3', '#754F7B', '#05979A', '#D3D6CF', '#545652', '#EF2828', '#89E234', '#FBE84F', '#729ECF', '#AC7EA8', '#34E2E2', '#EDEDEB']"

dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/visible-name "'Presentation'"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/background-color "'#FDF6E3'"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/font "'Monospace 30'"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/foreground-color "'#657B83'"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/use-system-font "false"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/use-theme-colors "false"
dconf write /com/gexperts/Tilix/profiles/76f7be02-983c-4140-b1fa-d1aa2ae14ac7/palette "['#073642', '#DC322F', '#859900', '#B58900', '#268BD2', '#D33682', '#2AA198', '#EEE8D5', '#002B36', '#CB4B16', '#586E75', '#657B83', '#839496', '#6C71C4', '#93A1A1', '#FDF6E3']"

dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/visible-name "'wine'"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/use-theme-colors "false"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/use-system-font "false"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/palette "['#000000', '#AA0000', '#00AA00', '#AA5400', '#0000AA', '#AA00AA', '#00AAAA', '#AAAAAA', '#545454', '#FF5454', '#54FF54', '#FFFF54', '#5454FF', '#FF54FF', '#54FFFF', '#FFFFFF']"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/font "'DOSEGA Medium 12'"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/custom-command "'windows'"
dconf write /com/gexperts/Tilix/profiles/d9ee0edf-7891-4696-9c75-2a1fc33a5466/use-custom-command "true"


dconf write /com/gexperts/Tilix/profiles/list "['2b7c4080-0ddd-46c5-8f23-563fd3ba789d', '76f7be02-983c-4140-b1fa-d1aa2ae14ac7', 'd9ee0edf-7891-4696-9c75-2a1fc33a5466']"

dconf write /org/gnome/nautilus/list-view/default-visible-columns "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified_with_time', 'starred']"
dconf write /org/gnome/nautilus/list-view/default-zoom-level "'small'"
dconf write /org/gnome/nautilus/list-view/use-tree-view "true"
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list-view'"

dconf write /org/gnome/desktop/session/idle-delay "uint32 0"
dconf write /org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-type "'nothing'"

dconf write /org/gnome/desktop/notifications/application/mozilla-thunderbird/show-banners false
dconf write /org/gnome/desktop/notifications/application/mozilla-thunderbird/enable-sound-alerts false

# Alt-tab switches *windows*, not applications
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "@as []"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications-backward "@as []"
dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-windows-backward "['<Shift><Alt>Tab']"
