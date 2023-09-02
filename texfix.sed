#!/bin/sed -f

# \widehat for \hat{[A-Z]}.
s|\\hat{\([A-Z]\)}|\\widehat{\1}|g
s/\\hat{\\\(Delta\|Gamma\|Lambda\|Omega\|Pi\|Psi\|Sigma\|Upsilon\|Phi\|Theta\|Xi\)}/\\widehat{\\\1}/g
s|\\hat{\\mathsf{\([A-Z]\)}}|\\widehat{\\mathsf{\1}}|g
s|\\hat{\\mathcal{\([A-Z]\)}}|\\widehat{\\mathcal{\1}}|g

s|\\widehat{\\mathsf{I}}|\\hat{\\mathsf{I}}|g

s|\\subsubsection{|\\subsubsection*{|g

# s|Thin elastic|Thin, elastic|g
# s|Thin Elastic|Thin, Elastic|g
# s|thin elastic|thin, elastic|g
s|Soft, Few-body|Soft Few-body|g
s|Soft, few-body|Soft few-body|g
s|Soft, Few-body|Soft Few-body|g
s|soft, few-body|soft few-body|g

# s|Thin, elastic|Thin elastic|g
# s|Thin, Elastic|Thin Elastic|g
# s|thin, elastic|thin elastic|g

s|\\mathscr{O}|\\mathcal{O}|g

s|\\kappa\\beta|\\beta\\kappa|g

s|\\ln{|\\log{|g

s|\\frac{\([0-9]\)}{\([0-9]\)}|\\tfrac{\1}{\2}|g
s|\\frac{i}{\([0-9]\)}|(i/\1)|g

s|\\bm{0}|0|g

# s|Free energy landscape|Free-energy landscape|
# s|free energy landscape|free-energy landscape|
#
# s|Free energy profile|Free-energy profile|
# s|free energy profile|free-energy profile|
#
# s|Free energy curve|Free-energy curve|
# s|free energy curve|free-energy curve|

s|\\ac{cv}|CV|g
s|\\ac{dof}|DOF|g
