/// @description

for (var i = positions-1; i > 0; i--;) {
	pos_x[i] = pos_x[i-1];
	pos_y[i] = pos_y[i-1];
}
pos_x[0] = x;
pos_y[0] = y;