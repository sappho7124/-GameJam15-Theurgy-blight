if !ex_end{
	size += spd;
} else {
	size -= spd;
}
// Step Event Code

// Ensure size does not exceed finsize
if (size > finsize) {
    size = finsize;
	ex_end = true
}

if (size < inisize) {
    instance_destroy()
}
