tell application "System Events"
  set app_list to (name of every process where background only is false)
  repeat with app_name in app_list
    if app_name is not "Finder" then
      try
        tell application app_name to quit
      end try
    end if
  end repeat
end tell