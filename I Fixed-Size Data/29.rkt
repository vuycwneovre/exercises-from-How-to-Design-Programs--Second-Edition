;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise-29-profit_ticket_cost.v3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;no fixed cost, new variable cost
(define average-attendance 120)
(define standard-price-ticket 5.0)
(define minimum-change-people 15)
(define rate-of-change 0.1)
;(define fixed-cost 180)
;(define variable-cost 0.04)
(define variable-cost 1.50)

;first method
(define (attendees ticket-price)
  (- average-attendance (* (- ticket-price  standard-price-ticket) (/ minimum-change-people rate-of-change))))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (* variable-cost (attendees ticket-price)))
(define (profit1 ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;second method
(define (profit2 price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
        (* 1.50
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price))))))

;to check if both profits match
(define value 5)
(if (= (profit1 value) (profit2 value)) "correct" "incorrect")