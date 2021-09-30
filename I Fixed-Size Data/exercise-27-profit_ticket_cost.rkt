;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-27-profit_ticket_cost) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define average-attendance 120)
(define standard-price-ticket 5.0)
(define minimum-change-people 15)
(define rate-of-change 0.1)
(define fixed-cost 180)
(define variable-cost 0.04)


(define (attendees ticket-price)
  (- average-attendance (* (- ticket-price  standard-price-ticket) (/ minimum-change-people rate-of-change))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* variable-cost (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))