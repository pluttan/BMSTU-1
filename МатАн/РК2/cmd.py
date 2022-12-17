# cp "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"matan_rk2.tex "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"conf/& & cd "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"conf/& & /usr/local/texlive/2022/bin/universal-darwin/xelatex - -shell-escape matan_rk2.tex & &cp "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"/conf/matan_rk2.pdf "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"/& & py - u / Users/pluttan/Desktop/проекты/pycerverfile/tryemail.py "/Volumes/Общая папка/BMSTU-1/МатАн/РК2/"matan_rk2.pdf

def command(path_file):
    import os
    import shutil

    path_file = "/root/BMSTU/" + path_file[path_file.index("BMSTU-1"):]
    pth = path_file.replace(os.path.basename(path_file), '')
    if not os.path.isdir(pth + "conf"):
        os.mkdir(os.path.join(pth, "conf"), 0o666)
    if not os.path.isdir(pth + "img"):
        os.mkdir(os.path.join(pth, "img"), 0o666)

    shutil.copyfile(path_file, pth+"conf/"+os.path.basename(path_file))

    os.system("cd " + pth + "conf" + "&xelatex --shell-escape " + path_file)

    shutil.copyfile(pth+"conf/"+os.path.splitext(os.path.basename(path_file)) +
                    ".pdf", pth + os.path.splitext(os.path.basename(path_file)) +
                    ".pdf")


command("/root/BMSTU/BMSTU-1/МатАн/РК2/matan_rk2.tex")
