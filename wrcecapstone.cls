\ProvidesClass{wrcecapstone}

% options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{article}

\usepackage{graphicx}
\usepackage[dvipsnames]{xcolor}
\usepackage{hyperref}
\hypersetup{%
  colorlinks=true,
  linkcolor=violet,
  citecolor=violet,
  filecolor=blue,
  urlcolor=blue
}
\usepackage{url}

% other stuff
\newcommand{\@student}{Alyssa P Hacker}
\newcommand{\student}[1]{\renewcommand{\@student}{#1}}
\newcommand{\@advisor}{Title First Last}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}
\newcommand{\@departmentchair}{Title First Last}
\newcommand{\departmentchair}[1]{\renewcommand{\@departmentchair}{#1}}
\newcommand{\@outsidesponsor}{}
\def\hasoutsidesponsor{0}
\newcommand{\outsidesponsor}[1]{\renewcommand{\@outsidesponsor}{#1}\def\hasoutsidesponsor{1}}
\newcommand{\@department}{The Weapons, Robotics, and Control Engineering Department}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}

% title page
\newcommand{\maketitlepage}{%
\begin{titlepage}
\hspace{0pt}
\vfill
\begin{center}
\noindent{\LARGE \textbf{\@title}\par}
\hrule
\vspace{3em}
by\\
\vspace{3em}
\@student\\
\includegraphics[width=4in]{RCE-logo-01.png}\\
\emph{A Capstone Project Report Submitted to the Faculty of}\\
\emph{\@department}\\
\emph{United States Naval Academy, Annapolis, Maryland}\\
\vspace{3em}
Faculty Advisor: \@advisor \\
\vspace{1em}
Department Chair: \@departmentchair \\
\vspace{1em}
\if\hasoutsidesponsor0
\else
Outside Sponsor: \@outsidesponsor \\
\fi
\vspace{2em}
\@date\\
\end{center}
\vfill
\hspace{0pt}
\end{titlepage}
}

\newcommand{\@contactinfo}{}
\def\hascontactinfo{0}
\newcommand{\contactinfo}[1]{\renewcommand{\@contactinfo}{#1}\def\hascontactinfo{1}}

\renewcommand{\maketitle}{%
\noindent{\LARGE \textbf{\@title}\par}
\vspace{1em}
\hrule
\vspace{1em}
\noindent \@author\\
\if\hascontactinfo0
\else
\noindent Contact: \@contactinfo\\
\fi
}
