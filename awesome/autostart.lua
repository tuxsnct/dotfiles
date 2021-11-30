awful.spawn.with_shell(
  'if (xrdb -query | grep -q "^awesome\\.started:\\s*true$"); then exit; fi;' ..
  'xrdb -merge <<< "awesome.started:true";' ..
  -- list each of your autostart commands, followed by ; inside single quotes, followed by ..
  'dex --environment Awesome --autostart --search-paths "$XDG_CONFIG_DIRS/autostart:$XDG_CONFIG_HOME/autostart"' -- https://github.com/jceb/dex
)

run_once("urxvtd -o -f")
-- run_once("picom -b --experimental-backends")
run_once("redshift-gtk &")
run_once("nm-applet &")
run_once("blueman-applet &")
run_once("cbatticon &")
run_once("pasystray --notify=sink &")
run_once("fcitx5 &")
run_once("copyq &")
run_once("/usr/lib/geoclue-2.0/demos/agent &")
run_once("light-locker &")
run_once("xss-lock -- light-locker-command -l &")

