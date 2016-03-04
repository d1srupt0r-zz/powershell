# example, convert 20150101 to Jan 01 2015
gi * | % { ren $_ (get-date ([DateTime]::ParseExact($_.Name,"yyyyMMdd",$null)) -format "MMM dd yyyy") }
# example, convert Jan 01 2015 to 20150101
gi * | % { ren $_ (get-date ([DateTime]$_.Name) -format "yyyyMMdd") }