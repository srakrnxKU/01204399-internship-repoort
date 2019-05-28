\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{internshipreport}[Report template, modified for Kasetsart Internship report.]

% Pass arguments
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions

% Load classes
\LoadClass[titlepage]{extarticle}

% Custom settings
% Thai language support
\RequirePackage{xltxtra} 
\XeTeXlinebreaklocale "th_TH"
% Typeface
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
\setmainfont{TH Sarabun New}
\setmonofont{Tlwg Typist}
% Typography
\renewcommand{\normalsize}{\fontsize{12}{16}\selectfont}
% Margins
\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
% Title (TODO)
\RequirePackage[compact]{titlesec}
\newcommand{\sectionbreak}{\clearpage}
\titleformat{\section}[display]{\centering\Large\bfseries}{บทที่ \thesection}{0pt}{}
\titleformat{\subsection}{\bfseries\large}{\thesubsection}{1em}{}
% Page numbering
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\rhead{\thepage}
\renewcommand{\headrulewidth}{0pt}
% Fields on the cover
\newcommand\entitle[1]{\renewcommand\@entitle{#1}}
\newcommand\@entitle{\@latex@error{No \noexpand\entitle given}\@ehc}
\newcommand\location[1]{\renewcommand\@location{#1}}
\newcommand\@location{\@latex@error{No \noexpand\location given}\@ehc}
\newcommand\studentid[1]{\renewcommand\@studentid{#1}}
\newcommand\@studentid{\@latex@error{No \noexpand\studentid given}\@ehc}
% Table of Contents
\renewcommand{\contentsname}{สารบัญ}

% Cover
\newcommand{\maketitlepage}{%
  \null\vfil
        \begin{center}%
            \includegraphics[width=3cm]{logo.png} \par%
                {\LARGE รายงานการปฏิบัติงาน (ฝกงาน) \par}%
                \vspace{1em}
                {\Large \@title \par}%
                {\Large \@entitle \par}%
                \vspace{1em}
                {\Large ณ \@location \par}%
                \vskip 10em%
                {\Large
                    \@author \par%
                    รหัสนิสิต \@studentid \par%
                }%
                \vfill%
                {\Large% 
                    ประจำปีการศึกษา \@date \par%
                    ภาควิชาวิศวกรรมคอมพิวเตอร์ คณะวิศวกรรมศาสตร์ \par%
                    มหาวิทยาลัยเกษตรศาสตร์ \par%
                }
        \end{center}\par
  \vfil\null%
  \end{titlepage}%
}

\renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small%
  \let\footnoterule\relax%
  \let \footnote \thanks%
  \maketitlepage%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

\endinput
