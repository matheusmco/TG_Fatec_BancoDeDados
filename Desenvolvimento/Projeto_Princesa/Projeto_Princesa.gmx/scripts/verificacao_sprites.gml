///verificacao_sprites
if (sign(vsp) = 0) 
{
    if (sign(hsp) = 0) { sprite_index = sprPlayerIdle; }
    else
    {
        if(sign(hsp) = 1) sprite_index = sprPlayerRunningRight;
        else if(sign(hsp) = -1) sprite_index = sprPlayerRunningLeft;
    }
}
else if (sign(vsp) = 1) { sprite_index = sprPlayerJump; }
else if (sign(vsp) = -1) { sprite_index = sprPlayerFall; }
