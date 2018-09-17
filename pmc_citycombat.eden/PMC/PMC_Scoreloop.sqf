
eastscore = 0;
westscore = 0;

westp = 0;
eastp = 0;

while { (eastscore < 20 || westscore < 20) } do
{
	sleep 60;
	
	if (eastp==1 && westp==0) then
	{
		eastscore = eastscore + 1;
	};
	
	if (westp==1 && eastp==0) then
	{
		westscore = westscore + 1;
	};
	
	publicvariable "eastscore";
	publicvariable "westscore";
	
	hint format["eastscore: %1\nwestscore: %2",eastscore,westscore];
};

mcomplete = true;
