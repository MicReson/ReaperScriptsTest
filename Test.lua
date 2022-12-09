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
  
  -- get the current track and store it
  -- check if user has a track selected otherwise set MediaTrack = 0
  -- TODO: research how to create a new track at runtime, it can be under the selectect track or at the top of the project

  --local currentTrack = reaper.GetTrack(0, ) -- project value=0 it define the current project
  
  retval, filePath = reaper.GetUserFileNameForRead("", "Add files", "wav")
  if retval == false then return end
  
  --reaper.ShowConsoleMsg(filePath)
  
end

--Start new block
reaper.Undo_BeginBlock()
main()
--Stop current block
reaper.Undo_EndBlock("Test", 0)
