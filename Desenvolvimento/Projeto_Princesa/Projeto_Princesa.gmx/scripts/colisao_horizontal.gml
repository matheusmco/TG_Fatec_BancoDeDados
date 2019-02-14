///colisao_horizontal

/*
* loop para movimentar o sprite até o mais perto possível do objeto com o 
* qual vai colidir
*/
is_colisao_horizontal = false;

if (place_meeting(x+hsp,y,objCaixa))
{
    if (place_meeting(x,y-5,objCaixa))
    {
        while(!place_meeting(x+sign(hsp),y,objCaixa))
        {
            x += sign(hsp);
        }
        is_colisao_horizontal = true;
    }
}
else if (place_meeting(x+hsp,y,objBarril))
{
    if (place_meeting(x,y-5,objBarril))
    {
        while(!place_meeting(x+sign(hsp),y,objBarril))
        {
            x += sign(hsp);
        }
        is_colisao_horizontal = true;
    }
}
else if (place_meeting(x+hsp,y,objCarroca))
{
    if (place_meeting(x,y-5,objCarroca))
    {
        while(!place_meeting(x+sign(hsp),y,objCarroca))
        {
            x += sign(hsp);
        }
        is_colisao_horizontal = true;
    }
}
else if (place_meeting(x+hsp,y,objPlataformaSuspensa))
{
    if (place_meeting(x,y-5,objPlataformaSuspensa))
    {
        while(!place_meeting(x+sign(hsp),y,objPlataformaSuspensa))
        {
            x += sign(hsp);
        }
        is_colisao_horizontal = true;
    }
}
else if (place_meeting(x+hsp,y,objPoco))
{
    if (place_meeting(x,y-5,objPoco))
    {
        while(!place_meeting(x+sign(hsp),y,objPoco))
        {
            x += sign(hsp);
        }
        is_colisao_horizontal = true;
    }
}

//se existir uma colisão, valor da velocidade vertical será 0
if (is_colisao_horizontal) { hsp = 0; }
else
{
    if (sign(vsp) == 0) 
    {
        if (sign(hsp) == 0) { sprite_index = sprPlayerIdle; }
        else
        {
            if(sign(hsp) == 1) sprite_index = sprPlayerRunningRight;
            else if(sign(hsp) == -1) sprite_index = sprPlayerRunningLeft;
        }
    }
}
