if (sprite_index != spr_hit)
{
	hp -= other.base_dmg;
	sprite_index = spr_hit;
	image_index = 0;
}