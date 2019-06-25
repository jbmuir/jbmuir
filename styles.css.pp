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
    /* this seems quite stupid but whatever 
       apparently body sets a global margin
       and the width includes padding*/
    width: ◊(- edge (+ (/ 2 golden-mean) border-halfwidth))em;
    overflow: hidden;
    display: block;
    float: left;
    padding: ◊/[1 golden-mean]em;
    font-family: "Fira Sans", "Helvetica Neue", sans-serif;
    text-align: right;
    text-decoration: none;
    background: ◊|primary-color|;
    color: ◊|primary-accent-color|;
    border-right: solid ◊|border-halfwidth|em;
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


