#lang pollen

◊(define (metallic-mean i)
 (/ (+ i (sqrt (+ (* i i) 4))) 2))

◊(define golden-mean (metallic-mean 1))
◊(define silver-mean (metallic-mean 2))
◊(define bronze-mean (metallic-mean 3))
◊(define text-width 40)
◊(define edge (/ text-width bronze-mean))
◊(define primary-color "#005f6a")
◊(define primary-accent-color "#fc824a")
◊(define primary-active-color "white")
◊(define primary-active-accent-color primary-color)
◊(define primary-background-color "#fffefd")
◊(define secondary-color "gray")
◊(define secondary-accent-color "white")
◊(define border-halfwidth 0.1)


@import url(fonts/charter/charter.css);
@import url(https://code.cdn.mozilla.net/fonts/fira.css);

.myname {
    position: absolute;
    top: 0;
    left: 0;
    width: ◊(- edge border-halfwidth)em;
    overflow: hidden;
    float: left;
    background: ◊|primary-color|;
    border-right: solid ◊|border-halfwidth|em;
    border-color: ◊|primary-accent-color|;
}

.myname a {
    display: block;
    float: right;
    padding: ◊/[1 golden-mean]em;
    font-family: "Fira Sans", "Helvetica Neue", sans-serif;
    text-align: right;
    text-decoration: none;
    color: ◊|primary-accent-color|;
}

nav {
    position: absolute;
    top: 0;
    width: 100%;
    overflow: hidden;
    background: ◊|primary-color|;
    border-left: solid ◊|border-halfwidth|em;
    border-color: ◊|primary-accent-color|;
}

nav a {
    display: block;
    float: left;
    padding: ◊/[1 golden-mean]em;
    font-family: "Fira Sans", "Helvetica Neue", sans-serif;
    text-align: center;
    text-decoration: none;
    color: ◊|primary-accent-color|;
}

nav a:hover {
    background: ◊|primary-active-color|;
    color: ◊|primary-active-accent-color|;
}

body {
    margin-left: ◊|edge|em;
    margin-top: ◊/[edge golden-mean]em;
    width: ◊|text-width|em;
    line-height: ◊|golden-mean|;
    font-family: "Charter", serif;
    font-size: ◊|golden-mean|em;
    background: ◊|primary-background-color|
}
 
h1 {
    font-size: ◊|silver-mean|em;
}

hr {
    overflow: visible; /* For IE */
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}

◊;◊(define margin-note-margin (* text-width (/ 1 golden-mean)))
◊(define margin-note-margin text-width)
◊(define margin-note-width (* (- 1 (/ 1 (metallic-mean 5))) margin-note-margin))

.publication-list ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.publication-list li {
    padding-bottom: 1em;
}

.margin-note {
    float: right;
    clear: right;
    margin-right: -◊|margin-note-margin|em;
    width: ◊|margin-note-width|em;
    margin-top: 0;
    margin-bottom: 0;
    font-size: 1rem;
    font-style: italic;
    vertical-align: baseline;
    position: relative; 
}

