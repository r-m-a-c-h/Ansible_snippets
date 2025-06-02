tell application "System Events"
set app_list to (name of every process where background only is false)
repeat with app_name in app_list
if app_name is not "Finder" then
try
do shell script "killall '" & app_name & "'"
end try
end if
end repeat
end tell
