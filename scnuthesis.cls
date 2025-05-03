%%
%% This is file `scnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% scnuthesis.dtx  (with options: `cls')
%% 
%% !Mode:: "TeX:UTF-8"
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013 by Joseph Pan <cs.wzpan@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% Any Suggestions : Joseph Pan <cs.wzpan@gmail.com>
%% Thanks LiuBenYuan <liubenyuan@gmail.com> for the nudtpapre class!
%% Thanks Xue Ruini <xueruini@gmail.com> for the thuthesis class!
%% Thanks sofoot for the original NUDT paper class!
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{scnuthesis}

\newif\ifshowtext\showtexttrue  % 或 \showtextfalse 来控制是否显示正文
\DeclareOption{hidetext}{\showtextfalse}
\newif\ifisprivate\isprivatefalse % 控制是否显示关键隐私信息
\DeclareOption{private}{\isprivatetrue}

\newif\ifismaster\ismastertrue
\DeclareOption{master}{\ismastertrue}
\DeclareOption{doctor}{\ismasterfalse}
\newif\ifisanon\isanonfalse
\DeclareOption{anon}{\isanontrue}
\newif\ifistwoside\istwosidefalse
\DeclareOption{twoside}{\istwosidetrue}
\newif\ifistwoprof\istwoproffalse
\DeclareOption{twoprof}{\istwoproftrue}
\newif\ifischapter\ischapterfalse
\DeclareOption{chapterhead}{\ischaptertrue}
\DeclareOption*{\PackageWarning{scnuthesis}{Unknown Option '\CurrentOption'}}
\ProcessOptions\relax
\RequirePackage{ifthen,calc}
\ifistwoside
  \LoadClass[a4paper,12pt,openright,twoside]{book}
\else
  \LoadClass[a4paper,12pt,openany]{book}
\fi
\RequirePackage{pifont} % wzq 勾和叉
\RequirePackage{lmodern} % wzq 解决字体报错：Font shape `OT1/cmr/bx/n' in size <10.53937> not available
\RequirePackage[includeheadfoot]{geometry}
\RequirePackage[center,pagestyles]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage[config]{subfig}
\RequirePackage{float}
\RequirePackage{array}
\RequirePackage{setspace}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
\RequirePackage{diagbox}
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb,bm}
\RequirePackage[varg]{txfonts}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage[CJKnumber,no-math,BoldFont,SlantFont]{xeCJK}
\punctstyle{hangmobanjiao}
\RequirePackage{ulem}
\RequirePackage{indentfirst}
\RequirePackage[numbers,sort&compress,square]{natbib}
\RequirePackage[CJKbookmarks=true,pdfborder=0 0 1]{hyperref}
\RequirePackage{adjustbox}
\renewcommand{\UrlFont}{\rmfamily} % wzq
\RequirePackage{mathabx}
\defaultfontfeatures{Mapping=tex-text}
\xeCJKsetcharclass{"0}{"2E7F}{0}
\xeCJKsetcharclass{"2E80}{"FFFF}{1}

\setmainfont[ExternalLocation=fonts/, BoldFont={timesbd.ttf},ItalicFont={timesi.ttf},BoldItalicFont={timesbi.ttf}]{times.ttf}
\setsansfont[ExternalLocation=fonts/, BoldFont={arialbd.ttf},ItalicFont={ariali.ttf}]{arial.ttf}
\setmonofont[ExternalLocation=fonts/, BoldFont={courbd.ttf},ItalicFont={couri.ttf}]{cour.ttf}

% 替换本地字体为windows字体集方法
\setCJKfamilyfont{song}[ExternalLocation=fonts/]{simsun.ttc}
\setCJKfamilyfont{hei}[ExternalLocation=fonts/]{simhei.ttf}
\setCJKfamilyfont{fs}[ExternalLocation=fonts/]{simfang.ttf}
\setCJKfamilyfont{kai}[ExternalLocation=fonts/]{simkai.ttf}
\setCJKfamilyfont{li}[ExternalLocation=fonts/]{simkai.ttf}
\setCJKfamilyfont{you}[ExternalLocation=fonts/]{simkai.ttf}
\setCJKmainfont[ExternalLocation=fonts/, BoldFont={simhei.ttf},ItalicFont={simkai.ttf}]{simsun.ttc}
\setCJKsansfont[ExternalLocation=fonts/]{simhei.ttf}
\setCJKmonofont[ExternalLocation=fonts/]{simkai.ttf}

% % wzq 替换 Adobe字体为windows字体（知网查重）
% \setCJKmainfont{SimSun}[BoldFont={SimHei}, ItalicFont={KaiTi}]
% \setCJKsansfont{SimHei}
% \setCJKmonofont{FangSong}
% \setCJKfamilyfont{song}{SimSun}    % 宋体
% \setCJKfamilyfont{hei}{SimHei}     % 黑体
% \setCJKfamilyfont{fs}{FangSong}   % 仿宋体
% \setCJKfamilyfont{kai}{KaiTi}      % 楷体
% \setCJKfamilyfont{li}{KaiTi}       % 隶书（可用楷体代替）
% \setCJKfamilyfont{you}{KaiTi}      % 幼圆（可用楷体代替）

\newcommand{\song}{\CJKfamily{song}}    % 宋体
\newcommand{\fs}{\CJKfamily{fs}}        % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}      % 楷体
\newcommand{\hei}{\CJKfamily{hei}}      % 黑体
\newcommand{\li}{\CJKfamily{li}}        % 隶书
\newcommand{\you}{\CJKfamily{you}}      % 幼圆
\newCJKfontfamily{\cusong}[AutoFakeBold={2.17}]{SimSun}
\xeCJKsetup{EmboldenFactor=1}
\setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold]

% 这里设置图、表、公式自动生成的编号
\renewcommand {\thetable} {\thechapter{}.\arabic{table}}
\renewcommand {\thefigure} {\thechapter{}.\arabic{figure}}
\renewcommand {\theequation} {\thechapter{}.\arabic{equation}}

% \newCJKfontfamily{\cusong}[AutoFakeBold={2.17}]{SimSun}
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\lishu{\li}
\def\youyuan{\you}
\newlength\thu@linespace
\newcommand{\thu@choosefont}[2]{%
    \setlength{\thu@linespace}{#2*\real{#1}}%
    \fontsize{#2}{\thu@linespace}\selectfont}
\def\thu@define@fontsize#1#2{%
    \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \thu@choosefont{##1}{#2}}}
\thu@define@fontsize{chuhao}{42bp}
\thu@define@fontsize{xiaochu}{36bp}
\thu@define@fontsize{yihao}{26bp}
\thu@define@fontsize{xiaoyi}{24bp}
\thu@define@fontsize{erhao}{22bp}
\thu@define@fontsize{xiaoer}{18bp}
\thu@define@fontsize{sanhao}{16bp}
\thu@define@fontsize{xiaosan}{15bp}
\thu@define@fontsize{sihao}{14bp}
\thu@define@fontsize{banxiaosi}{13bp}
\thu@define@fontsize{xiaosi}{12bp}
\thu@define@fontsize{dawu}{11bp}
\thu@define@fontsize{wuhao}{10.5bp}
\thu@define@fontsize{xiaowu}{9bp}
\thu@define@fontsize{liuhao}{7.5bp}
\thu@define@fontsize{xiaoliu}{6.5bp}
\thu@define@fontsize{qihao}{5.5bp}
\thu@define@fontsize{bahao}{5bp}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 上标形式引用
\newcommand{\china}{中华人民共和国}
\def\thuthesis{\textsc{Thu}-\textsc{Thesis}}
\def\nudtpaper{\textsc{Nudt}\textsc{Paper}}
\def\scnuthesis{\textsc{SCNU}\textsc{Thesis}}
\newcommand{\pozhehao}{\kern0.3ex\rule[0.8ex]{2em}{0.1ex}\kern0.3ex}
\newcommand{\chapterlabel}{}
\renewcommand\contentsname{目\hspace{1em}录}
\renewcommand\listfigurename{图\hspace{1em}目\hspace{1em}录}
% \newpage
% \thispagestyle{plain}
% \mbox{}
\renewcommand\listtablename{表\hspace{1em}目\hspace{1em}录}
% \newpage
% \thispagestyle{plain}
% \mbox{}
\newcommand\denotationname{\hei 符号列表}
\newcommand\ackname{致\hspace{1em}谢}
\newcommand\resumename{攻读硕士学位期间取得的研究成果}
\newcommand\innoname{本文创新性说明}
\newcommand\listequationname{公式索引}
\newcommand\equationname{公式}
\renewcommand\bibname{参考文献}
% \newpage
% \thispagestyle{plain}
% \mbox{}
\renewcommand\indexname{索引}
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\renewcommand\appendixname{附录}
\def\CJK@today{\the\year 年 \the\month 月 \the\day 日}
\newcommand\zhtoday{\CJK@today}
\newcommand\entoday{\today{}}

\geometry{top=15mm,bottom=15mm,left=25mm,right=25mm}
\geometry{headheight=9mm,headsep=1mm,footskip=10mm}

% \geometry{top=21mm,bottom=25.5mm,left=30mm,right=30mm}
% \geometry{headheight=9mm,headsep=1mm,footskip=10mm}

 \renewcommand\setheadrule[1]{%
    \ifdim#1=\z@
       \let\makeheadrule\@empty
    \else
       \def\makeheadrule{%
       \makebox[0pt][l]{\rule[.2\baselineskip]{\linewidth}{1pt}}%
       }%
    \fi
  }

\renewcommand{\chaptermark}[1]{\markboth{\chaptertitlename~\ #1}{}}

\renewpagestyle{plain}{
\sethead{}{\raisebox{.65\baselineskip}
  {
    \songti \wuhao
    \ifischapter % 标题作为页眉
      \ifistwoside
      {
        \ifodd \value{page} % 奇数页
        {\title}
        \else % 偶数页
        {\@displaytitle}\fi
      }
      \else
      {\title}\fi
      \else %标题不作为页眉
      {\@displaytitle}\fi
  }
}{}
\headrule%
\setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
\footrule%
\setfootrule{1bp}
}

\newpagestyle{frontpage}{
  % \sethead{}{\raisebox{.65\baselineskip}
  % {
  %   \songti \wuhao
  %   \ifischapter % 标题作为页眉
  %     \ifistwoside
  %     {
  %       \ifodd \value{page} % 奇数页
  %       {\songti \wuhao \chaptertitle}
  %       \else % 偶数页
  %       {\songti \wuhao \chaptertitle}\fi
  %     }
  %     \else
  %     {\songti \wuhao \chaptertitle}\fi
  %     \else %标题不作为页眉
  %     {\songti \wuhao \chaptertitle}\fi
  % }}{}
  % \headrule%
  \setfoot{}{{\songti \wuhao \thepage}}{}%
}

\newpagestyle{mpage}{
  \sethead{}{\raisebox{.65\baselineskip}
    {
      \songti \wuhao
      \ifischapter % 标题作为页眉
        \ifistwoside
        {
          \ifodd \value{page} % 奇数页
          {\title}
          \else % 偶数页
          {\@displaytitle}\fi
        }
        \else
        {\title}
        \fi
      \else % 标题不作为页眉
      {
        \ifodd \value{page} % 奇数页
        {\@displaytitle}
        \else % 偶数页
        {华南师范大学硕士学位论文}
        \fi % 2024年新格式要求
      }\fi
    }
  }{}
  \headrule
  \setheadrule{1bp}
  \setfoot{}{{\songti \wuhao \thepage}}{}%
% \footrule%
% \setfootrule{1bp}
}

\newpagestyle{appendixpage}{
\sethead{}{\raisebox{.65\baselineskip}
  {
    \songti \wuhao
    \ifischapter % 标题作为页眉
      \ifistwoside
      {
        \ifodd \value{page} % 奇数页
        {附录\thechapter\hspace{1em}\chaptertitle}
        \else % 偶数页
        {\@displaytitle}\fi
      }
      \else
      {附录\thechapter\hspace{1em}\chaptertitle}\fi
      \else %标题不作为页眉
      {\@displaytitle}\fi
    }
}{}
\headrule%
\setfoot{}{{\songti \wuhao 第~\thepage~页}}{}%
\footrule%
\setfootrule{1bp}
}

\newpagestyle{emptypage}{
% \sethead{}{\raisebox{.65\baselineskip}
%   {
%     \songti \wuhao
%     \ifischapter % 标题作为页眉
%       \ifistwoside
%       {
%         \ifodd \value{page} % 奇数页
%           {\chaptertitle}
%         \else % 偶数页
%           {\chaptertitle}
%         \fi
%       }
%       \else
%       {\chaptertitle}\fi
%       \else %标题不作为页眉
%       {\chaptertitle}\fi
%   }
% }{}
% \headrule%
\setfoot{}{{\songti \wuhao \thepage}}{}%
% \footrule%
% \setfootrule{1bp}
}

\renewcommand\frontmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
    \pagenumbering{Roman}
    \pagestyle{frontpage}
}

\renewcommand\mainmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmattertrue

    \pagenumbering{arabic}
    \normalsize % normal, 正文开始
    \def\@tabular{\wuhao[1.25]\old@tabular} % 之后表格字体使用5号

    \pagestyle{mpage}
  }
\renewcommand\backmatter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \titleformat{\chapter}{\filcenter \heiti \sanhao}{附录\,\thechapter\,}{1em}{}
    \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
      {附录\,\thecontentslabel\quad}{}
      {\hspace{.5em}\titlerule*{.}\contentspage}
      \@mainmattertrue
    \pagestyle{appendixpage}
  }
\renewcommand\cleardoublepage{\clearpage\if@openright \ifodd\c@page
  \else
  \newpage{}
  \thispagestyle{empty}
  \vspace*{\fill}
  \begin{center}
  \end{center}
  \vspace*{\fill}
  \clearpage\fi\fi%
}
%%
\newcommand\cabstractname{摘\hspace{1em}要}
\newcommand\ckeywordsname{\hspace{-2em}{\heiti \xiaosi 关键词：}}
\newcommand\ckeywords[1]{{\xiaosi \songti 
\begin{spacing}{1.5}\ckeywordsname #1\end{spacing}}}

\newcommand\eabstractname{ABSTRACT}
\newcommand\ekeywordsname{\hspace{-2em}{\xiaosi \textsf{KEY WORDS:}}}
% \newcommand\ekeywords[1]{{\xiaosi \ekeywordsname~#1}}
\newcommand\ekeywords[1]{{\xiaosi %
\begin{spacing}{1.5}\ekeywordsname~#1\end{spacing}}}

\newenvironment{cabstract}{%
  {\if@openright\cleardoublepage\else\clearpage\fi}%
  \chaptermark{摘要}
  % \addcontentsline{toc}{chapter}{\cabstractname}%
  ~
  \begin{spacing}{2.0}
    \begin{center}{\sanhao \hei 摘~要}\end{center}%
  \end{spacing}
  \xiaosi \vspace{1.4pt}%
  \ifisanon {
    \hideInfo
  }\fi
  % \begin{center}%
  %   \begin{tabular}[c]{lc}%
  %     {专业名称：} & \@subject \\%
  %     {申\kern0.5em请\kern0.5em人：}& \@author \\%
  %     {导\kern2em师：} & \@supervisor \\%
  %   \end{tabular}%
  % \end{center}%

  %
  % ~\\%
  % ~\\%
  % {\heiti\xiaosan \cabstractname} %

  % \@afterheading
}
{\par\vspace{2em}\par}

\newenvironment{eabstract}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \chaptermark{ABSTRACT}
  % \addcontentsline{toc}{chapter}{\eabstractname}%
  ~
  \begin{spacing}{2.0}
    \begin{center}{\sanhao \textbf{ABSTRACT}}\end{center}%
  \end{spacing}
  \xiaosi \vspace{1.4pt}

  % \begin{center}%
  %   \begin{tabular}[c]{lc}%
  %     Major： & \@ensubject \\%
  %     Candidate：& \@enauthor \\%
  %     Supervisor： & \@ensupervisor \\%
  %   \end{tabular}%
  % \end{center}%

  % ~\\%
  % ~\\%
  % ~\\%
  % {\sihao \textsf \eabstractname} %

  % \@afterheading
}
{\par\vspace{2em}\par}
% \titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \heiti \xiaosi[1.25]}
%     {第\CJKnumber{\thecontentslabel}章\quad}{}
%     {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{chapter}[0pt]{\vspace{0.25\baselineskip} \songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{section}[2em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{subsection}[4em]{\songti \xiaosi[1.25]}
    {\thecontentslabel\quad}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{figure}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{图~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\titlecontents{table}[0pt]{\songti \xiaosi[1.25]}
    {\makebox[3.5em][l]{表~\thecontentslabel\quad}}{}
    {\hspace{.5em}\titlerule*{.}\contentspage}
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\scnu@chapter\@schapter}
\def\scnu@chapter[#1]#2{
  \ifnum \c@secnumdepth >\m@ne
    \if@openright\cleardoublepage\else\clearpage\fi
    \phantomsection
    \if@mainmatter
      \refstepcounter{chapter}%
      \addcontentsline{toc}{chapter}%
        {\protect\numberline{\thechapter}#1}%
    \else
      \addcontentsline{toc}{chapter}{#1}%
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \if@twocolumn
    \@topnewpage[\@makechapterhead{#2}]%
  \else
    \@makechapterhead{#2}%
    \@afterheading
  \fi
}
\newcommand{\sectionbreak}{%
\addpenalty{-300}%
\vspace*{0pt}%
}
\setlength{\topskip}{0pt}
\setcounter{secnumdepth}{3}

% \titleformat{\chapter}{\filcenter \heiti  \xiaoer[1.25]}{第\CJKnumber{\thechapter}章\,}{1em}{}
\titleformat{\chapter}{\filcenter \heiti  \xiaoer [1.25]}{\thechapter\hspace{1em}}{0em}{} % 正文标题，华师理工科建议样式，

\titleformat{\section}{\heiti \xiaosan[1.25]}{\thesection}{1em}{}
\titleformat{\subsection}{\heiti \sihao[1.25]}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\songti \bfseries\xiaosi[1.25]}{\thesubsubsection}{1em}{}
\titlespacing{\chapter}{0pt}{2.4ex-\topskip-\heightof{A}}{2.4ex}
\titlespacing{\section}{0pt}{2ex-\heightof{a}}{2ex}
\titlespacing{\subsection}{0em}{2ex}{2ex}
\titlespacing{\subsubsection}{0em}{1ex}{0ex}
\renewcommand\normalsize{%
  \xiaosi%
  \renewcommand{\baselinestretch}{1.5}%
\setlength\abovedisplayskip{8bp \@plus 0.5bp \@minus 0.5bp}%
\setlength\abovedisplayshortskip{8bp \@plus 0.5bp \@minus 0.5bp}%
% \setlength\abovedisplayskip{10bp \@plus 2bp \@minus 2bp}%
% \setlength\abovedisplayshortskip{10bp \@plus 2bp \@minus 2bp}%
\setlength\belowdisplayskip{\abovedisplayskip}%
\setlength\belowdisplayshortskip{\abovedisplayshortskip}%
}
\setlength{\parindent}{2em}
% \setlength{\parskip}{0bp \@plus 0.5bp \@minus 0.5bp} % 原本
\setlength{\parskip}{0bp} % 或其他固定长度，如 6pt、1em 等
\newcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}

\renewenvironment{thebibliography}[1]{%
  \pagestyle{emptypage}
  \chapter*{\bibname}%
  \chaptermark{\bibname}
  \addcontentsline{toc}{chapter}{\normalfont \bibname}
  \list{\@biblabel{\@arabic\c@enumiv}}%
  % \renewcommand{\chapterlabel}{\bibname}
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.4em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \setlength{\itemsep}{0pt} % wzq 新增 设置条目间距为0
    % \addtolength{\itemsep}{-0.5em} % wzq 新增 让条目之间更接近
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    % \renewcommand{\chapterlabel}{\bibname}
  \sloppy\frenchspacing
  \clubpenalty4000%
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m
}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist\frenchspacing}

\setlength{\floatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\intextsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\textfloatsep}{12bp \@plus 2bp \@minus 1bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.80}
\let\old@tabular\@tabular
\def\thu@tabular{\wuhao[1.25]\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\xiaosi[1.25]\heiti #1~\rmfamily #2}}
\DeclareCaptionLabelFormat{codeformat}{代码 #2}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\xiaosi[1.25]\heiti}

\captionsetup{labelformat=thu,labelsep=thu,font={thu,stretch=1.5}}
\captionsetup[lstlisting]{labelformat=codeformat, aboveskip=6bp}
\captionsetup[table]{position=top,belowskip={12bp-\intextsep},aboveskip=6bp}
\captionsetup[figure]{position=bottom,belowskip={9bp-\intextsep},aboveskip=6bp}
\captionsetup[subfloat]
{labelformat=simple,font=thu,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\thu@LT@array\LT@array
\def\LT@array{\thu@LT@array}
\newenvironment{denotation}[1][3cm]{
  \if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{emptypage}
  \chapter*{\denotationname} % no tocline
  \addcontentsline{toc}{chapter}{\denotationname}%
  \noindent\begin{list}{}%
    {\vskip-30bp\xiaosi[1.6]
      \renewcommand\makelabel[1]{##1\hfil}
      \setlength{\labelwidth}{#1} % 标签盒子宽度
      \setlength{\labelsep}{1cm} % 标签与列表文本距离
      \setlength{\itemindent}{0cm} % 标签缩进量
      \setlength{\leftmargin}{\labelwidth+\labelsep} % 左边界
      \setlength{\rightmargin}{0cm}
      \setlength{\parsep}{0cm} % 段落间距
      \setlength{\itemsep}{0cm} % 标签间距
      \setlength{\listparindent}{0cm} % 段落缩进量
      \setlength{\topsep}{0pt} % 标签与上文的间距
    }
  }{\end{list}}
\newenvironment{ack}{%
  \thispagestyle{emptypage}
  \chapter*{\ackname}%
  \addcontentsline{toc}{chapter}{\normalfont\ackname}%
  \ifisanon\color{white}\else\relax\fi%
  \xiaosi%
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}
\newenvironment{resume}{%
  \thispagestyle{emptypage}
  \chapter*{\resumename}
  \chaptermark{\resumename}
  \addcontentsline{toc}{chapter}{\normalfont\resumename}
  % \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
}
{\par\vspace{2em}\par}

% wzq 新增 原创性说明
\newcommand\statementname{华南师范大学学位论文原创性声明}
\newenvironment{statement}{%
  \thispagestyle{emptypage}
  \chapter*{\statementname}
  \chaptermark{\statementname}
  \addcontentsline{toc}{chapter}{\normalfont\statementname}
  % \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
} % wzq 结束新增
{\par\vspace{2em}\par}

% wzq 新增 论文创新性说明
% \newcommand\innoname{本文创新性说明}
\newenvironment{inno}{%
  \thispagestyle{emptypage}
  \chapter*{\innoname}
  \chaptermark{\innoname}
  \addcontentsline{toc}{chapter}{\normalfont\innoname}
  % \ifisanon\color{white}\else\relax\fi%
  \xiaosi
  \@mainmatterfalse
  \@afterheading
} % wzq 结束新增
{\par\vspace{2em}\par}

\renewtheoremstyle{nonumberplain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ \theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ (##3)\theorem@separator]}
\theoremstyle{nonumberplain}
\theorembodyfont{\rmfamily}
\theoremheaderfont{\sffamily}
\theoremsymbol{\ensuremath{\blacksquare}}
\theoremseparator{:\,}
\newtheorem{proof}{证明}[chapter]
\newtheorem{assumption}{假设}[chapter]
\newtheorem{definition}{定义}[chapter]

\renewtheoremstyle{plain}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\theorem@separator]}%
{\item[\hspace*{2em} \theorem@headerfont ##1\ ##2\ (##3)\theorem@separator]}
\theoremstyle{plain}
\theorembodyfont{\kai}
\theoremheaderfont{\hei}
\theoremsymbol{}
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{conjecture}{猜想}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{exercise}{练习}[section]
\newtheorem{example}{例}[section]
\newtheorem{problem}{问题}[section]
\newtheorem{remark}{注释}[section]
\renewenvironment{split}{%
  \if@display%
    \ifinner%
      \@xp\@xp\@xp\split@aligned%
    \else%
      \ifst@rred \else \global\@eqnswtrue \fi%
    \fi%
  \fi%
  \collect@body\gather@split%
}{%
  \crcr%
  \egroup%
  \egroup%
  \iftagsleft@ \@xp\lendsplit@ \else \@xp\rendsplit@ \fi%
}
\def\privatetext#1{\def\@privatetext{#1}} % 私密文本
\def\enprivatetext#1{\def\@enprivatetext{#1}} % 私密文本英文
\def\classification#1{\def\@classification{#1}} % 中图分类号
\def\serialno#1{\def\@serialno{#1}} % 学号
\def\udc#1{\def\@udc{#1}} % udc号
\def\mastertype#1{\def\@mastertype{#1}} % 硕士学位类型
\def\confidentiality#1{\def\@confidentiality{#1}} % 密级
\def\title#1{\def\@title{#1}} % 中文题目
\def\displaytitle#1{\def\@displaytitle{#1}} % 文章标题
\def\entitle#1{\def\@entitle{#1}} % 英文标题
\def\author#1{\def\@author{#1}} % 中文作者名
\def\enauthor#1{\def\@enauthor{#1}} % 英文作者名
\def\zhdate#1{\def\@zhdate{#1}} % 中文日期
\def\endate#1{\def\@endate{#1}} % 英文日期
\def\subject#1{\def\@subject{#1}} % 中文学科
\def\ensubject#1{\def\@ensubject{#1}} % 英文学科
\def\researchfield#1{\def\@researchfield{#1}} % 中文研究方向
\def\enresearchfield#1{\def\@enresearchfield{#1}} % 英文研究方向
\def\supervisor#1{\def\@supervisor{#1}} % 导师
\def\ensupervisor#1{\def\@ensupervisor{#1}} % 导师英文名
\def\secondsupervisor#1{\def\@secondsupervisor{#1}} % 第二导师
\def\ensecondsupervisor#1{\def\@secondensupervisor{#1}} % 第二导师英文名
\def\protitle#1{\def\@protitle{#1}} % 导师的职称
\def\enprotitle#1{\def\@enprotitle{#1}} % 导师的职称英文名
\def\secondprotitle#1{\def\@secondprotitle{#1}} % 第二导师的职称
\def\ensecondprotitle#1{\def\@ensecondprotitle{#1}} % 第二导师的职称英文名
\def\school#1{\def\@school{#1}} % 学院
\def\enschool#1{\def\@enschool{#1}} % 学院英文名

\def\optionpaperclass#1{\def\@optionpaperclass{#1}} % paperclass
\def\optionpaperclassen#1{\def\@optionpaperclassen{#1}} % paperclass english
\def\optionas#1{\def\@optionas{#1}} % Advisor OR Supervisor
\ifismaster
  \optionpaperclass{硕士}
  \optionpaperclassen{Master}
  \optionas{Advisor}
\else
  \optionpaperclass{博士}
  \optionpaperclassen{Doctor}
  \optionas{Supervisor}
\fi

% wzq 新增 用来实现多行下划线
\newlength\myheight
\newcommand\Mysavedprevdepth{}%
\newcommand\UnderlineCentered[3]{%
    \begin{adjustbox}{minipage=[t]{\dimexpr#1\relax},gstore totalheight=\myheight,margin=0pt}%
      \centering\leavevmode{#3}\par\xdef\Mysavedprevdepth{\the\prevdepth}%
    \end{adjustbox}%
    \hspace*{-\dimexpr#1\relax}%
    \begin{adjustbox}{minipage=[t][\myheight]{\dimexpr#1\relax},margin=0pt}%
      \vphantom{Eg}\lower\dimexpr#2\relax\hbox to\hsize{\leaders\hrule\hfill\kern0pt}\par
      \kern-\dimexpr#2\relax
      \xleaders\vbox to\baselineskip {\vfill\hbox{\lower\dimexpr#2\relax\hbox to\hsize{\leaders\hrule\hfill\kern0pt}}\kern-\dimexpr#2\relax}\vfill
      \kern\Mysavedprevdepth
    \end{adjustbox}%
}%

\newcommand\hideInfo{
  \classification{}       % 分类号
  \udc{}                  % UDC号
  \confidentiality{}      % 密级
  % \serialno{2022023414}   % 学号
  \supervisor{}
  \protitle{}
  \author{}
  \school{}
  \enauthor{}%
  \ensupervisor{}%
  \enprotitle{}%
  \enschool{}%
}

\newcommand\privateInfo{
  \classification{\@privatetext}    % 分类号
  \udc{\@privatetext}               % UDC号
  \confidentiality{\@privatetext}   % 密级
  % \serialno{\@privatetext}
  \supervisor{\@privatetext}
  \protitle{\@privatetext}
  \author{\@privatetext}
  \school{\@privatetext}
  \enauthor{\@enprivatetext}%
  \ensupervisor{\@enprivatetext}%
  \enprotitle{\@enprivatetext}%
  \enschool{\@enprivatetext}%
}

% wzq 中文封面 支持下划线及换行
\def\maketitle{%
  \renewcommand{\baselinestretch}{1.3}%
  \def\entry##1##2##3{%
    \multicolumn{##1}{l}{\underline{\hbox to ##2{\hfil##3\hfil}}}
  }
  \null
  \ifisprivate\privateInfo\else\relax\fi
  \ifisanon\hideInfo\else\relax\fi
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}\leavevmode % 表格环境
  \vspace{-2.3cm}
    {\songti \sihao[1.25]%
    \begin{tabular}{llcll}
      分类号：  & \entry{1}{3.2cm}{\@classification}      \hspace*{4.8cm}   %
      密级： & \entry{1}{3.2cm}{\@confidentiality} \\[5mm]
      UDC： & \entry{1}{3.2cm}{\@udc}     \hspace*{4.8cm}%
      学号：  & \entry{1}{3.2cm}{\@serialno}
    \end{tabular}
  }
  \par
  \vspace*{3.5cm} %插入空白
  \includegraphics[width=9.3cm]{title.pdf}\\
  %\vspace{-1.5cm} %文字上移
  \sanhao\textbf{\textit{South China Normal University}}\\
  \vspace{0.1cm} %插入空白
  {\songti \bfseries \yihao \ziju{12pt} \@optionpaperclass{}学位论文\\}
  \ifismaster
  \vspace{0.2cm} %插入空白
  {\songti \bfseries \xiaoer \ziju{0.5em} （\kern0.5em\@mastertype 学位\kern0.5em）\\}
  \fi
  \vspace{1.5cm} %插入空白
  \UnderlineCentered{\textwidth}{2mm}{\textbf{\erhao\@title}}\\
  \ifistwoprof
    \vspace{1cm}
  \else
    \vspace{45bp}
  \fi
  \renewcommand\arraystretch{1.3}
  {\songti \sihao
    \begin{tabular}{lp{6cm}}
      {学\kern0.5em位\kern0.5em申\kern0.5em请\kern0.5em人：}           & \UnderlineCentered{6cm}{2mm}{\@author} \\
      % \vspace{1mm} 
      {学\kern1em科\kern1em专\kern1em业：}               & \UnderlineCentered{6cm}{2mm}{\@subject} \\
      % \vspace{2mm} 
      {论\kern0.2em文\kern0.2em研\kern0.2em究\kern0.2em方\kern0.2em向：}  & \UnderlineCentered{6cm}{2mm}{\@researchfield} \\
      % \vspace{2mm}
      {所\kern1em在\kern1em学\kern1em院：}   & \UnderlineCentered{6cm}{2mm}{\@school} \\
      % \vspace{2mm}
      {导师姓名及职称：}          & \UnderlineCentered{6cm}{2mm}{\@supervisor~\@protitle} \\
      & \UnderlineCentered{6cm}{2mm}{\@secondsupervisor~\@secondprotitle} \\
    \end{tabular}
  }\\
  \ifisanon
    \vspace{3.0cm}
  \else
    \ifistwoprof
      \vspace{1.5cm}
    \else
      \vspace{3cm}
    \fi
  \fi
  \sanhao \@zhdate
  \vspace{1cm}
  \end{center}%
  \vspace{1mm}
  \cleardoublepage%
}

% wzq 新增 英文封面
\def\enmaketitle{%
  \renewcommand{\baselinestretch}{1.3}%
  \null
  \ifisanon%
  \enauthor{}%
  \ensupervisor{}%
  \enprotitle{}%
  \enschool{}%
  \else\relax\fi%
  \pagenumbering{alph}% not display, for print only
  \thispagestyle{empty}%
  \begin{center}
  \erhao \textbf{{South China Normal University}}\\
  \vspace{1.5cm} % 插入空白
  \xiaoer \textbf{A Dissertation Submitted for the Degree of Master}\\
  \vspace{3cm}
  \UnderlineCentered{\textwidth}{2mm}{\textbf{\erhao\@entitle}}\\
  \vspace{1.5cm}
  \renewcommand\arraystretch{1.5}
  \renewcommand{\baselinestretch}{1.5}
  {\songti \sihao
    \begin{tabular}{lp{6cm}}
      \textbf{\sanhao Candidate:}           & \UnderlineCentered{6cm}{2mm}{\@enauthor} \\[-5.5mm]
      \textbf{\sanhao Major:}               & \UnderlineCentered{6cm}{2mm}{\@ensubject} \\[-1.5mm]
      \textbf{\sanhao Research direction:}  & \UnderlineCentered{6cm}{2mm}{\@enresearchfield} \\[-1.5mm]
      \textbf{\sanhao Department/School:}   & \UnderlineCentered{6cm}{2mm}{\@enschool} \\[-1.5mm]
      \textbf{\sanhao Supervisor:}          & \UnderlineCentered{6cm}{2mm}{\@enprotitle~\@ensupervisor} \\[-5.5mm]
      & \UnderlineCentered{6cm}{2mm}{\@ensecondprotitle~\@secondensupervisor} \\
    \end{tabular}
  }\\
  \ifisanon
    \vspace{3.0cm}
  \else
    \ifistwoprof
      \vspace{1.5cm}
    \else
      \vspace{3cm}
    \fi
  \fi
  \sanhao \textbf{\@endate}
  \erhao \vspace{1cm}
  \end{center}%
  \vspace{1mm}
  \cleardoublepage%
}

%% wzq 新增 自定义列举项的序号格式
\RequirePackage{enumitem}
\setenumerate[1]{
  label=(\arabic*),
  itemsep=0pt,
  topsep=0pt,     % 列表与上文的间距
  parsep=0pt,      % 列表项内段落之间的间距
  leftmargin=2em  % 添加此行，设置左缩进为2个汉字宽度
} % wzq 结束新增

\endinput
%%
%% End of file `scnuthesis.cls'.
