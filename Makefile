default: xm-cn.pdf xm-en.pdf resume.pdf

resume.pdf: xm-en.pdf
	cp $^ resume.pdf

xm-cn.pdf: xm-cn.tex
	xelatex $^

xm-en.pdf: xm-en.tex
	xelatex $^

clean:
	rm -rf *.pdf
