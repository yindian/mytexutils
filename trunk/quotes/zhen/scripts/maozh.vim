e ++enc=cp936
set noro
1s/^\_.\{-}<B>\(.\{-}\)<.*\n<hr>\n\(\_.*\)<BR>\_.*/\\section{\1}
"%s/<br><STRONG>/
"%s/<br><\/STRONG>/
"%s/<br>$/
%s/<STRONG>/
%s/<\/STRONG>/
%s/<br>\|<p>\|<\/p>\|<[^>]*>/
%s/　/  /g
%s/^\s*$//
%s/^\n\+/
%s/^\ze\\qitem/\\endqitem
1s/\(\_.\{-}\)\\endqitem\n/\1
$s/^\s*$/\\endqitem
set fenc=utf-8
w! %:r.txt