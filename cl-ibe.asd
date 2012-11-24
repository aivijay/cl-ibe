;;;; cl-ibe.asd

(asdf:defsystem #:cl-ibe
  :serial t
  :depends-on (#:ironclad)
  :components ((:file "package")
               (:file "cl-ibe")))

