regex () {
	gawk 'match($0,/'$1'/, ary) {print ary['${2:-'1'}']}';
}
