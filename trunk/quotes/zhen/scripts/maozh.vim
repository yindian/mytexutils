e ++enc=cp936
set noro
1s/^\_.\{-}<B>\(.\{-}\)<.*\n<hr>\n\(\_.*\)<BR>\_.*/\\section{\1}\2/i
"%s/<br><STRONG>/\\qitem/i
"%s/<br><\/STRONG>/\\midqitem/i
"%s/<br>$/\\endqitem/i
%s/<STRONG>/\\qitem/ig
%s/<\/STRONG>/\\midqitem/ig
%s/<br>\|<p>\|<\/p>\|<[^>]*>//ig
%s/　/  /g
%s/^\s*$//
%s/^\n\+/
%s/^\ze\\qitem/\\endqitem
1s/\(\_.\{-}\)\\endqitem\n/\1
$s/^\s*$/\\endqitem
set fenc=utf-8
w! %:r.txt
