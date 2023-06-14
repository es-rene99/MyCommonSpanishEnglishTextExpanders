#NoEnv  
SendMode Input 
SetWorkingDir %A_ScriptDir% 
:::bd::Buen dia 
:::bsd::Buenos dias 
:::bt::Buenas tardes 
:::bn::Buenas noches 
:::gm::Good morning 
:::ga::Good afternoon 
:::ge::Good evening 
:::sc::Saludos cordiales, 
:::yw::You're welcome 
:::dn::De nada 
:*::tod:: 
Send, %A_YYYY%-%A_MM%-%A_DD%
return
:*::yes:: 
today = %a_now%
today += -1, days
FormatTime, today, %today%, yyyy-MM-dd
SendInput %today%
return
:*::tom:: 
today = %a_now%
today += 1, days
FormatTime, today, %today%, yyyy-MM-dd
SendInput %today%
return
:*::test::
today = %a_now%
SendInput %today%
return