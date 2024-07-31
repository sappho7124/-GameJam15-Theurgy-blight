// Set the color of the text
draw_set_color(c_white);

// Set the font and alignment if needed (optional)
// draw_set_font(font0); // Uncomment and replace 'font0' with your font if you have a specific font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw the text at the desired position
var text_x = room_width / 2 ; // Center of the room horizontally
var text_y = (room_height / 2); // Center of the room vertically
draw_text(text_x, text_y, "You escaped, you have the soul of an emperor, you are amazing");
