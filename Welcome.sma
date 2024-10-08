/* Plugin generated by AMXX-Studio */


#include <amxmodx>
#include <amxmisc>
#include <csx>
#include <csstats>


#define PLUGIN "Welcome"
#define VERSION "1.0"
#define AUTHOR "Yan"
#define SERVER_NAME "LVM Servers DeathMatch"

new gClientEnterMessage[150];
new red=255,blue=0,green=0,Float:x=-1.0,Float:y=0.35,effects=2,Float:fxtime=6.0,Float:holdtime=12.0,
    Float:fadeintime=0.1,Float:fadeouttime=0.001,channel=-1;



public plugin_init() {
    register_plugin(PLUGIN, VERSION, PLUGIN);
    return PLUGIN_CONTINUE;
}


public plugin_precache() 
{
	
}
 
// Creates HUD messages
public client_putinserver(id)
{
    set_task(8.0,"WelcomeMessage",id);
}

public WelcomeMessage(id)
{
    new szName [100];
    get_user_name(id, szName, 99);
    formatex(gClientEnterMessage, 149, "Welcome %s to %s!", szName, SERVER_NAME)
    console_print(id, gClientEnterMessage); // print to client console
    set_hudmessage(red,blue,green,x,y,effects,fxtime,holdtime,fadeintime,fadeouttime,channel);
    show_hudmessage(id, gClientEnterMessage); // show hud message
    return 1;
}

/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ ansicpg1252\\ deff0\\ deflang1033{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ f0\\ fs16 \n\\ par }
*/
