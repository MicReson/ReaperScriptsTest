--[[
  High Level Requiments for this script are:
    1) User being able to select multiple audio files from explorer/finder window
    2) Create a new track per audio file selected
    3) Organize sequentially each audio file (Item) on the timeline
    4) Normalize each audio by users LUFS amoutn (if possible)
    5) Add a region in each Item sequentially
    6) Name each region with the name of the audio file
    7) Create a master track and add all the files to be children of the master track
    ]]--



function main()

  -- Open the file explorer and returs a path and a boolean
  -- TODO It needs to be able to select more thant one file, for the moment it is selecting just one file
  retval, filePath = reaper.GetUserFileNameForRead("", "Add files", "wav")
  if retval == false then return end 
  
  reaper.ShowConsoleMsg(filePath)
  
  io.read()
  
end

--Start new block
reaper.Undo_BeginBlock()
main()
--Stop current block
reaper.Undo_EndBlock("Test", 0)
