/// @description Returns the instance id of an object colliding with a given line and closest to the first point, or noone if no instance found.
/// @param x1 First point x on collision line
/// @param y1 First point y on collision line
/// @param x2 Second point x on collision line
/// @param y2 Second point y on collision line
/// @param object Which objects to look for (or all)
/// @param prec If true, use precise collision checking
/// @param notme If true, ignore the calling instance

function collision_line_first(x1, y1, x2, y2, object, prec, notme) {
    var ox = x1;
    var oy = y1;
    var dx = x2;
    var dy = y2;
    var sx = dx - ox;
    var sy = dy - oy;
    var inst = collision_line(ox, oy, dx, dy, object, prec, notme);

    if (inst != noone) {
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            var i = collision_line(ox, oy, dx, dy, object, prec, notme);
            if (i) {
                dx -= sx;
                dy -= sy;
                inst = i;
            } else {
                dx += sx;
                dy += sy;
            }
        }
    }
    return inst;
}
