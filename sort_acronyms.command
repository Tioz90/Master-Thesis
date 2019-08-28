#!/anaconda3/bin/python3

with open("acronyms.tex", "r+") as f:
    lines = f.readlines()[1:-1]
    lines.sort()        
    f.seek(0)
    f.write(r"\begin{itemize}")
    f.write("\n")
    f.writelines(lines)
    f.write(r"\end{itemize}")