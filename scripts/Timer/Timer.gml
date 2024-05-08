// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Timer(_time){
/// @desc scMsToTime(milliseconds);
/// @arg milliseconds
	var milliseconds = _time;

	var ms = ((milliseconds % 1000) / 100),
	    seconds = round(((milliseconds / 1000) % 60)),
	    minutes = round(((milliseconds / (1000 * 60)) % 60)),
	    hours = round(((milliseconds / (1000 * 60 * 60)) % 24));
	if(hours<10) hours="0"+string(hours);
	if(minutes<10) minutes="0"+string(minutes);
	if(seconds<10) seconds="0"+string(seconds);
	if(ms<10) ms="0"+string(ms);
	return string(string(hours) + ":" + string(minutes) + ":" + string(seconds))// + "." + ms);
}