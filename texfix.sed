#!/bin/sed -f

# \widehat for \hat{[A-Z]}.
s|\\hat{\([A-Z]\)}|\\widehat{\1}|g
s/\\hat{\\\(Delta\|Gamma\|Lambda\|Omega\|Pi\|Psi\|Sigma\|Upsilon\|Phi\|Theta\|Xi\)}/\\widehat{\\\1}/g
s|\\hat{\\mathsf{\([A-Z]\)}}|\\widehat{\\mathsf{\1}}|g
s|\\hat{\\mathcal{\([A-Z]\)}}|\\widehat{\\mathcal{\1}}|g

s|\\subsubsection{|\\subsubsection*{|g

s|Thin elastic|Thin, elastic|g
s|Soft Few-body|Soft, Few-body|g
s|Thin, Elastic|Thin, Elastic|g
s|thin, elastic|thin, elastic|g
s|Soft few-body|Soft, few-body|g
s|Soft Few-body|Soft, Few-body|g
s|soft few-body|soft, few-body|g

s|\\mathscr{O}|\\mathcal{O}|g

s|\\kappa\\beta|\\beta\\kappa|g
