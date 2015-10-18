%==================================================
%% homewrok.cls for Homework
%% Encoding: UTF-8
%%==================================================

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{homework}[2015/10/18 v0.0 Homework Template]
\def\version{v0.0}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[a4paper,fancyhdr,fntef,UTF8]{ctexbook}


%% homework.cls segments
% 0. Import homework.cfg
% 1. Import and configure LaTeX packages.
% 2. Define general-purpose LaTeX commands. 
% 3. Configure the imported packages, also extend LaTeX command in homework
% 4. Draw the homework

%==========
% Segment 0. Import homework.cfg 
%==========

%% 导入 homework.cfg 文件
\AtEndOfClass{\input{homework.cfg}}


%==========
% Segment 1. Import LaTeX packages.
%==========
%\RequirePackage[centering,a4paper,body={16cm,24cm}]{geometry} %设置版面
\RequirePackage[centering,a4paper]{geometry}
\geometry{left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}
\RequirePackage{lastpage}
\RequirePackage{fontspec}
\RequirePackage{metalogo,doc}
\RequirePackage{threeparttable}
\RequirePackage{dcolumn}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm,mathrsfs} 
\RequirePackage{upgreek}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
\RequirePackage{ccaption}
\RequirePackage[backend=biber, style=caspervector,utf8, bibencoding=utf8, sorting=none]{biblatex}
\RequirePackage{xcolor}
\RequirePackage{wasysym}
\RequirePackage{listings}
\RequirePackage[xetex, bookmarksnumbered, colorlinks, urlcolor=black, linkcolor=black, citecolor=black, plainpages=false, pdfstartview=FitH]{hyperref}
\RequirePackage{longtable}
\RequirePackage[perpage, bottom]{footmisc}
\RequirePackage{enumitem}
\RequirePackage{pdfpages}
\RequirePackage{calc}
\RequirePackage{algorithm, algorithmic}
\RequirePackage{chngcntr}
%

%==========
% Segment 2. Define general-purpose LaTeX commands.
%==========

\setcounter{secnumdepth}{4}  % 章节编号深度 (part 对应 -1)
\setcounter{tocdepth}{2}     % 目录深度 (part 对应 -1)

% User defined command list
%% \me \mi \mj \dif \cleardoublepage \cndash \CJKLaTeX

% A new column type
\newcolumntype{d}[1]{D{.}{.}{#1}}% or D{.}{,}{#1} or D{.}{\cdot}{#1}

% upper math letter
\newcommand{\me}{\mathrm{e}} 
\newcommand{\mi}{\mathrm{i}}
\newcommand{\mj}{\mathrm{j}}
\newcommand{\dif}{\mathrm{d}}

\def\cleardoublepage{\clearpage%
	\if@openright%
	\ifodd
	\c@page%
	\else%
	\thispagestyle{empty}%
	\hbox{}%
	\newpage%
	\fi%
	\fi}

% CJK-LaTeX Logo \CJKLaTeX
\newcommand{\CJKLaTeX}{CJK--\LaTeX} 

% cndash
\newcommand{\cndash}{\rule{0.0em}{0pt}\rule[0.35em]{1.4em}{0.05em}\rule{0.2em}{0pt}}

%==========
% Segment 3. Configure the imported packages, also extend LaTeX command in homework
%==========

% Set the mainfont
\setmainfont{TeX Gyre Termes}

%% 行距缩放因子
\linespread{1.3}

%==========
% Segment 4. Draw the homework
%==========

\newcommand\studentnumber[1]{\def\homework@value@studentnumber{#1}}
\newcommand\school[1]{\def\homework@value@school{#1}}
\newcommand\course[1]{\def\homework@value@course{#1}}
\renewcommand\title[2][\homework@value@title]{%
	\def\homework@value@title{#2}
	\def\homework@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]{\def\homework@value@author{#1}}
\newcommand\teacher[1]{\def\homework@value@teacher{#1}}
\newcommand\major[1]{\def\homework@value@major{#1}}
\newcommand\defenddate[1]{\def\homework@value@defenddate{#1}}
\newcommand\institute[1]{\def\homework@value@institute{#1}}

% “绘制”封面
\renewcommand\maketitle[1]{%
	\cleardoublepage
	\thispagestyle{empty}
	\begin{center}
		\begin{figure}[!htp]
			\centering
			\includegraphics[angle=0,origin=br,width=13cm]{sjtu.jpg}
		\end{figure}
		\begin{figure}[!htp]
			\centering
			\includegraphics[angle=0,origin=br,width=4cm]{sjtubadge.png}
		\end{figure}
		\vskip 20pt
		\begin{tabular}{ll}
			\huge{\kaishu{作业题目}} &\kaishu
			\underline{\makebox[350pt]{\homework@value@title}}
		\end{tabular}
		\vskip 45pt
		{\fangsong\zihao{4}}
		\def\tabcolsep{1pt}
		\def\arraystretch{1}
		\begin{tabular}{lc}  
			\kaishu{\homework@label@course} &\kaishu
			\underline{\makebox[250pt]{\homework@value@course}}
			\\
			\kaishu{\homework@label@author} &\kaishu
			\underline{\makebox[250pt]{\homework@value@author}}
			\\
			\kaishu{\homework@label@studentnumber} &\kaishu
			\underline{\makebox[250pt]{\homework@value@studentnumber}}
			\\
			\kaishu{\homework@label@teacher} &\kaishu
			\underline{\makebox[250pt]{\homework@value@teacher}}
			\\  
			\kaishu{\homework@label@major} &\kaishu
			\underline{\makebox[250pt]{\homework@value@major}}
			\\  
			\kaishu{\homework@label@institute} &\kaishu
			\underline{\makebox[250pt]{\homework@value@institute}}
			\\  
			\kaishu{\homework@label@defenddate} &\kaishu
			\underline{\makebox[250pt]{\homework@value@defenddate}}
		\end{tabular}
	\end{center}
	\vskip \stretch{0.5}
	\clearpage
	\if@twoside
	
	\cleardoublepage
	\fi
}