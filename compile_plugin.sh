#!/bin/bash
plugin_name="Hook"
cd /home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/scripting
cp /workspaces/plugins/$plugin_name.sma ~/
/home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/scripting/amxxpc ~/$plugin_name.sma -i/home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/scripting/include -o/home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/plugins/$plugin_name.amxx
cd /workspaces/plugins/
# mv /home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/plugins/$plugin_name.sma.amxx /home/steam/Steam/steamapps/common/Half-Life/cstrike/addons/amxmodx/plugins/$plugin_name.amxx