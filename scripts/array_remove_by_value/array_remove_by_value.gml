function array_remove_by_value(_arr, _value) {
    for (var i = 0; i < array_length(_arr); i++) {
        if (_arr[i] == _value) {
            array_delete(_arr, i, 1);
            break;
        }
    }	
}