#lang racket/base
(require pollen/core pollen/decode pollen/pagetree txexpr)

(provide (all-defined-out))

(define (root . elements)
   (txexpr 'root empty (decode-elements elements
     #:txexpr-elements-proc decode-paragraphs
     #:string-proc (compose1 smart-quotes smart-dashes))))

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


; Tag function behaviours

(define (title . elements)
  (txexpr 'h1 empty elements))




