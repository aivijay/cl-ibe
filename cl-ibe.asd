;;;; cl-ibe.asd

(defclass cl-ibe-source-file (cl-source-file) ())
(defclass txt-file (doc-file) ())
(defclass css-file (doc-file) ())

(defmethod source-file-type ((c txt-file) (s module)) "txt")
(defmethod source-file-type ((c css-file) (s module)) "css")

(asdf:defsystem #:cl-ibe
  :version "0.01"
  :author "Vijay <aivijay@gmail.com>"
  :maintainer "Vijay <aivijay@gmail.com>"
  :description "Identity Based Encryption implementation in pure Common Lisp"
  :serial t
  :depends-on (#:ironclad)
  :components ((:file "package")
               (:file "cl-ibe")))

