;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |exercise-30-price_sensitivity_of_attendance(constants)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define average-attendance 120)
(define standard-price-ticket 5.0)
(define minimum-change-people 15)
(define rate-of-change 0.1)
(define variable-cost 1.50)
; (/ minimum-change-people rate-of-change)

(define price-sensitivity-of-attendance (/ minimum-change-people rate-of-change))



;first method
(define (attendees ticket-price)
  (- average-attendance (* (- ticket-price  standard-price-ticket) price-sensitivity-of-attendance)))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (* variable-cost (attendees ticket-price)))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
