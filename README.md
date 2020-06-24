# wizthesis

Wizthesis is a document class for LaTeX compliant with the stylistic requirements of a thesis at the Faculty of Computer Science and Management (aka WIZ) at the Wrocław University of Science and Technology.

Check out the [example source file](example/example.tex) and the [compiled PDF file](https://karolbelina.github.io/wizthesis/example.pdf).

## Overview

The document class follows, to the best extent, the rules of editing of the Faculty of Computer Science and Management. Most notable features include

- Times New Roman font family with 14 pt chapter titles, 13 pt subchapter titles, 10 pt captions and 12 pt everything else,
- A4 paper size with 2.5 cm margins and an additional 0.5 cm for the binding on either the left or the right side of the page,
- Proper caption positioning for tables and figures along with 10 pt spacing and two-step numbering within a chapter,
- Support for appendices and the BibTeX bibliography,
- Compliant page numbering style,
- Engineering, bachelor's or master's thesis type along with English and Polish language support,
- Correct hyperlinking from the table of contents and within the document itself,
- Code listings support with minted,
- Dynamically adjusting and flexible title page that is actually pleasant to look at.

## Usage

To use this class in your own TeX environment, whether it's a local installation or a tool like Overleaf, it's sufficient to put the `wizthesis.cls` file into the same folder where the sources are located. If you have to use that class regularly, you should place it into a local TeX tree. To use the wizthesis class, load it via `\documentclass` at the beginning of your `.tex` file like so
```tex
\documentclass[english,masters]{wizthesis}
```

The class provides several options to customize your document:
- `english` / `polish` &ndash; specifies the thesis' language. This affects strings like chapter titles and caption headers. Defaults to `english`,
- `engineering` / `bachelors` / `masters` &ndash; specifies the type of the thesis. This only affects the text on the title page. If no type is specified, wizthesis will give you an appropriate warning.

As the class derives from the book class, it also provides some, but not all, options native to it:
- `draft` / `final`,
- `openright` / `openany`,
- `openbib`.

Other options from the book class are either superfluous or not available for wizthesis. These include `titlepage`, `notitlepage`, `a4paper`, `a5paper`, `letterpaper`, `b5paper`, `executivepaper`, `legalpaper`, `10pt`, `11pt`, `12pt`, `twocolumn`, `onecolumn`, `landscape`, `oneside`, `twoside`, `leqno`, and `fleqn`. Wizthesis will give you an appropriate warning if you try to use any of these.

To set up the information about the thesis, use the following commands in the preamble:
- `\author` &ndash; name of the author,
- `\title` &ndash; title of the thesis,
- `\supervisor` &ndash; name of the thesis' supervisor,
- `\fieldofstudy` &ndash; author's field of study,
- `\specialty` (*optional*) &ndash; author's specialty, if any. Defaults to "`---`",
- `\keywords` &ndash; thesis' keywords. Should not be longer than 150 characters,
- `\summary` &ndash; short summary of the thesis. Should not be longer than 530 characters.

## Also see

- [praca_inzynierska_latex](https://github.com/WojciechThomas/praca_inzynierska_latex) and [Bachelor-Thesis-Latex-Template](https://github.com/tugot17/Bachelor-Thesis-Latex-Template) &ndash; main alternatives to wizthesis, although less compliant with the rules of editing when it comes to spacings, and with no English language support,
- [formatka.zip](http://wmat.pwr.edu.pl/fcp/FGBUKOQtTKlQhbx08SlkTVwJQX2o8DAoHNiwFE1wZDyEPG1gnBVcoFW8SBDRKTxMKRy0SODwBBAEIMQheCFVAORFCHzY/46/public/doc/dziekanat/dyplomanci/formatka.zip) &ndash; the official LaTeX document class of the Faculty of Pure and Applied Mathematics by Damian Fafuła and many others; the main inspiration for wizthesis,
- [dyplom.zip](http://kmim.wm.pwr.edu.pl/myszka/wp-content/uploads/sites/2/2014/07/dyplom.zip) &ndash; the official LaTeX document class of the Faculty of Mechanical Engineering by Wojciech Myszka.
- [Szablon2017.zip](https://cs.pwr.edu.pl/cichon/MaterialyDydaktyczne/Szablon2017.zip) &ndash; LaTeX template for the Faculty of Fundamental Problems of Technology by Tomasz Strzałka.

## License

This software is licensed under the MIT license.

See the LICENSE file for more details.
