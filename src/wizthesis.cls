\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wizthesis}[2020/02/16 WIZ PWr thesis class]

\newif\ifpolski
\newif\ifmasters
\newif\ifbachelors
\newif\ifengineering

\DeclareOption{english}{\polskifalse}
\DeclareOption{polski}{\polskitrue}
\DeclareOption{masters}{\masterstrue}
\DeclareOption{bachelors}{\bachelorstrue}
\DeclareOption{engineering}{\engineeringtrue}

\DeclareOption{titlepage}
  {\ClassWarning{book}{Title page always generated. Option ignored}}
\DeclareOption{notitlepage}
  {\ClassWarning{wizthesis}{Option 'notitlepage' not available for wizthesis}}
\DeclareOption{a4paper}
  {\ClassWarning{wizthesis}{Option 'a4paper' superfluous. Ignored}}
\DeclareOption{a5paper}
  {\ClassWarning{wizthesis}{Option 'a5paper' not available for wizthesis}}
\DeclareOption{letterpaper}
  {\ClassWarning{wizthesis}{Option 'letterpaper' not available for wizthesis}}
\DeclareOption{b5paper}
  {\ClassWarning{wizthesis}{Option 'b5paper' not available for wizthesis}}
\DeclareOption{executivepaper}
  {\ClassWarning{wizthesis}{Option 'executivepaper' not available for wizthesis}}
\DeclareOption{legalpaper}
  {\ClassWarning{wizthesis}{Option 'legalpaper' not available for wizthesis}}
\DeclareOption{10pt}
  {\ClassWarning{wizthesis}{Option '10pt' not available for wizthesis}}
\DeclareOption{11pt}
  {\ClassWarning{wizthesis}{Option '11pt' not available for wizthesis}}
\DeclareOption{12pt}
  {\ClassWarning{wizthesis}{Option '12pt' superfluous. Ignored}}
\DeclareOption{twocolumn}
  {\ClassWarning{wizthesis}{Option 'twocolumn' not available for wizthesis}}
\DeclareOption{onecolumn}
  {\ClassWarning{wizthesis}{Option 'onecolumn' superfluous. Ignored}}
\DeclareOption{landscape}
  {\ClassWarning{wizthesis}{Option 'landscape' not available for wizthesis}}
\DeclareOption{oneside}
  {\ClassWarning{wizthesis}{Option 'oneside' not available for wizthesis}}
\DeclareOption{twoside}
  {\ClassWarning{wizthesis}{Option 'twoside' superfluous. Ignored}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax
\LoadClass[12pt,a4paper,onecolumn,twoside]{book}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{polski}
\RequirePackage{geometry}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{float}

\newgeometry{margin=2.5cm}

\renewcommand{\@author}
  {Anonymous\ClassWarning{wizthesis}{No author provided, use \string\author}}
\renewcommand{\author}[1]{\renewcommand{\@author}{#1}}
\newcommand{\@titleen}
  {Untitled\ClassWarning{wizthesis}{No title provided, use \string\title}}
\renewcommand{\title}[1]{\renewcommand{\@titleen}{#1}}
\newcommand{\@titlepl}
  {Bez tytułu\ClassWarning{wizthesis}{No polish title provided, use \string\tytul}}
\newcommand{\tytul}[1]{\renewcommand{\@titlepl}{#1}}
\newcommand{\@supervisor}
  {Anonymous\ClassWarning{wizthesis}{No supervisor provided, use \string\supervisor}}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}
\newcommand{\@fieldofstudyen}
  {No field of study\ClassWarning{wizthesis}{No field of study provided, use \string\fieldofstudy}}
\newcommand{\fieldofstudy}[1]{\renewcommand{\@fieldofstudyen}{#1}}
\newcommand{\@fieldofstudypl}
  {Brak kierunku\ClassWarning{wizthesis}{No polish field of study provided, use \string\kierunek}}
\newcommand{\kierunek}[1]{\renewcommand{\@fieldofstudypl}{#1}}
\newcommand{\@specialtyen}{---}
\newcommand{\specialty}[1]{\renewcommand{\@specialtyen}{#1}}
\newcommand{\@specialtypl}{---}
\newcommand{\specjalnosc}[1]{\renewcommand{\@specialtypl}{#1}}
\newcommand{\@summaryen}
  {No summary\ClassWarning{wizthesis}{No summary provided, use \string\summary}}
\newcommand{\summary}[1]{\renewcommand{\@summaryen}{#1}}
\newcommand{\@summarypl}
  {Brak streszczenia\ClassWarning{wizthesis}{No polish summary provided, use \string\krotkiestreszczenie}}
\newcommand{\krotkiestreszczenie}[1]{\renewcommand{\@summarypl}{#1}}
\newcommand{\@keywordsen}
  {No keywords\ClassWarning{wizthesis}{No keywords provided, use \string\keywords}}
\newcommand{\keywords}[1]{\renewcommand{\@keywordsen}{#1}}
\newcommand{\@keywordspl}
  {Brak słów kluczowych\ClassWarning{wizthesis}{No polish keywords provided, use \string\slowakluczowe}}
\newcommand{\slowakluczowe}[1]{\renewcommand{\@keywordspl}{#1}}
\newcommand{\@abstracten}
  {No abstract\ClassWarning{wizthesis}{No abstract provided, use \string\abstract}}
\newcommand{\abstract}[1]{\renewcommand{\@keywordsen}{#1}}
\newcommand{\@abstractpl}
  {Brak streszczenia\ClassWarning{wizthesis}{No polish abstract provided, use \string\streszczenie}}
\newcommand{\streszczenie}[1]{\renewcommand{\@keywordspl}{#1}}

\newcommand{\@titlepagepl}{
  \thispagestyle{empty}
  pl
  \clearpage
}

\newcommand{\@titlepageen}{
  \thispagestyle{empty}
  en
  \clearpage
}

\ifpolski
  \AtBeginDocument{\renewcommand\tablename{Tabela}}
  \renewcommand{\maketitle}{
    \pagenumbering{gobble}
      \@titlepagepl
    \cleardoublepage
      \@titlepageen
    \cleardoublepage
  }
\else
  \renewcommand{\maketitle}{
    \pagenumbering{gobble}
      \@titlepageen
    \cleardoublepage
  }
\fi
