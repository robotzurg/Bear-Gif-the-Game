global.choice = "Default"
global.attackchoice = "Default"
open_enemy_panel = false;
open_wep_panel = false;
target = "none";
alarm[1] = drawdelay;
if instance_exists(select1) and instance_exists(select2) {
	instance_destroy(select1);
	instance_destroy(select2);
}
if instance_exists(o_atkheadbutt) {
	instance_destroy(o_atkheadbutt)
}
select1 = "N/A";
select2 = "N/A";
global.turnfocus++;