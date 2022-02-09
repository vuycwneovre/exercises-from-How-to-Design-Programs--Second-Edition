;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-38-string_remove_last) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; Takes a string, and gives you
; the same string extracting the LAST letter

; string -> string

; given: "helloworld", expect: "helloworl"
; given: "987", expect: "98"

(define str "helloworld")

(define (string-remove-last str)
  (substring str 0 ( - (string-length str) 1)))