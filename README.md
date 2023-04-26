# display_measure

**Quick links:** [documentation](https://yal.cc/docs/gm/display_measure/)
· [itch.io](https://yellowafterlife.itch.io/gamemaker-display-measure)
· [GM Marketplace](https://marketplace.yoyogames.com/assets/8517/display_measure)  
**Platforms:** Windows, Windows (YYC)​  
**Versions:** GM:S 1.4, GMS2.2, GMS2.3/GM2022+

This miniature extension lets you poll coordinates and dimensions of all displays, alongside with active areas (in other words, areas excluding taskbars) and minor metadata (whether the display is primary, system-assigned display name).

This can be used for things like:

- Getting dimensions of the monitor where your game is (rather than the primary one)
- Positioning your game relative to work area (minus taskbar) rather than just desktop
- Letting the multi-monitor users pick where to show the game

## Code example

```gml
var arr = display_measure_all();
// note: use array_length_1d in old GM versions
for (var i = 0; i < array_length(arr); i++) {
    var inf = arr[i];
    show_debug_message(inf);
    
    show_debug_message("Name: " + inf[9]);
    
    show_debug_message("Location: "
        + string(inf[2]) + "x" + string(inf[3]) + " at "
        + string(inf[0]) + "," + string(inf[1])
    );
    
    show_debug_message("Work area: "
        + string(inf[6]) + "x" + string(inf[7]) + " at "
        + string(inf[4]) + "," + string(inf[5])
    );
    
    var _primary = (inf[8] & 1) != 0;
    show_debug_message("Is primary: " + string(_primary));
}
```

## Building

See [BUILD.md](BUILD.md)

## Meta

**Author:** [YellowAfterlife](https://github.com/YellowAfterlife)  
**License:** Custom license (see [LICENSE](LICENSE))
