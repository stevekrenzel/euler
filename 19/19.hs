import Data.Time.Calendar (toGregorian)
import Data.Time.Calendar.OrdinalDate (fromSundayStartWeek)

sundays = map (toGregorian . (flip (fromSundayStartWeek 1901) 0)) [0..]
onFirst (_, _, date) = date == 1
inRange (year, _, _) = year > 1900 && year < 2001

main = print $ length $ takeWhile inRange $ filter onFirst sundays
