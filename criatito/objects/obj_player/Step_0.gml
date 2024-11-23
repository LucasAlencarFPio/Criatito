yspd += 0.1;
xspd = 0;

if (keyboard_check(vk_left)){
	xspd =- 1 //plano cartesiano 
}
if (keyboard_check(vk_right)){
	xspd =+ 1 //plano cartesiano 
}

if (place_meeting(x, y+1, obj_block)){
	yspd = 0; // se estiver no chão ele para de cair
	if keyboard_check(vk_up){
		yspd =- 2 //se estiver no chão ele pula
	} 
}

move_and_collide(xspd, yspd, obj_block); // mover e colidir com o obj block

//espinho e bandeira
if place_meeting(x, y, obj_flag){
	room_goto_next()
}
if place_meeting(x, y, obj_spike){
	room_restart()
}