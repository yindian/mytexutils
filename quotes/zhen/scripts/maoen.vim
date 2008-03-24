1s/^\_.\{-}<font size=+3[^>]*><B>\(.\{-}\)<.*\n\(\_.*\)<.*\n\+<\/dl\_.*/\\section{\1}\\qitem\2
%s/^<img src="http:..www.art-bin.com.bilder.onepixclear.gif" width=1 height=1 vspace=10><p>/\\qitem
%s/<.\=pre>//g
%s/<i>\(.\{-}\)<\/i>/\\emph{\1}/g
%s/<blockquote>\(.*\)<\/blockquote>/\\midqitem\1\\endqitem
%s/<br>\|<p>\|<\/p>\|<[^>]*>//ig
%s/&nbsp;/ /g
%s/^\s*$//
%s/^\n\+/
w! %:r.txt
