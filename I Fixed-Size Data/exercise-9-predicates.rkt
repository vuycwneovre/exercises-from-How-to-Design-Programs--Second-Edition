;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-9-predicates) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define in ...)
(require 2htdp/image)

(cond
  [(string? in) (string-length in)]
  [(image? in) (* (image-width in) (image-height in))]
  [(number? in) (if(<= in 0) 0 (- in 1))]
  [(boolean? in) (if #true 10 20)])
