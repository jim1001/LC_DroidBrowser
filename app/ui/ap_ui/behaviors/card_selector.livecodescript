script "card_selector Behavior"
local sFilePath

on preOpenCard
   setStackTextProps
end preOpenCard

command buttonBehavior pName
   put assetsFolder() & "/PDFs/" into sFilePath
   switch pName
      case "Show PDF 1"
         put sFilePath & "1.2_Alz DementiaFriendlyHomebooklet.pdf" into sFilePath
         delSpace
         setLocalFile
         break
      case "Show PDF 2"   
         put sFilePath & "1.3_AssistiveTech.pdf" into sFilePath
         delSpace
         setLocalFile
         break
      case "BBC"   
         answer "bbc"
         put "https://www.bbc.co.uk" into sFilePath
         setWeb
         break
      case "Google"   
         put "https://www.google.co.uk" into sFilePath
         setWeb
         break
      default
         answer "Button not found"
   end switch

   answer "going to card browser"
   go to card "browser"
end buttonBehavior
  
command setLocalFile 
   set the browserURL of card "browser" to ("file:" & sFilePath)
end setLocalFile

command setWeb
   set the browserURL of card "browser" to sFilePath
end setWeb

command delSpace
   replace SPACE with "%20" in  sFilePath
end delSpace
