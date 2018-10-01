
(cl:in-package :asdf)

(defsystem "ivactuator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ivactuator" :depends-on ("_package_ivactuator"))
    (:file "_package_ivactuator" :depends-on ("_package"))
  ))