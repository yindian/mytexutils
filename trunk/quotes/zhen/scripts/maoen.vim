1s/^\_.\{-}<font size=+3[^>]*><B>\(.\{-}\)<.*\n\(\_.*\)<.*\n\+<\/dl\_.*/\\section{\1}
%s/^<img src="http:..www.art-bin.com.bilder.onepixclear.gif" width=1 height=1 vspace=10><p>/\\qitem
%s/<.\=pre>//g
%s/<i>\(.\{-}\)<\/i>/\\emph{\1}/g
%s/<blockquote>\(.*\)<\/blockquote>/\\midqitem
%s/<br>\|<p>\|<\/p>\|<[^>]*>/
%s/&nbsp;/ /g
%s/^\s*$//
%s/^\n\+/
w! %:r.txt