;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname EuclideanAlgorithm) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Extended Euclidean Algorithm ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(check-expect 8 (gcd 1928 91824))
(check-expect 8 (gcd 91824 1928))
(check-expect 1 (gcd 8 7))

;; calculates gcd(a, b)
;; errors on input of 0
(define (my-gcd a b) ;; gcd :: Integer Integer -> Integer
  (local ((define q (floor (/ a b)))
          (define r (- (a (* b q)))))
    (cond ((or (= a 0) (= b 0)) (error "inputs must be nonzero"))
          ((= r 1) 1)
          ((= r 0) q)
          (else (gcd (* b q) r)))))

;; A <X, Y> [Pair X Y] is a (make-pair x y), where x is of type X and y is of type Y
(define-struct pair (x y))

;; calculates the bezout coefficients of gcd(a, b)
;; finds (x, y) s.t. ax + by = gcd(a,b)
(define (bezout-coefficients a b) ;; bezout-coefficients :: Integer Integer -> [Pair Integer Integer]
  (b
  
  