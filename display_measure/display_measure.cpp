/// @author YellowAfterlife

#include "stdafx.h"
struct display_measure_result {
	int mx, my, mw, mh;
	int wx, wy, ww, wh;
	int flags;
	char name[128];
};
static struct {
	display_measure_result arr[256];
	size_t count;
} results;

static BOOL CALLBACK display_measure_all_cb(HMONITOR m, HDC hdc, LPRECT _rect, LPARAM p) {
	MONITORINFOEXA inf;
	inf.cbSize = sizeof inf;
	if (!GetMonitorInfoA(m, &inf)) return true;
	auto& out = results.arr[results.count++];

	auto& rect = inf.rcMonitor;
	out.mx = rect.left;
	out.mw = rect.right - rect.left;
	out.my = rect.top;
	out.mh = rect.bottom - rect.top;
	//
	rect = inf.rcWork;
	out.wx = rect.left;
	out.ww = rect.right - rect.left;
	out.wy = rect.top;
	out.wh = rect.bottom - rect.top;
	//
	out.flags = inf.dwFlags;
	//
	if (inf.szDevice[0]) {
		int i = 0;
		int n = min(std::size(out.name), std::size(inf.szDevice));
		while (i < n) {
			auto c = inf.szDevice[i];
			out.name[i] = c;
			if (c == 0) break;
			i += 1;
		}
	} else {
		constexpr char defaultName[] = "<unknown>";
		memcpy(out.name, defaultName, std::size(defaultName));
	}
	return results.count < std::size(results.arr);
}
dllx double display_measure_is_available_raw() { return 1; }
// @dllg:defValue []
dllg tiny_const_array<display_measure_result> display_measure_all() {
	results.count = 0;
	EnumDisplayMonitors(NULL, NULL, display_measure_all_cb, 0);
	return tiny_const_array(results.arr, results.count);
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
	return TRUE;
}
