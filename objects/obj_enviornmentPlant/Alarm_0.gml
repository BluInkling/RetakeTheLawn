
var xtogo = x + irandom_range(-40,40);
var ytogo = y;

//show_debug_message(x)
//show_debug_message(xtogo)

/// Event were the archer creates the arrow.
ax = x; // Starting position for the arc.
ay = y;

bx = xtogo; // Middle of the arc.
by = ytogo - irandom_range(72,90); // Up 256 pixels to create an arc.

cx = xtogo; // End position of the arc.
cy = ytogo;


with(instance_create_layer(x,y,"Player",obj_collectable))
{
	
    ax = other.ax;
    ay = other.ay;
    bx = other.bx;
    by = other.by;
    cx = other.cx;
    cy = other.cy;
	type = "sun"
	counter = 0; // Increase as we move along the arc.
	moving = true;
	sprite_index = spr_sun
}

alarm[1] = 30














