(define (over-or-under num1 num2) (cond((> num1 num2) 1) ((< num1 num2) -1) (else 0)))

(define (make-adder num) (lambda (x) (+ x num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) (define (helper x n) (if (> n 0) (helper (f x) (- n 1)) x)) (define (repeated-f x) (helper x n)) repeated-f)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (cond ((= b 0) a)
                        ((= a 0) b)
                        ((= (modulo (max a b) (min a b)) 0) (min a b)) 
                        (else (gcd (min a b) (modulo (max a b) (min a b))))
                        ))
