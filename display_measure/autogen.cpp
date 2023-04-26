#include "gml_ext.h"
// Struct forward declarations:
// from display_measure.cpp:4:
struct display_measure_result {
	int mx, my, mw, mh;
	int wx, wy, ww, wh;
	int flags;
	char name[128];
};
extern tiny_const_array<display_measure_result> display_measure_all();
static tiny_const_array<display_measure_result> display_measure_all_raw_vec;
dllx double display_measure_all_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	display_measure_all_raw_vec = display_measure_all();
	return (double)(4 + display_measure_all_raw_vec.size() * sizeof(display_measure_result));
}
dllx double display_measure_all_raw_post(void* _out_ptr, double _out_ptr_size) {
	gml_ostream _out(_out_ptr);
	_out.write_tiny_const_array<display_measure_result>(display_measure_all_raw_vec);
	return 1;
}

