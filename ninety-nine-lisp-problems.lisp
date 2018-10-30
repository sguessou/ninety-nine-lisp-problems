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
(defun my-but-last (my-list)
   (let ((len (list-length my-list)))
     (if (> len 2)
         (list (nth (- len 2) my-list) (nth (- len 1) my-list))
         my-list)))

;; Alternative solution
(defun get-penultimate (my-list)
  (let ((reversed (reverse my-list)))
    (cond 
      ((null reversed) nil)
      ((<= (length reversed) 2) my-list)
      (t (list (second reversed) (first reversed))))))

;;;; P03
;;; Find the K'th element of a list
;; My solution
(defun element-at (my-list num)
  (if (<= num 0)
      nil
      (nth (1- num) my-list)))

;; Alternative solution
(defun element-at-2 (my-list num)
  (cond 
    ((= num 0) nil) 
    ((= num 1) (first my-list))  
    (t (element-at-2 (rest my-list) (1- num)))))

;;;; P04
;;; Find the number of elements of a list 
;; My solution
(defun list-len (my-list)
  (list-length my-list))
;; Alternative solution 
(defun list-len-2 (my-list)
  (if (null my-list)
      0
      (1+ (list-len-2 (rest my-list)))))

;;;; P05
;;; Reverse a list
;; My solution
(defun reverse-list (my-list)
  (reverse my-list))

;;;; P06 
;;; Find out wheter a list is a palindrome
(defun palindrome (my-list)
  (if (null my-list)
      nil
      (equal my-list (reverse my-list))))
