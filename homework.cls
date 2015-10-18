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

%% CTeX Settings
% 名称：目录、表格索引、插图索引、算法、算法索引、代码
\CTEXoptions[contentsname={\homework@contentsname\vspace{20 pt}}]
\CTEXoptions[listfigurename={\homework@listfigurename}]
\CTEXoptions[listtablename={\homework@listtablename}]
\floatname{algorithm}{\homework@label@algo}
\renewcommand{\listalgorithmname}{\homework@listalgorithmname}
\renewcommand{\lstlistingname}{\homework@value@listingname}
% Title Settings at the chapter Level
\CTEXsetup[nameformat={\Large\bfseries\zihao{3}}]{chapter}
\CTEXsetup[titleformat={\Large\bfseries}]{chapter}
\CTEXsetup[beforeskip={15\p@}]{chapter}
\CTEXsetup[afterskip={25\p@}]{chapter}
% Title Settings at the section Level
\CTEXsetup[format={\large\heiti\zihao{4}}]{section}
\CTEXsetup[indent={0\ccwd}]{section}
\CTEXsetup[beforeskip={-3ex \@plus -1ex \@minus -.2ex}]{section}
\CTEXsetup[afterskip={1.0ex \@plus .2ex}]{section}
% Title Settings at the subection Level
\CTEXsetup[format={\songti\zihao{-4}}]{subsection}
\CTEXsetup[indent={0\ccwd}]{subsection}
\CTEXsetup[beforeskip={-2.5ex \@plus -1ex \@minus -.2ex}]{subsection}
\CTEXsetup[afterskip={1.0ex \@plus .2ex}]{subsection}
% Title Settings at the subsubection Level
\CTEXsetup[format={\normalfont\normalsize}]{subsubsection}
\CTEXsetup[indent={0\ccwd}]{subsubsection}
\CTEXsetup[beforeskip={-2ex \@plus -1ex \@minus -.2ex}]{subsubsection}
\CTEXsetup[afterskip={1.0ex \@plus .2ex}]{subsubsection}

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\labelenumi}{(\theenumi)}

% bullets in the item
\renewcommand{\labelitemi}{\ensuremath{\bullet}}

%% Graphic path & file extension
\graphicspath{{fig/}{figure/}{figures/}{logo/}{logos/}{graph/}{graphs}}
\DeclareGraphicsExtensions{.pdf,.eps,.png,.jpg,.jpeg}

% Caption setting in ccaption pacakge
\captiondelim{\ }
\captionnamefont{\kaishu\small}
\captiontitlefont{\kaishu\small}

% Floating parameters
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

% 定公式、图、表、算法的编号为"3-1"的形式，即分隔符由.变为短杠
\renewcommand{\theequation}{\arabic{chapter}--\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}--\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}--\arabic{table}}
\renewcommand{\thealgorithm}{\arabic{chapter}--\arabic{algorithm}}

% Setting Package listings/lstlistings
\lstset{tabsize=4, %
	frame=shadowbox, %把代码用带有阴影的框圈起来
	commentstyle=\color{red!50!green!50!blue!50},%浅灰色的注释
	rulesepcolor=\color{red!20!green!20!blue!20},%代码块边框为淡青色
	keywordstyle=\color{blue!90}\bfseries, %代码关键字的颜色为蓝色，粗体
	showstringspaces=false,%不显示代码字符串中间的空格标记
	stringstyle=\ttfamily, % 代码字符串的特殊格式
	keepspaces=true, %
	breakindent=22pt, %
	numbers=left,%左侧显示行号
	stepnumber=1,%
	numberstyle=\tiny, %行号字体用小号
	basicstyle=\footnotesize, %
	showspaces=false, %
	flexiblecolumns=true, %
	breaklines=true, %对过长的代码自动换行
	breakautoindent=true,%
	breakindent=4em, %
	aboveskip=1em, %代码块边框
	%% added by http://bbs.ctex.org/viewthread.php?tid=53451
	fontadjust,
	captionpos=t,
	framextopmargin=2pt,framexbottommargin=2pt,abovecaptionskip=-3pt,belowcaptionskip=3pt,
	xleftmargin=4em,xrightmargin=4em, % 设定listing左右的空白
	texcl=true,
	% 设定中文冲突，断行，列模式，数学环境输入，listing数字的样式
	extendedchars=false,columns=flexible,mathescape=true
	numbersep=-1em
}

% 定理环境
\theoremstyle{plain}
\newtheorem{algo}{\homework@label@algo~}[chapter]
\newtheorem{thm}{\homework@label@thm~}[chapter]
\newtheorem{lem}[thm]{\homework@label@lem~}
\newtheorem{prop}[thm]{\homework@label@prop~}
\newtheorem{cor}[thm]{\homework@label@cor~}
\theoremstyle{definition}
\newtheorem{defn}{\homework@label@defn~}[chapter]
\newtheorem{conj}{\homework@label@conj~}[chapter]
\newtheorem{exmp}{\homework@label@exmp~}[chapter]
\newtheorem{rem}{\homework@label@rem~}
\newtheorem{case}{\homework@label@case~}
\theoremstyle{break}
\newtheorem{bthm}[thm]{\homework@label@thm~}
\newtheorem{blem}[thm]{\homework@label@lem~}
\newtheorem{bprop}[thm]{\homework@label@prop~}
\newtheorem{bcor}[thm]{\homework@label@cor~}
\renewcommand{\proofname}{\bf\homework@label@proof}
\newtheoremstyle{break}% name
{}%      Space above, empty = `usual value'
{}%      Space below
{\itshape}% Body font
{}%         Indent amount (empty = no indent, \parindent = para indent)
{\bfseries}% Thm head font
{.}%        Punctuation after thm head
{\newline}% Space after thm head: \newline = linebreak
{}%         Thm head spec


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

		\vskip 45pt
		{\fangsong\zihao{4}}
		\def\tabcolsep{1pt}
		\def\arraystretch{1}
		\begin{tabular}{lc}  
			\kaishu{\homework@label@title} &\kaishu
			\underline{\makebox[250pt]{\homework@value@title}}
			\\
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

% fancyhdr页眉页脚设置
\fancypagestyle{blank}{
	\fancyhf{}
	\fancyhead[L]{\includegraphics[width=0.22\textwidth]{sjtubanner}}
	\fancyhead[R]{\nouppercase{\small\kaishu\homework@value@titlemark}}
	\fancyfoot[C]{}
}
%% 正文页眉页脚
\fancypagestyle{main}{
	\fancyhf{}
	\fancyhead[L]{\includegraphics[width=0.22\textwidth]{sjtubanner}}
	\fancyhead[R]{\nouppercase{\small\kaishu\homework@value@titlemark}}
	\fancyfoot[C]{\small 第~{\bfseries\thepage}~页\,共~{\bfseries\pageref{LastPage}}~页}
}
%% 开章页页眉页脚
\fancypagestyle{plain}{% 设置开章页页眉页脚风格(只有页码作为页脚)
	\fancyhf{}%
	\fancyhead[L]{\nouppercase{\small\kaishu\includegraphics[width=0.22\textwidth]{sjtubanner}}}
	\fancyhead[R]{\nouppercase{\small\kaishu\homework@value@titlemark}}
	\fancyfoot[C]{\small 第~{\bf\thepage}~页\,共~{\bf\pageref{LastPage}}~页}
}

\newenvironment{breakablealgorithm}
{% \begin{breakablealgorithm}
	\begin{center}
		\refstepcounter{algorithm}% New algorithm
		\counterwithin{algorithm}{chapter}
		\renewcommand{\thealgorithm}{\arabic{chapter}--\arabic{algorithm}}
		\hrule height.8pt depth0pt \kern2pt% \@fs@pre for \@fs@ruled
		\renewcommand{\caption}[2][\relax]{% Make a new \caption
			{\raggedright\textbf{\homework@label@algo~\thealgorithm} ##2\par}%
			\ifx\relax##1\relax % #1 is \relax
			\addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##2}%
			\else % #1 is not \relax
			\addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##1}%
			\fi
			\kern2pt\hrule\kern2pt
		}
	}{% \end{breakablealgorithm}
	\kern2pt\hrule\relax% \@fs@post for \@fs@ruled
\end{center}
}

\endinput

%%
%% End of file `homework.cls'.
