;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-37-string_rest) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; Takes a string, and gives you
; the same string extracting the first letter

; string -> string

; given: "helloworld", expect: "elloworld"
; given: "987", expect: "87"

(define str "helloworld")

(define (string-rest str)
  (substring str 1 (string-length str)))
