;;;; Ninety Nine Lisp Problems
;;;; Working with lists

;;; P01
;;; Find the last box of a list
;;; Example: *(my-last '(a b c d)) --> (D)

;; My solution
(defun my-last (my-list)
  (let ((len (list-length my-list)))
    (if (> len 0)
        (list (nth (- len 1) my-list)) 
        (format t "~%Empty string."))))

;; Recursive solution
(defun my-last-rec (my-list)
  (if (null my-list)
      nil
      (if (null (rest my-list))
          my-list
          (my-last-rec (rest my-list)))))


;;; P02
;;; Find the last but one box of a list
;; My solution
((defun my-but-last (my-list)
   (let ((len (list-length my-list)))
     (if (> len 2)
         (list (nth (- len 2) my-list) (nth (- len 1) my-list))
         my-list))))
