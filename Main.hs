import Sudoku

import System.Environment
import Data.Maybe

--main :: IO ()
main = do
    args <- getArgs -- Filepaths
    sudokus <- (sequence . map Sudoku.readSudoku) args
    let solvedSudokus = map (fromJust . Sudoku.solve) sudokus
    putStrLn $ concatMap Sudoku.printSudoku solvedSudokus