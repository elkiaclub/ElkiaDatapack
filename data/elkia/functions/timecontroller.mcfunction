scoreboard players add OneSecCounter Counter 1
scoreboard players add FiveSecCounter Counter 1
execute if score FiveSecCounter Counter >= FiveSecs Counter run function elkia:five_seconds
execute if score OneSecCounter Counter >= OneSec Counter run function elkia:one_second
function elkia:sleep