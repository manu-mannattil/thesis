#!/bin/sed -f

# \widehat for \hat{[A-Z]}.
s|\\hat{\([A-Z]\)}|\\widehat{\1}|g
s|\\hat{\\mathsf{\([A-Z]\)}}|\\widehat{\\mathsf{\1}}|g

s|\\subsubsection{|\\subsubsection*{|g
