(define (square n) (* n n))

(define (pow base exp) (cond ((zero? exp) 1)
                            ((even? exp) (square (pow base (/ exp 2))))
                            (else (* base (pow base (- exp 1))))))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y x) (n (- n 1)))
        (repeatedly-cube n (* y y y)))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))
