# T7FontLoader
A font loader for T7 (Black Ops III)

# Features: 
- Allows you to load fonts to prevent lag from happening when the font first appears

# Setup: 
1. Download `T7FontLoader.lua` from the GitHub page 
2. Put the lua file inside of the `UI` folder (located in: Black Ops III/usermaps/yourmap)
3. Add it to your zone file by adding the following: `rawfile,UI/T7FontLoader.lua`
4. Go into your map's main lua file (usually called t7hud_zm_custom) and add `require("UI.T7FontLoader")`

# How to use
To use the FontLoader, you must first open your main HUD file (usually called t7hud_zm_custom). Once that's been done, go to your `PreLoadCallback` function. Above `CoD.Zombie.CommonPreLoadHud(HudRef, InstanceRef)` is where we'll get started.

The FontLoader comes with 3 parameters: `Sender, Fonts, filePath`. filePath is an optional parameter, as that by default is set to the "Fonts" folder. If you fail to provide a value to Sender or Fonts, you'll be greeted with an Error Message saying you've not put a value in.

Important things to note: No file extension has to be added to the "Fonts" parameter (examples provided below in the how to use) and this unfortunately doesn't 100% eliminate the lag depending on the font! Some fonts are made poorly/busted and will result in lag, if this is the case you're usually better off with a new font.

## How to call the FontLoader

The FontLoader can be called in 2 ways, the first is as follows and is the "easier to read" one:

```lua
FontLoader(HudRef, "Font1")
FontLoader(HudRef, "Font2")
FontLoader(HudRef, "Font3")
FontLoader(HudRef, "Font4")
```
You can also however provide a table like so:
```lua
FontLoader(HudRef, {"Font1", "Font2", "Font3", "Font4"})
```

If you have any subfolders in your folder "Fonts" that'll be no problem. You can simply add that to the string like the example provided below:
```lua
FontLoader(HudRef, {"Bold/FontBold1", "Italic/ItalicFont1", "Font1", "Font2"})
```

# Credits/License
Made by MikeyRay. Do with the code what you want, just credit me.
