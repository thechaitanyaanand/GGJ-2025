draw_sprite(spr_story_box,0,x,y);
draw_set_font(fnt_card_name_2);
draw_set_halign(fa_center);
draw_text_ext(x,y+250,button[page],stringWeight+10,boxWidth-130);
draw_set_font(fnt_card_name_1)
if(charCount< string_length(text[page]))
{
charCount+=0.7;
}
textPart=string_copy(text[page],1,charCount);
draw_set_halign(fa_center);
draw_text_ext(x,y-200,textPart,stringWeight-20,boxWidth-130);
