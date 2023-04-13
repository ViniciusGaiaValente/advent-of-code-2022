module DayOne
  ( partOne,
    partTwo,
  )
where

import Elves (maxCalories, topThreeCalories)
import Input (parseElvesNotes)

elvesNotesPath :: FilePath
elvesNotesPath = "./elves_notes.txt"

partOne :: IO Integer
partOne =
  do
    fileContent <- readFile elvesNotesPath
    case parseElvesNotes fileContent of
      Just result -> return . maxCalories $ result
      Nothing -> error "error parsing file"

partTwo :: IO Integer
partTwo =
  do
    fileContent <- readFile elvesNotesPath
    case parseElvesNotes fileContent of
      Just result -> return . topThreeCalories $ result
      Nothing -> error "error parsing file"
