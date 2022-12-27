def prerender(file):
    dd = []
    d = []
    lg = []
    i = 0
    while i != len(file):
        if file[i] == '$' and file[i+1] == "$":
            for j in range(i+2, len(file)):
                if file[j] == '$' and file[j+1] == "$":
                    dd.append(file[i:j+2])
                    file = file.replace(file[i:j+2],
                                        f"§dd{len(dd)-1}§")
                    break
        if file[i] == '$':
            for j in range(i+1, len(file)):
                if file[j] == '$':
                    d.append(file[i:j+1].replace("|", r"\mid "))
                    file = file.replace(file[i:j+1],
                                        f"§d{len(d)-1}§")
                    break
        if file[i] == "`" and file[i+1] == "`"\
                and file[i+2] == "`" and file[i+3] != "\n":
            n = i+3
            while file[n] != "\n":
                n += 1
            lang = file[i+3:n]
            lg.append(lang)
            file = file.replace(lang, f"\n§lg{len(lg)-1}§")

        i += 1
    return (dd, d, lg, file)


class Replacer:
    def __init__(self, file: str):
        self.file = file
        self.ed = False
        self.reflist = False
        self.ireflist = 1
        self.dd = []
        self.d = []
        self.whodo = "pluttan"

    def printWarning(self, teg, warning):
        print(f"Warning ({teg.get('all_teg')}): {warning}")

    def printError(self, teg, error):
        print(f"Error ({teg.get('all_teg')}): {error}")

    def APcommands(self, teg):
        all_cmds = {
            "~whodo": r"",
            "~note": r"\footnote{"+teg.get("inf")[1:]+"}",
            "~reflist": r"",
            "~ereflist": r""
        }

        if teg.get("only_teg") == "~whodo":
            self.whodo = teg.get("inf")[1:]
        if teg.get("only_teg") == "~reflist":
            self.reflist = True
        if teg.get("only_teg") == "~ereflist":
            self.reflist = False
        try:
            self.file = self.file.replace("<"+teg.get("teg")+">",
                                          all_cmds.get(teg.get("only_teg")), 1)
        except:
            self.printWarning(teg, f"Command not found")
            return ""

    def APlatex(self, teg):
        self.file = self.file.replace("<"+teg.get("teg")+">",
                                      teg.get("teg")[5:-2], 1)

    def APpython(self, teg):
        if not ("sys." in teg.get("teg")[5:-2]) and\
           not ("import " in teg.get("teg")[5:-2]):
            import sys
            original_stdout = sys.stdout
            with open('tmp', 'w') as f:
                sys.stdout = f
                exec(teg.get("teg")[5:-2])
            sys.stdout = original_stdout
            f = open('tmp')
            self.file = self.file.replace("<"+teg.get("teg")+">", f.read(), 1)
            f.close()
        else:
            self.printWarning(teg, "You can't use additional modules")
            open('tmp', 'w').close()
            self.file = self.file.replace("<"+teg.get("teg")+">", '', 1)

    def APcomment(self, teg):
        self.file = self.file.replace("<"+teg.get("teg")+">",
                                      f'% {teg.get("teg")[4:-2]}', 1)

    def iref(self):
        self.ireflist += 1
        return str(self.ireflist)

    def APteg(self, teg):
        tegsDelete = [
            "p", "span", "figure",
            "div",
            "span",
            "tbody",
            "dl",
        ]
        tegsOne = {
            "dd": r"\hspace{20pt}"
        }
        tegsLite = {
            "h2": r"\section{",
            "strong": r"\textbf{",
            "h3": r"\subsection{",
            "h4": r"\subsubsection{",
            "h5": r"\paragraph{",
            "h6": r"\subparagraph{",
            "em": r"\textit{",
            "del": r"\sout{",
            "code": r"\texttt{",
        }
        tegsAll = {
            "dt": r"\textbf{§}\\",
            "blockquote": r"\begin{mainQuote}§\end{mainQuote}",
            "ol": r"\begin{enumerate}"+"\n§\n"+r"\end{enumerate}",
            "li": r"\item"+" §" if not (self.reflist) else r"\item \hypertarget{rl"+self.iref()+"}{§}",
            "ul": r"\begin{itemize}"+"\n§\n"+r"\end{itemize}",
            "pre": r"\begin{lstlisting}"+"\n§\n"+r"\end{lstlisting}",
            "table": r"\begin{center}"+"\n"+r"\begin{tabular}{|" +
            "c|"*((teg.get("all_teg").count("&")+1) //
                  (teg.get("all_teg").count(r"\\") if teg.get("all_teg").count(r"\\") != 0 else 1)) +
            r"}"+"\n"+r"\hline"+"\n"+r"§" +
            r"\hline"+"\n"+r"\end{tabular}"+"\n"+r"\end{center}",
            "thead": r"§\hline",
            "tr": r"§\\",
            "th": r"\textbf{§}&",
            "td": r"§&",
            "a": r"\hrf{"+self.findHref(teg)+"}{§}",
            "img": r"§\image{"+self.findSrc(teg)+"}{",
            "figcaption": "§}",
            "/": "§"
        }
        tegs_in = []
        tegs_out = []
        for i in tegsDelete:
            tegs_in.append(i)
            tegs_out.append('\n')
            tegs_in.append("/"+i)
            tegs_out.append('')
        for i in tegsOne.keys():
            tegs_in.append(i)
            tegs_out.append(tegsOne.get(i))
            tegs_in.append("/"+i)
            tegs_out.append('')
        for i in tegsLite.keys():
            tegs_in.append(i)
            tegs_out.append(tegsLite.get(i))
            tegs_in.append("/"+i)
            tegs_out.append('}')
        for i in tegsAll.keys():
            tegs_in.append(i)
            tegs_out.append(tegsAll.get(i)[:tegsAll.get(i).index("§")])
            tegs_in.append("/"+i)
            tegs_out.append(tegsAll.get(i)[tegsAll.get(i).index("§")+1:])
        if not (teg.get("is_out")):
            self.refTeg(tegs_in, tegs_out, teg)

    def APtitle(self, teg):
        self.file = self.file.replace(teg.get("all_teg"),
                                      teg.get("all_teg")
                                      .replace("<"+teg.get("teg")+">",
                                               r"\dotitle{", 1)
                                      .replace("</"+teg.get("only_teg")+">",
                                               "}", 1)
                                      .replace(" : ", "}{", 1),
                                      1)

    def haveTeg(self, st: str) -> bool:
        return "<" in st

    def re(self, w1: str, w2: str):
        self.file = self.file.replace(w1, w2)

    def refTeg(self, w1, w2, teg: dict):
        if teg.get("only_teg") in w1 and not (teg.get("is_out")):
            self.file = self.file.replace(teg.get("all_teg"),
                                          teg.get("all_teg")
                                          .replace("<"+teg.get("teg")+">",
                                                   w2[w1.index(teg.get("only_teg"))], 1)
                                          .replace("</"+teg.get("only_teg")+">",
                                                   w2[w1.index(teg.get("teg_out"))], 1),
                                          1)

    def APzn(self):
        self.file = self.file.replace("_", r"\_").replace("#", r"\#")

    def APimg(self, teg):
        self.APteg(teg)

    def findOut(self, i: int) -> int:
        while self.file[i] != ">":
            i += 1
        return i

    def findHref(self, teg):
        teg = teg.get("inf")
        if "href" in teg:
            return teg[teg.index('"')+1:teg.index('"', teg.index('"')+1)]

        return ""

    def findSrc(self, teg):
        teg = teg.get("inf")
        if "src" in teg:
            return teg[teg.index('"')+1:teg.index('"', teg.index('"')+1)]
        return ""

    def findAlt(self, teg):
        teg = teg.get("inf")
        if "alt" in teg:
            p = teg[teg.index('"', teg.index('"')+1)+1:]
            return p[p.index('"')+1:p.index('"', teg.index('"')+1)]
        return ""

    def findIn(self, i: int) -> int:
        while self.file[i] != "<":
            i += 1
        return i

    def findTeg(self, i: int) -> tuple:
        i = self.findIn(i) + 1
        teg = self.file[i:self.findOut(i)]
        tegi = i
        print(teg)
        if teg[0] != "/" and teg[-1] != "/" and teg[0] != "!":
            fiTeg = self.findTeg(i)
            i = fiTeg.get("in")
            tegin = teg.split()[0]
            while fiTeg.get("only_teg") != "/"+tegin:
                fiTeg = self.findTeg(i)
                i = fiTeg.get("in")
        tegsp = teg.split()
        return {
            "in": tegi,
            "in_out": tegi+len(teg),
            "teg": teg,
            "only_teg": tegsp[0] if teg[0] != "!" else tegsp[1],
            "inf": teg.replace(tegsp[0]+" ", "", 1)if teg[0] != "!" else
            teg.replace(tegsp[0]+" "+tegsp[1], "", 1)
            .replace(" " + tegsp[-1], "", 1),
            "is_md": True if teg[0] != "!" else False,
            "is_img": True if "img" in teg else False,
            "is_python": False if teg[0] != "!" else True if teg[4] == "*" else False,
            "is_latex": False if teg[0] != "!" else True if teg[4] == "?" else False,
            "is_command": False if teg[0] != "!" else True if teg[4] == "~" else False,
            "is_comment": False if teg[0] != "!" else True if teg[4] != "*"
            and teg[4] != "?" and teg[4] != "~" else False,
            "is_out": teg[0] == "/" and len(teg) != 1,
            "is_title": tegsp[0] == "h1",
            "out": i,
            "out_out": i+len(teg),
            "teg_out": "/"+tegsp[0],
            "all_teg": self.file[tegi-1:i+len(tegsp[0])+2],
            "have_teg": self.haveTeg(self.file[tegi+len(teg):i-1]),
            "is_end": not (self.haveTeg(self.file[i+len(tegsp[0])+3:])) and not
            (self.haveTeg(self.file[tegi+len(teg):i-1]))
        }

    def genReplace(self, teg):
        while self.haveTeg(teg):
            i = teg.get("in")+len(teg.get("teg"))+1
            while i != teg.get("out"):
                self.genReplace(self.findTeg(i))
        return teg


def afterrender(file, dd, d, lg, rep):
    for i in range(len(dd)):
        file = file.replace(f"§dd{i}§", dd[i])
    for i in range(len(d)):
        file = file.replace(f"§d{i}§", d[i])
    for i in range(len(d)):
        file = file.replace(f"§d{i}§", d[i])
    file = file.replace(r"\begin{lstlisting}"+"\n"+r"\texttt{",
                        r"\begin{lstlisting}"+"\n")
    file = file.replace(r"}"+"\n"+r"\end{lstlisting}",
                        "\n"+r"\end{lstlisting}")
    for i in range(len(lg)):
        file = file.replace(f"\n§lg{i}§", "[language = "+lg[i]+"]")

    file = file.replace("§q§", ">")
    file = file.replace("§l§", "<")
    file = file.replace("\item \n", "\item ")
    file = file.replace(r"\begin{lstlisting}"+"\n"+r"\texttt{",
                        r"\begin{lstlisting}"+"\n")
    file = file.replace(r"}"+"\n"+r"\end{lstlisting}",
                        "\n"+r"\end{lstlisting}")
    file = file.replace("&\n"+r"\\", r"\\")
    file = file.replace("&\n", "&")
    file = r"""
\include{/BMSTU/forMyDocs/preamb/preamb.tex}
\renewcommand{\copyright}{"""+rep.whodo+r"""}
\begin{document}    
    """+file+r"""
\end{document}
    """
    return file


def MaDTeX(filename: str):
    import os
    filename_uext = os.path.splitext(filename)[0]
    if not os.path.isdir("conf"):
        os.mkdir("conf")
    f = open(filename)
    f2 = open("conf/"+filename, "w")
    fileq = prerender(f.read())
    f2.write(fileq[-1])
    f2.close()
    f.close()
    os.system(
        f"pandoc -f markdown {'conf/'+filename} > {'conf/'+filename_uext+'.html'}")
    f = open('conf/'+filename_uext+'.html')
    readed = f.read()
    f.close()
    for i in range(1, 100):
        print(i)
    rep = Replacer(readed.replace("<br />", "").replace("/>", "></img>"))
    rep.APzn()
    masteg = []
    pmasteg = [1]
    while rep.haveTeg(rep.file):
        i = 0
        teg = 0
        rep.ed = False
        pmasteg = masteg
        masteg = []
        while not (rep.ed):
            t = rep.findTeg(i-1)
            if teg == t:
                teg = rep.findTeg(i)
            else:
                teg = t
            print(teg)
            i = teg.get("in")
            if not (teg.get("is_out")):
                if teg.get("is_command"):
                    rep.APcommands(teg)
                elif teg.get("is_latex"):
                    rep.APlatex(teg)
                elif teg.get("is_python"):
                    rep.APpython(teg)
                    os.system(f"rm tmp")
                elif teg.get("is_comment"):
                    rep.APcomment(teg)
                elif teg.get("is_img"):
                    rep.APimg(teg)
                elif teg.get("is_title"):
                    rep.APtitle(teg)
                elif not (teg.get("have_teg")) and teg.get("is_md"):
                    rep.APteg(teg)
            masteg.append(teg)
            rep.ed = teg.get("is_end")
    f = open('conf/'+filename_uext+".tex", "w")
    f.write(afterrender(rep.file, fileq[0], fileq[1], fileq[2], rep))
    f.close


# try:
MaDTeX("MA_exam.md")
# except:
#     pass
