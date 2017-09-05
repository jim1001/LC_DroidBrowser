script "card_browser Behavior"
local sBrowserID
on opencard
   // Check the control doesn't already exist. If so delete and recreate it
   if sBrowserID is among the lines of mobileControls() then
      mobileControlDelete sBrowserID
   end if
   mobileControlCreate "browser"
   put the result into sBrowserID
   mobileControlSet sBrowserID, "rect", "10, 10, 610, 750"
   mobileControlSet sBrowserID, "visible", true
   mobileControlSet sBrowserID, "URL", the browserURL of me
end opencard

on closeCard
   mobileControlDelete sBrowserID
end closeCard
