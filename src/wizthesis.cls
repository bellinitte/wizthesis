\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wizthesis}[2019/12/21 WIZ PWr thesis class]

\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{book}}
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{book}}
\DeclareOption{openbib}{\PassOptionsToClass{openbib}{book}}
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}}
\DeclareOption{final}{\PassOptionsToClass{final}{book}}
\DeclareOption{openright}{\PassOptionsToClass{openright}{book}}
\DeclareOption{openany}{\PassOptionsToClass{openany}{book}}

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

\ProcessOptions
\LoadClass[12pt,twoside]{book}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{polski}
\RequirePackage[a4paper,left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
