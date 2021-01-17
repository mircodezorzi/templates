\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2021/01/03, Mirco De Zorzi LaTeX Report Template]
\LoadClass[a4paper,10pt,twoside,twocolumn,openright]{article}

% Packages
\RequirePackage[english]{babel} % Special Glyphs
\RequirePackage{graphicx}       % Images
\RequirePackage{grffile}        % Fix Allowed Graphicx Filenames
\RequirePackage{hyperref}       % Hyperlinks
\RequirePackage{titling}        % Title Formatting
\RequirePackage{amsmath}        % Maths Symbols
\RequirePackage{minted}         % Code Listings
\RequirePackage{lettrine}       % Lettrines
\RequirePackage{cuted}          % Floating code snippets in two column layout
                                % somewhat broken, so use with care

\RequirePackage[
	letterpaper,
	includeheadfoot,
	outer = 35pt,
	inner = 55pt,
	top = 43pt,
	bottom = 32pt,
	headheight = 0pt,
	headsep = 10pt,
	footskip = 25pt,
	marginparwidth = 38pt,
]{geometry}

% Font

\RequirePackage[sc]{mathpazo}
\RequirePackage[T1]{fontenc}
\RequirePackage[
	activate = {true},
	tracking = true,
	kerning = true,
	spacing = true,
	factor = 2000
	final,
]{microtype}
\linespread{1.05}

% Itemize Environment

\RequirePackage{enumitem}
\setlist[itemize]{noitemsep}
\setlist[enumerate]{noitemsep}
\renewcommand\labelitemi{\--}

% Footers and Headers

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}

\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[C]{\footnotesize Page \thepage~of~\pageref{LastPage}}

\fancypagestyle{plain}{
	\renewcommand{\headrulewidth}{0pt}
	\fancyhf{}
	\fancyfoot[C]{\footnotesize Page \thepage~of~\pageref{LastPage}}
}

% Section Formatting

\RequirePackage{titlesec}
\renewcommand\thesection{\Roman{section}}
\renewcommand\thesubsection{\roman{subsection}}
\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{}
\titleformat{\subsection}[block]{\large}{\thesubsection.}{1em}{}
\setlength{\droptitle}{-4\baselineskip}

% Title Formatting

\newcommand{\dates}[1]{\def\@dates{#1}}
\newcommand{\affil}[1]{\def\@affil{#1}}
\newcommand{\email}[1]{\def\@email{#1}}

\newcommand{\maketitle}{
  \begin{titlepage}
    \centering
    \includegraphics[width=0.25\textwidth]{PNIT0003_logo-03}\par\vspace{1cm}
    {\scshape\LARGE Columbidae University \par}
    \vspace{1cm}
    {\scshape\Large Final year project\par}
    \vspace{1.5cm}
    {\huge\bfseries \@title \par}
    \vspace{2cm}
    {\Large\itshape\@author\par}
    \vfill
    supervised by\par
    Dr.~Mark \textsc{Brown}
    \vfill
    {\large \today\par}
  \end{titlepage}
}

\newcommand{\maketoc}{
	\onecolumn%
	\tableofcontents%
	\twocolumn%
}