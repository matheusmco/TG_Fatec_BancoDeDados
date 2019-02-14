///colisao_vertical
/*
* loop para movimentar o sprite até o mais perto possível do objeto com o 
* qual vai colidir
*/

is_colisao_vertical = false;
if(place_meeting(x,y+vsp,objChao)) 
{
    while(!place_meeting(x,y+sign(vsp),objChao))
    {
        y += sign(vsp);
    }
    is_colisao_vertical = true;
}
else if(place_meeting(x,y+vsp,objCaixa)) 
{
    while(!place_meeting(x,y+sign(vsp),objCaixa))
    {
        y += sign(vsp);
    }
    is_colisao_vertical = true;
}
else if(place_meeting(x,y+vsp,objBarril)) 
{
    while(!place_meeting(x,y+sign(vsp),objBarril))
    {
        y += sign(vsp);
    }
    is_colisao_vertical = true;
}
else if(place_meeting(x,y+vsp,objCarroca)) 
{
    while(!place_meeting(x,y+sign(vsp),objCarroca))
    {
        y += sign(vsp);
    }
    is_colisao_vertical = true;
}
else if(place_meeting(x,y+vsp,objPlataformaSuspensa)) 
{
    while(!place_meeting(x,y+sign(vsp),objPlataformaSuspensa))
    {
        y += sign(vsp);
    }
    is_colisao_vertical = true;
}
else if (place_meeting(x,y+vsp,objPoco)) { room_restart(); }

//se existir uma colisão, valor da velocidade vertical será 0
if(is_colisao_vertical) { vsp = 0; }
else
{
    if (sign(vsp) == 1) 
    {
        if ((sign(hsp) == 0 && sprite_index == sprPlayerIdle) || sign(hsp) == 1)
        {
            sprite_index = sprPlayerFallRight;
        }
        else if(sign(hsp) == -1) { sprite_index = sprPlayerFallLeft; }

    }
    else if (sign(vsp) == -1) 
    {
        if((sign(hsp) == 0 && sprite_index == sprPlayerIdle) || sign(hsp) == 1)
        {
            sprite_index = sprPlayerJumpRight;
        }
        else if(sign(hsp) == -1) { sprite_index = sprPlayerJumpLeft; }
    }
}
