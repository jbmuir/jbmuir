#lang racket/base

(require
  (for-syntax racket/base racket/syntax)
  racket/list
  racket/format
  racket/string
  racket/function
  racket/contract
  racket/match
  racket/system)

(require
  pollen/core
  pollen/decode
  pollen/file
  pollen/tag
  pollen/pagetree
  txexpr)


(provide (all-defined-out))

(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc (compose1 smart-quotes smart-dashes)
     #:exclude-tags '(style script))))

;Generate list of links from pagetree
(define (->linklist p pagetree-source)
  ;(map addli
     (map linkify 
      (siblings p 
       (get-pagetree pagetree-source))))

(define (addli . elements)
  (txexpr 'li empty elements))

(define (linkify pagenode)
    (txexpr 'a 
            `((href ,(symbol->string pagenode))) 
            `(,(select 'h1 pagenode))))


; Tag function behaviours, several of these are taken from Matthew Buttericks Typography for lawyers source files

(define (title . elements)
  (txexpr 'h1 empty elements))

(define sectionbreak 
  '(hr))

(define (section title . elements)
    (txexpr 'div '((class "section")) `((h4 ,title) ,@elements)))

(define (emph . elements)
  (txexpr 'i empty elements))

(define (bold . elements)
  (txexpr 'b empty elements))

(define (list . elements)
  (txexpr 'ul empty elements))

(define (publist . elements)
  (txexpr 'div '((class "publication-list")) `((ul ,@elements))))

(define (item . elements)
  (txexpr 'li empty elements))

(define (margin-note . elements)
  (txexpr 'div '((class "margin-note")) elements))

(define (image src #:width [width "100%"] #:border [border? #t])
  (define img-tag (attr-set* '(img) 'style (format "width: ~a" width)
                             'src (build-path "images" src)))
  (if border?
      (attr-set img-tag 'class "bordered")
      img-tag))

(define (link url #:class [class-name #f] . tx-elements)
  (let* ([tx-elements (if (empty? tx-elements)
                          (list url)
                          tx-elements)]
         [link-tx (txexpr 'a empty tx-elements)]
         [link-tx (attr-set link-tx 'href url)])
    (if class-name
        (attr-set link-tx 'class class-name)
        link-tx)))

(define orcid
  '(div 
    ((itemtype "https://schema.org/Person"))
    (a 
      ((itemprop "sameAs") 
       (content "https://orcid.org/0000-0003-2617-3420")
       (href "https://orcid.org/0000-0003-2617-3420")
       (target "orcid.widget")
       (rel "noopener noreferrer")
       (style "vertical-align:top;"))
       (img 
        ((src "https://orcid.org/sites/default/files/images/orcid_16x16.png")
         (style "width:1em;margin-right:.5em;")
         (alt "ORCID iD icon")))
     "https://orcid.org/0000-0003-2617-3420")))

