// Boogie file generated by EOG prover
// ProductSpec: 3|threadpooling
procedure product() {
	var _global_next : int;
	var _local__threadpooling_working_0 : int;
	var _local__threadpooling_working_1 : int;
	var _local__threadpooling_working_2 : int;
	var _local__threadpooling_i_0 : int;
	var _local__threadpooling_i_1 : int;
	var _local__threadpooling_i_2 : int;
	var _local__threadpooling_end_0 : int;
	var _local__threadpooling_end_1 : int;
	var _local__threadpooling_end_2 : int;
	var _local__threadpooling_begin_0 : int;
	var _local__threadpooling_begin_1 : int;
	var _local__threadpooling_begin_2 : int;
	assume 0<_global_next;
	assume _local__threadpooling_working_0==-1;
	assume _local__threadpooling_working_1==-1;
	assume _local__threadpooling_working_2==-1;

	BLOCK#0BLOCK#0BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#0BLOCK#0;
	} else if (*) {
		goto BLOCK#0BLOCK#0stepBLOCK#0;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#0step;
	}

	BLOCK#0BLOCK#0BLOCK#0step:
	goto BLOCK#0BLOCK#0BLOCK#1step;

	BLOCK#0BLOCK#0BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#0BLOCK#0BLOCK#2YieldPoint;

	BLOCK#0BLOCK#0BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#0BLOCK#2;
	} else if (*) {
		goto BLOCK#0BLOCK#0stepBLOCK#2;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#2step;
	}

	BLOCK#0BLOCK#0BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#0BLOCK#0BLOCK#3step;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#0BLOCK#0BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#0BLOCK#0BLOCK#4YieldPoint;

	BLOCK#0BLOCK#0BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#0BLOCK#4;
	} else if (*) {
		goto BLOCK#0BLOCK#0stepBLOCK#4;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#4step;
	}

	BLOCK#0BLOCK#0BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#0BLOCK#0BLOCK#2YieldPoint;

	BLOCK#0BLOCK#0stepBLOCK#4:
	goto BLOCK#0BLOCK#1stepBLOCK#4;

	BLOCK#0BLOCK#1stepBLOCK#4:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#0BLOCK#2BLOCK#4YieldPoint;

	BLOCK#0BLOCK#2BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#2BLOCK#4;
	} else if (*) {
		goto BLOCK#0BLOCK#2stepBLOCK#4;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#4step;
	}

	BLOCK#0BLOCK#2BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#0BLOCK#2BLOCK#2YieldPoint;

	BLOCK#0BLOCK#2BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#2BLOCK#2;
	} else if (*) {
		goto BLOCK#0BLOCK#2stepBLOCK#2;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#2step;
	}

	BLOCK#0BLOCK#2BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#0BLOCK#2BLOCK#3step;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#0YieldPoint;
	}

	BLOCK#0BLOCK#2BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#2BLOCK#0;
	} else if (*) {
		goto BLOCK#0BLOCK#2stepBLOCK#0;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#0step;
	}

	BLOCK#0BLOCK#2BLOCK#0step:
	goto BLOCK#0BLOCK#2BLOCK#1step;

	BLOCK#0BLOCK#2BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#0BLOCK#2BLOCK#2YieldPoint;

	BLOCK#0BLOCK#2stepBLOCK#0:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#0BLOCK#3stepBLOCK#0;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#0BLOCK#3stepBLOCK#0:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#0BLOCK#4BLOCK#0YieldPoint;

	BLOCK#0BLOCK#4BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#4BLOCK#0;
	} else if (*) {
		goto BLOCK#0BLOCK#4stepBLOCK#0;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#0step;
	}

	BLOCK#0BLOCK#4BLOCK#0step:
	goto BLOCK#0BLOCK#4BLOCK#1step;

	BLOCK#0BLOCK#4BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#0BLOCK#4BLOCK#2YieldPoint;

	BLOCK#0BLOCK#4BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#4BLOCK#2;
	} else if (*) {
		goto BLOCK#0BLOCK#4stepBLOCK#2;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#2step;
	}

	BLOCK#0BLOCK#4BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#0BLOCK#4BLOCK#3step;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#0YieldPoint;
	}

	BLOCK#0BLOCK#4BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#0BLOCK#4BLOCK#4YieldPoint;

	BLOCK#0BLOCK#4BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#0stepBLOCK#4BLOCK#4;
	} else if (*) {
		goto BLOCK#0BLOCK#4stepBLOCK#4;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#4step;
	}

	BLOCK#0BLOCK#4BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#0BLOCK#4BLOCK#2YieldPoint;

	BLOCK#0BLOCK#4stepBLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#0BLOCK#2BLOCK#4YieldPoint;

	BLOCK#0stepBLOCK#4BLOCK#4:
	goto BLOCK#1stepBLOCK#4BLOCK#4;

	BLOCK#1stepBLOCK#4BLOCK#4:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#4BLOCK#4YieldPoint;

	BLOCK#2BLOCK#4BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#4BLOCK#4;
	} else if (*) {
		goto BLOCK#2BLOCK#4stepBLOCK#4;
	} else {
		goto BLOCK#2BLOCK#4BLOCK#4step;
	}

	BLOCK#2BLOCK#4BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#2BLOCK#4BLOCK#2YieldPoint;

	BLOCK#2BLOCK#4BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#4BLOCK#2;
	} else if (*) {
		goto BLOCK#2BLOCK#4stepBLOCK#2;
	} else {
		goto BLOCK#2BLOCK#4BLOCK#2step;
	}

	BLOCK#2BLOCK#4BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#2BLOCK#4BLOCK#3step;
	} else {
		goto BLOCK#2BLOCK#4BLOCK#0YieldPoint;
	}

	BLOCK#2BLOCK#4BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#4BLOCK#0;
	} else if (*) {
		goto BLOCK#2BLOCK#4stepBLOCK#0;
	} else {
		goto BLOCK#2BLOCK#4BLOCK#0step;
	}

	BLOCK#2BLOCK#4BLOCK#0step:
	goto BLOCK#2BLOCK#4BLOCK#1step;

	BLOCK#2BLOCK#4BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#2BLOCK#4BLOCK#2YieldPoint;

	BLOCK#2BLOCK#4stepBLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#2BLOCK#2BLOCK#0YieldPoint;

	BLOCK#2BLOCK#2BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#2BLOCK#0;
	} else if (*) {
		goto BLOCK#2BLOCK#2stepBLOCK#0;
	} else {
		goto BLOCK#2BLOCK#2BLOCK#0step;
	}

	BLOCK#2BLOCK#2BLOCK#0step:
	goto BLOCK#2BLOCK#2BLOCK#1step;

	BLOCK#2BLOCK#2BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#2BLOCK#2BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#2BLOCK#2;
	} else if (*) {
		goto BLOCK#2BLOCK#2stepBLOCK#2;
	} else {
		goto BLOCK#2BLOCK#2BLOCK#2step;
	}

	BLOCK#2BLOCK#2BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#2BLOCK#2BLOCK#3step;
	} else {
		goto BLOCK#2BLOCK#2BLOCK#0YieldPoint;
	}

	BLOCK#2BLOCK#2BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#2BLOCK#2BLOCK#4YieldPoint;

	BLOCK#2BLOCK#2BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#2BLOCK#4;
	} else if (*) {
		goto BLOCK#2BLOCK#2stepBLOCK#4;
	} else {
		goto BLOCK#2BLOCK#2BLOCK#4step;
	}

	BLOCK#2BLOCK#2BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#2BLOCK#2stepBLOCK#4:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#2BLOCK#3stepBLOCK#4;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#4YieldPoint;
	}

	BLOCK#2BLOCK#0BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#0BLOCK#4;
	} else if (*) {
		goto BLOCK#2BLOCK#0stepBLOCK#4;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#4step;
	}

	BLOCK#2BLOCK#0BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#2BLOCK#0BLOCK#2YieldPoint;

	BLOCK#2BLOCK#0BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#0BLOCK#2;
	} else if (*) {
		goto BLOCK#2BLOCK#0stepBLOCK#2;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#2step;
	}

	BLOCK#2BLOCK#0BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#2BLOCK#0BLOCK#3step;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#2BLOCK#0BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#2stepBLOCK#0BLOCK#0;
	} else if (*) {
		goto BLOCK#2BLOCK#0stepBLOCK#0;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#0step;
	}

	BLOCK#2BLOCK#0BLOCK#0step:
	goto BLOCK#2BLOCK#0BLOCK#1step;

	BLOCK#2BLOCK#0BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#2BLOCK#0BLOCK#2YieldPoint;

	BLOCK#2BLOCK#0stepBLOCK#0:
	goto BLOCK#2BLOCK#1stepBLOCK#0;

	BLOCK#2BLOCK#1stepBLOCK#0:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#2BLOCK#2BLOCK#0YieldPoint;

	BLOCK#2stepBLOCK#0BLOCK#0:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#0BLOCK#0;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#3stepBLOCK#0BLOCK#0:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#0BLOCK#0YieldPoint;

	BLOCK#4BLOCK#0BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#0BLOCK#0;
	} else if (*) {
		goto BLOCK#4BLOCK#0stepBLOCK#0;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#0step;
	}

	BLOCK#4BLOCK#0BLOCK#0step:
	goto BLOCK#4BLOCK#0BLOCK#1step;

	BLOCK#4BLOCK#0BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#4BLOCK#0BLOCK#2YieldPoint;

	BLOCK#4BLOCK#0BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#0BLOCK#2;
	} else if (*) {
		goto BLOCK#4BLOCK#0stepBLOCK#2;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#2step;
	}

	BLOCK#4BLOCK#0BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#4BLOCK#0BLOCK#3step;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#4BLOCK#0BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#4BLOCK#0BLOCK#4YieldPoint;

	BLOCK#4BLOCK#0BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#0BLOCK#4;
	} else if (*) {
		goto BLOCK#4BLOCK#0stepBLOCK#4;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#4step;
	}

	BLOCK#4BLOCK#0BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#4BLOCK#0BLOCK#2YieldPoint;

	BLOCK#4BLOCK#0stepBLOCK#4:
	goto BLOCK#4BLOCK#1stepBLOCK#4;

	BLOCK#4BLOCK#1stepBLOCK#4:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#4BLOCK#2BLOCK#4YieldPoint;

	BLOCK#4BLOCK#2BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#2BLOCK#4;
	} else if (*) {
		goto BLOCK#4BLOCK#2stepBLOCK#4;
	} else {
		goto BLOCK#4BLOCK#2BLOCK#4step;
	}

	BLOCK#4BLOCK#2BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#4BLOCK#2BLOCK#2YieldPoint;

	BLOCK#4BLOCK#2BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#2BLOCK#2;
	} else if (*) {
		goto BLOCK#4BLOCK#2stepBLOCK#2;
	} else {
		goto BLOCK#4BLOCK#2BLOCK#2step;
	}

	BLOCK#4BLOCK#2BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#4BLOCK#2BLOCK#3step;
	} else {
		goto BLOCK#4BLOCK#2BLOCK#0YieldPoint;
	}

	BLOCK#4BLOCK#2BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#2BLOCK#0;
	} else if (*) {
		goto BLOCK#4BLOCK#2stepBLOCK#0;
	} else {
		goto BLOCK#4BLOCK#2BLOCK#0step;
	}

	BLOCK#4BLOCK#2BLOCK#0step:
	goto BLOCK#4BLOCK#2BLOCK#1step;

	BLOCK#4BLOCK#2BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#4BLOCK#2BLOCK#2YieldPoint;

	BLOCK#4BLOCK#2stepBLOCK#0:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#4BLOCK#3stepBLOCK#0;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#4BLOCK#3stepBLOCK#0:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#4BLOCK#4BLOCK#0YieldPoint;

	BLOCK#4BLOCK#4BLOCK#0YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#4BLOCK#0;
	} else if (*) {
		goto BLOCK#4BLOCK#4stepBLOCK#0;
	} else {
		goto BLOCK#4BLOCK#4BLOCK#0step;
	}

	BLOCK#4BLOCK#4BLOCK#0step:
	goto BLOCK#4BLOCK#4BLOCK#1step;

	BLOCK#4BLOCK#4BLOCK#1step:
	_local__threadpooling_begin_2 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_2 := _global_next;
	_local__threadpooling_i_2 := _local__threadpooling_begin_2;
	goto BLOCK#4BLOCK#4BLOCK#2YieldPoint;

	BLOCK#4BLOCK#4BLOCK#2YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#4BLOCK#2;
	} else if (*) {
		goto BLOCK#4BLOCK#4stepBLOCK#2;
	} else {
		goto BLOCK#4BLOCK#4BLOCK#2step;
	}

	BLOCK#4BLOCK#4BLOCK#2step:
	if (_local__threadpooling_i_2 < _local__threadpooling_end_2) {
		goto BLOCK#4BLOCK#4BLOCK#3step;
	} else {
		goto BLOCK#4BLOCK#4BLOCK#0YieldPoint;
	}

	BLOCK#4BLOCK#4BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#4BLOCK#4BLOCK#4YieldPoint;

	BLOCK#4BLOCK#4BLOCK#4YieldPoint:
	if (*) {
		goto BLOCK#4stepBLOCK#4BLOCK#4;
	} else if (*) {
		goto BLOCK#4BLOCK#4stepBLOCK#4;
	} else {
		goto BLOCK#4BLOCK#4BLOCK#4step;
	}

	BLOCK#4BLOCK#4BLOCK#4step:
	assert (!(_local__threadpooling_working_1==_local__threadpooling_working_2)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_2));
	_local__threadpooling_i_2 := _local__threadpooling_i_2 + 1;
	goto BLOCK#4BLOCK#4BLOCK#2YieldPoint;

	BLOCK#4BLOCK#4stepBLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#4BLOCK#2BLOCK#4YieldPoint;

	BLOCK#4stepBLOCK#4BLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#4BLOCK#4YieldPoint;

	BLOCK#4BLOCK#4stepBLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#4BLOCK#2BLOCK#2YieldPoint;

	BLOCK#4stepBLOCK#4BLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#4BLOCK#2YieldPoint;

	BLOCK#4BLOCK#4stepBLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#4BLOCK#2BLOCK#0YieldPoint;

	BLOCK#4stepBLOCK#4BLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#4BLOCK#0YieldPoint;

	BLOCK#4stepBLOCK#2BLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#2BLOCK#0YieldPoint;

	BLOCK#4BLOCK#2BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#4BLOCK#2BLOCK#4YieldPoint;

	BLOCK#4BLOCK#2stepBLOCK#2:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#4BLOCK#3stepBLOCK#2;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#2YieldPoint;
	}

	BLOCK#4BLOCK#3stepBLOCK#2:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#4BLOCK#4BLOCK#2YieldPoint;

	BLOCK#4stepBLOCK#2BLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#4BLOCK#2stepBLOCK#4:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#4BLOCK#3stepBLOCK#4;
	} else {
		goto BLOCK#4BLOCK#0BLOCK#4YieldPoint;
	}

	BLOCK#4BLOCK#3stepBLOCK#4:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#4BLOCK#4BLOCK#4YieldPoint;

	BLOCK#4stepBLOCK#2BLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#2BLOCK#4YieldPoint;

	BLOCK#4stepBLOCK#0BLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#0BLOCK#4YieldPoint;

	BLOCK#4BLOCK#0stepBLOCK#2:
	goto BLOCK#4BLOCK#1stepBLOCK#2;

	BLOCK#4BLOCK#1stepBLOCK#2:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#4BLOCK#2BLOCK#2YieldPoint;

	BLOCK#4stepBLOCK#0BLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#0BLOCK#2YieldPoint;

	BLOCK#4BLOCK#0stepBLOCK#0:
	goto BLOCK#4BLOCK#1stepBLOCK#0;

	BLOCK#4BLOCK#1stepBLOCK#0:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#4BLOCK#2BLOCK#0YieldPoint;

	BLOCK#4stepBLOCK#0BLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_0)) && (!(_local__threadpooling_working_1==_local__threadpooling_working_0));
	_local__threadpooling_i_0 := _local__threadpooling_i_0 + 1;
	goto BLOCK#2BLOCK#0BLOCK#0YieldPoint;

	BLOCK#2BLOCK#0BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#2BLOCK#0BLOCK#4YieldPoint;

	BLOCK#2BLOCK#0stepBLOCK#2:
	goto BLOCK#2BLOCK#1stepBLOCK#2;

	BLOCK#2BLOCK#1stepBLOCK#2:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#2stepBLOCK#0BLOCK#2:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#0BLOCK#2;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#2YieldPoint;
	}

	BLOCK#3stepBLOCK#0BLOCK#2:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#0BLOCK#2YieldPoint;

	BLOCK#2BLOCK#0stepBLOCK#4:
	goto BLOCK#2BLOCK#1stepBLOCK#4;

	BLOCK#2BLOCK#1stepBLOCK#4:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#2BLOCK#2BLOCK#4YieldPoint;

	BLOCK#2stepBLOCK#0BLOCK#4:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#0BLOCK#4;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#4YieldPoint;
	}

	BLOCK#3stepBLOCK#0BLOCK#4:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#0BLOCK#4YieldPoint;

	BLOCK#2BLOCK#3stepBLOCK#4:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#2BLOCK#4BLOCK#4YieldPoint;

	BLOCK#2stepBLOCK#2BLOCK#4:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#2BLOCK#4;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#4YieldPoint;
	}

	BLOCK#3stepBLOCK#2BLOCK#4:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#2BLOCK#4YieldPoint;

	BLOCK#2BLOCK#2stepBLOCK#2:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#2BLOCK#3stepBLOCK#2;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#2YieldPoint;
	}

	BLOCK#2BLOCK#3stepBLOCK#2:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#2BLOCK#4BLOCK#2YieldPoint;

	BLOCK#2stepBLOCK#2BLOCK#2:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#2BLOCK#2;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#2YieldPoint;
	}

	BLOCK#3stepBLOCK#2BLOCK#2:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#2BLOCK#2YieldPoint;

	BLOCK#2BLOCK#2stepBLOCK#0:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#2BLOCK#3stepBLOCK#0;
	} else {
		goto BLOCK#2BLOCK#0BLOCK#0YieldPoint;
	}

	BLOCK#2BLOCK#3stepBLOCK#0:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#2BLOCK#4BLOCK#0YieldPoint;

	BLOCK#2stepBLOCK#2BLOCK#0:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#2BLOCK#0;
	} else {
		goto BLOCK#0BLOCK#2BLOCK#0YieldPoint;
	}

	BLOCK#3stepBLOCK#2BLOCK#0:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#2BLOCK#0YieldPoint;

	BLOCK#2stepBLOCK#4BLOCK#0:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#4BLOCK#0;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#0YieldPoint;
	}

	BLOCK#3stepBLOCK#4BLOCK#0:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#4BLOCK#0YieldPoint;

	BLOCK#2BLOCK#4BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#2BLOCK#4BLOCK#4YieldPoint;

	BLOCK#2BLOCK#4stepBLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#2stepBLOCK#4BLOCK#2:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#4BLOCK#2;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#2YieldPoint;
	}

	BLOCK#3stepBLOCK#4BLOCK#2:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#4BLOCK#2YieldPoint;

	BLOCK#2BLOCK#4stepBLOCK#4:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#2BLOCK#2BLOCK#4YieldPoint;

	BLOCK#2stepBLOCK#4BLOCK#4:
	if (_local__threadpooling_i_0 < _local__threadpooling_end_0) {
		goto BLOCK#3stepBLOCK#4BLOCK#4;
	} else {
		goto BLOCK#0BLOCK#4BLOCK#4YieldPoint;
	}

	BLOCK#3stepBLOCK#4BLOCK#4:
	_local__threadpooling_working_0 := _local__threadpooling_i_0;
	goto BLOCK#4BLOCK#4BLOCK#4YieldPoint;

	BLOCK#0BLOCK#4stepBLOCK#2:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#0BLOCK#2BLOCK#2YieldPoint;

	BLOCK#0stepBLOCK#4BLOCK#2:
	goto BLOCK#1stepBLOCK#4BLOCK#2;

	BLOCK#1stepBLOCK#4BLOCK#2:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#4BLOCK#2YieldPoint;

	BLOCK#0BLOCK#4stepBLOCK#0:
	assert (!(_local__threadpooling_working_2==_local__threadpooling_working_1)) && (!(_local__threadpooling_working_0==_local__threadpooling_working_1));
	_local__threadpooling_i_1 := _local__threadpooling_i_1 + 1;
	goto BLOCK#0BLOCK#2BLOCK#0YieldPoint;

	BLOCK#0stepBLOCK#4BLOCK#0:
	goto BLOCK#1stepBLOCK#4BLOCK#0;

	BLOCK#1stepBLOCK#4BLOCK#0:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#4BLOCK#0YieldPoint;

	BLOCK#0stepBLOCK#2BLOCK#0:
	goto BLOCK#1stepBLOCK#2BLOCK#0;

	BLOCK#1stepBLOCK#2BLOCK#0:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#2BLOCK#0YieldPoint;

	BLOCK#0BLOCK#2BLOCK#3step:
	_local__threadpooling_working_2 := _local__threadpooling_i_2;
	goto BLOCK#0BLOCK#2BLOCK#4YieldPoint;

	BLOCK#0BLOCK#2stepBLOCK#2:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#0BLOCK#3stepBLOCK#2;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#2YieldPoint;
	}

	BLOCK#0BLOCK#3stepBLOCK#2:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#0BLOCK#4BLOCK#2YieldPoint;

	BLOCK#0stepBLOCK#2BLOCK#2:
	goto BLOCK#1stepBLOCK#2BLOCK#2;

	BLOCK#1stepBLOCK#2BLOCK#2:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#2BLOCK#2YieldPoint;

	BLOCK#0BLOCK#2stepBLOCK#4:
	if (_local__threadpooling_i_1 < _local__threadpooling_end_1) {
		goto BLOCK#0BLOCK#3stepBLOCK#4;
	} else {
		goto BLOCK#0BLOCK#0BLOCK#4YieldPoint;
	}

	BLOCK#0BLOCK#3stepBLOCK#4:
	_local__threadpooling_working_1 := _local__threadpooling_i_1;
	goto BLOCK#0BLOCK#4BLOCK#4YieldPoint;

	BLOCK#0stepBLOCK#2BLOCK#4:
	goto BLOCK#1stepBLOCK#2BLOCK#4;

	BLOCK#1stepBLOCK#2BLOCK#4:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#2BLOCK#4YieldPoint;

	BLOCK#0stepBLOCK#0BLOCK#4:
	goto BLOCK#1stepBLOCK#0BLOCK#4;

	BLOCK#1stepBLOCK#0BLOCK#4:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#0BLOCK#4YieldPoint;

	BLOCK#0BLOCK#0stepBLOCK#2:
	goto BLOCK#0BLOCK#1stepBLOCK#2;

	BLOCK#0BLOCK#1stepBLOCK#2:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#0BLOCK#2BLOCK#2YieldPoint;

	BLOCK#0stepBLOCK#0BLOCK#2:
	goto BLOCK#1stepBLOCK#0BLOCK#2;

	BLOCK#1stepBLOCK#0BLOCK#2:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#0BLOCK#2YieldPoint;

	BLOCK#0BLOCK#0stepBLOCK#0:
	goto BLOCK#0BLOCK#1stepBLOCK#0;

	BLOCK#0BLOCK#1stepBLOCK#0:
	_local__threadpooling_begin_1 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_1 := _global_next;
	_local__threadpooling_i_1 := _local__threadpooling_begin_1;
	goto BLOCK#0BLOCK#2BLOCK#0YieldPoint;

	BLOCK#0stepBLOCK#0BLOCK#0:
	goto BLOCK#1stepBLOCK#0BLOCK#0;

	BLOCK#1stepBLOCK#0BLOCK#0:
	_local__threadpooling_begin_0 := _global_next;
	_global_next := _global_next + 1;
	_local__threadpooling_end_0 := _global_next;
	_local__threadpooling_i_0 := _local__threadpooling_begin_0;
	goto BLOCK#2BLOCK#0BLOCK#0YieldPoint;

}