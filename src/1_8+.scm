;;; 8-cube-root.scm
(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)            ; �� sqrt-iter ��һ����
    (if (good-enough? guess x)              ; �ĸ����֣���������
        guess
        (cube-root-iter (improve guess x)
                        x)))

(define (good-enough? guess x)              ; Ҫ�� cube ������Ƿ��㹻��
    (< (abs (- (cube guess) x))
       0.001))

(define (improve guess x)                   ; ��Ŀ�����Ĺ�ʽ
    (/ (+ (/ x (square guess)) (* 2 guess))
       3))

