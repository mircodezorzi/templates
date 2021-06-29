\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{report}[2021/06/01, Mirco De Zorzi LaTeX Report Template]
\LoadClass[a4paper,10pt,twoside,twocolumn]{article}

% Packages
\RequirePackage[english]{babel} % Special Glyphs
\RequirePackage{graphicx}       % Images
\RequirePackage{grffile}        % Fix Allowed Graphicx Filenames
\RequirePackage{hyperref}       % Hyperlinks
\RequirePackage{amsmath}        % Maths Symbols
\RequirePackage{minted}         % Code Listings
\RequirePackage{cuted}          % Floating code snippets in two column layout

\RequirePackage[backend=bibtex]{biblatex} % Bibtex support

\RequirePackage[
	twoside,%
	letterpaper,includeheadfoot,%
	layoutsize={8.125in,10.875in},%
	layouthoffset=0.1875in,%
	layoutvoffset=0.0625in,%
	left=32.5pt,%
	right=38.5pt,%
	top=43pt,%
	bottom=32pt,%
	headheight=0pt,%
	headsep=10pt,%
	footskip=25pt,%
	marginparwidth=38pt%
]{geometry}

%% Better font
\usepackage{fourier}
\usepackage[english]{babel}
\usepackage[utf8]{inputenc}

%% Itemize Environment
\RequirePackage{enumitem}
\setlist[itemize]{noitemsep}
\setlist[enumerate]{noitemsep}
\renewcommand\labelitemi{\--}
