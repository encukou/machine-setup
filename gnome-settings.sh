#! /bin/bash -ex

dconf write /org/gnome/mutter/dynamic-workspaces "false"
dconf write /org/gnome/desktop/wm/preferences/num-workspaces "12"
dconf write /org/gnome/desktop/wm/preferences/workspace-names "['com', 'www', 'rht', 'mpt', 'pvc', 'py3', 'cpy', 'pyl', 'abc', 'xyz', 'prz', 'fun']"

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

dconf write /org/gnome/desktop/input-sources/xkb-options "['compose:menu', 'caps:menu', 'numpad:mac']"
dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'us'), ('xkb', 'cz+qwerty')]"
dconf write /org/gnome/mutter/overlay-key "'Menu'"

dconf write /org/gnome/desktop/interface/clock-show-seconds "true"
dconf write /org/gnome/desktop/interface/clock-show-weekday "true"

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

dconf write /com/gexperts/Tilix/profiles/list "['2b7c4080-0ddd-46c5-8f23-563fd3ba789d', '76f7be02-983c-4140-b1fa-d1aa2ae14ac7']"

dconf write /org/gnome/nautilus/list-view/default-visible-columns "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified_with_time', 'starred']"
dconf write /org/gnome/nautilus/list-view/default-zoom-level "'small'"
dconf write /org/gnome/nautilus/list-view/use-tree-view "true"
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list-view'"
