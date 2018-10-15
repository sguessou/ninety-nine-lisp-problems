;;;; Ninety Nine Lisp Problems

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
