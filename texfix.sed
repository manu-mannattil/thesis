#!/bin/sed -f

# \widehat for \hat{[A-Z]}.
s|\\hat{\([A-Z]\)}|\\widehat{\1}|g
s/\\hat{\\\(Delta\|Gamma\|Lambda\|Omega\|Pi\|Psi\|Sigma\|Upsilon\|Phi\|Theta\|Xi\)}/\\widehat{\\\1}/g
s|\\hat{\\mathsf{\([A-Z]\)}}|\\widehat{\\mathsf{\1}}|g
s|\\hat{\\mathcal{\([A-Z]\)}}|\\widehat{\\mathcal{\1}}|g

s|\\subsubsection{|\\subsubsection*{|g

s|Thin elastic|Thin, elastic|g
s|thin, elastic|thin, elastic|g

s|\\mathscr{O}|\\mathcal{O}|g
