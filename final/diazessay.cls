%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Diaz Essay
% LaTeX Class
% Version 1.0 (13/1/19)
%
% This class originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Vel (vel@LaTeXTemplates.com)
% Nicolas Diaz (nsdiaz@uc.cl)
%
% License:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diazessay}[2019/01/13 Diaz Essay class v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\usepackage[english]{babel} % English language hyphenation

\usepackage{graphicx} % Required for including images
\graphicspath{{Figures/}{./}} % Specifies where to look for included images (trailing slash required)

\usepackage{wrapfig} % Allows in-line images

\usepackage{booktabs} % Required for better horizontal rules in tables

\usepackage{enumitem} % Required for list customisation
\setlist{noitemsep} % No spacing between list items

\usepackage{tabularx} % Required for table generation
\usepackage{multirow} % Supports center-align / new line in table cells
\usepackage{boldline} % Supports bold line

\usepackage{alltt,xcolor} % Supports code embedding

\makeatletter
\renewcommand\@biblabel[1]{\textbf{#1.}} % Remove the square brackets from each bibliography item ('[1]' to '1.')
\makeatother

%----------------------------------------------------------------------------------------
%	DOCUMENT MARGINS
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	paper=a4paper, % Paper size, change to letterpaper for US letter size
	top=1in, % Top margin
	bottom=1in, % Bottom margin
	left=1in, % Left margin
	right=1in, % Right margin
	headheight=0.75cm, % Header height
	footskip=1.5cm, % Space from the bottom margin to the baseline of the footer
	headsep=0.75cm, % Space from the top margin to the baseline of the header
	%showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc} % Required for inputting international characters
\usepackage[T1]{fontenc} % Use 8-bit encoding

\usepackage{mathpazo} % Use the Palatino font

\usepackage[protrusion=true, expansion=true]{microtype} % Better typography

\linespread{1.3} % Increase line spacing slightly; Palatino benefits from a slight increase by default


%----------------------------------------------------------------------------------------
%	TITLE
%----------------------------------------------------------------------------------------

\makeatletter
\renewcommand{\maketitle}{ % Customise the title (do not edit title and author name here)
	\begin{flushright} % Right align

		{\LARGE\@title}\\ % Increase the font size of the title
		{\large \@date} % Date		

		\vspace{10pt} % Vertical whitespace between the title and author name
		
		{\large\@author}\\ % Author name
		
	\end{flushright}
}
\makeatother

%----------------------------------------------------------------------------------------
%	HEADERS AND FOOTERS
%----------------------------------------------------------------------------------------

\usepackage{fancyhdr} % Required for customising headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Remove default top horizontal rule
\lhead{} % Left header
\chead{} % Centre header
\rhead{} % Right header
\lfoot{} % Left footer
\cfoot{\thepage} % Centre footer
\rfoot{} % Right footer
