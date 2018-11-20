\ProvidesClass{tudothesis}[2015/08/31 v0.9 wrapper to scrbook for thesis at TUDo]
% Option for tu colors:
\newif\if@tucolor\@tucolorfalse
\DeclareOption{tucolor}{\@tucolortrue}

% All other Options go to KOMA-Script
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\PassOptionsToPackage{bibliography=totoc}{biblatex}
\ProcessOptions\relax

\LoadClass[
  oneside,
  headsepline,            % line  between header and text body
  bibliography=totoc,     % bibliography as unnumbered chapter in toc
  numbers=noenddot,       % no dot after figure/table number
  captions=tableheading,  % correct spacing for table headings
  titlepage=firstiscover, % symmetrical margins on titlepage
  headings=normal         % size of chapter headings slightly smaller
]{scrartcl}


% Define our beloved tu colour:
\RequirePackage{xcolor}
\xdefinecolor{tugreen}{RGB}{128, 186, 38}

\RequirePackage{caption}
\RequirePackage{subcaption}
% add some Color to structural elements if option tucolor was given
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\clearscrheadfoot
\ofoot{Seite~\thepage}
\ohead{\headmark}
%\ohead{Daniel Rau ~ \title}
\KOMAoption{headsepline}{0.5pt}
\if@tucolor%
  \addtokomafont{title}{\color{tugreen}}          % title on titlepage
  \addtokomafont{pagenumber}{\color{tugreen}}     % page number in the footer
  \setkomafont{headsepline}{\color{tugreen}}       % line between header and text
\fi
