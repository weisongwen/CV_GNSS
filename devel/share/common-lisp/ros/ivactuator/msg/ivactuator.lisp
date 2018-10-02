; Auto-generated. Do not edit!


(cl:in-package ivactuator-msg)


;//! \htmlinclude ivactuator.msg.html

(cl:defclass <ivactuator> (roslisp-msg-protocol:ros-message)
  ((EmBrakerStatus
    :reader EmBrakerStatus
    :initarg :EmBrakerStatus
    :type cl:fixnum
    :initform 0)
   (EpsStatus
    :reader EpsStatus
    :initarg :EpsStatus
    :type cl:fixnum
    :initform 0)
   (TorqueStatus
    :reader TorqueStatus
    :initarg :TorqueStatus
    :type cl:fixnum
    :initform 0)
   (DecStatus
    :reader DecStatus
    :initarg :DecStatus
    :type cl:fixnum
    :initform 0)
   (SysStatus
    :reader SysStatus
    :initarg :SysStatus
    :type cl:fixnum
    :initform 0)
   (ucGearCtrlStatus
    :reader ucGearCtrlStatus
    :initarg :ucGearCtrlStatus
    :type cl:fixnum
    :initform 0)
   (BrakePedalStatus
    :reader BrakePedalStatus
    :initarg :BrakePedalStatus
    :type cl:fixnum
    :initform 0)
   (CruiseStatus
    :reader CruiseStatus
    :initarg :CruiseStatus
    :type cl:fixnum
    :initform 0)
   (ucGearPosition
    :reader ucGearPosition
    :initarg :ucGearPosition
    :type cl:fixnum
    :initform 0)
   (uispeed
    :reader uispeed
    :initarg :uispeed
    :type cl:fixnum
    :initform 0)
   (uisteerangle
    :reader uisteerangle
    :initarg :uisteerangle
    :type cl:fixnum
    :initform 0)
   (BatteryVoltage
    :reader BatteryVoltage
    :initarg :BatteryVoltage
    :type cl:fixnum
    :initform 0)
   (CrossAccelerated
    :reader CrossAccelerated
    :initarg :CrossAccelerated
    :type cl:fixnum
    :initform 0)
   (LengthwayAccelerated
    :reader LengthwayAccelerated
    :initarg :LengthwayAccelerated
    :type cl:fixnum
    :initform 0)
   (SwingAngularVelocity
    :reader SwingAngularVelocity
    :initarg :SwingAngularVelocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ivactuator (<ivactuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ivactuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ivactuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ivactuator-msg:<ivactuator> is deprecated: use ivactuator-msg:ivactuator instead.")))

(cl:ensure-generic-function 'EmBrakerStatus-val :lambda-list '(m))
(cl:defmethod EmBrakerStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:EmBrakerStatus-val is deprecated.  Use ivactuator-msg:EmBrakerStatus instead.")
  (EmBrakerStatus m))

(cl:ensure-generic-function 'EpsStatus-val :lambda-list '(m))
(cl:defmethod EpsStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:EpsStatus-val is deprecated.  Use ivactuator-msg:EpsStatus instead.")
  (EpsStatus m))

(cl:ensure-generic-function 'TorqueStatus-val :lambda-list '(m))
(cl:defmethod TorqueStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:TorqueStatus-val is deprecated.  Use ivactuator-msg:TorqueStatus instead.")
  (TorqueStatus m))

(cl:ensure-generic-function 'DecStatus-val :lambda-list '(m))
(cl:defmethod DecStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:DecStatus-val is deprecated.  Use ivactuator-msg:DecStatus instead.")
  (DecStatus m))

(cl:ensure-generic-function 'SysStatus-val :lambda-list '(m))
(cl:defmethod SysStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:SysStatus-val is deprecated.  Use ivactuator-msg:SysStatus instead.")
  (SysStatus m))

(cl:ensure-generic-function 'ucGearCtrlStatus-val :lambda-list '(m))
(cl:defmethod ucGearCtrlStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:ucGearCtrlStatus-val is deprecated.  Use ivactuator-msg:ucGearCtrlStatus instead.")
  (ucGearCtrlStatus m))

(cl:ensure-generic-function 'BrakePedalStatus-val :lambda-list '(m))
(cl:defmethod BrakePedalStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:BrakePedalStatus-val is deprecated.  Use ivactuator-msg:BrakePedalStatus instead.")
  (BrakePedalStatus m))

(cl:ensure-generic-function 'CruiseStatus-val :lambda-list '(m))
(cl:defmethod CruiseStatus-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:CruiseStatus-val is deprecated.  Use ivactuator-msg:CruiseStatus instead.")
  (CruiseStatus m))

(cl:ensure-generic-function 'ucGearPosition-val :lambda-list '(m))
(cl:defmethod ucGearPosition-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:ucGearPosition-val is deprecated.  Use ivactuator-msg:ucGearPosition instead.")
  (ucGearPosition m))

(cl:ensure-generic-function 'uispeed-val :lambda-list '(m))
(cl:defmethod uispeed-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:uispeed-val is deprecated.  Use ivactuator-msg:uispeed instead.")
  (uispeed m))

(cl:ensure-generic-function 'uisteerangle-val :lambda-list '(m))
(cl:defmethod uisteerangle-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:uisteerangle-val is deprecated.  Use ivactuator-msg:uisteerangle instead.")
  (uisteerangle m))

(cl:ensure-generic-function 'BatteryVoltage-val :lambda-list '(m))
(cl:defmethod BatteryVoltage-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:BatteryVoltage-val is deprecated.  Use ivactuator-msg:BatteryVoltage instead.")
  (BatteryVoltage m))

(cl:ensure-generic-function 'CrossAccelerated-val :lambda-list '(m))
(cl:defmethod CrossAccelerated-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:CrossAccelerated-val is deprecated.  Use ivactuator-msg:CrossAccelerated instead.")
  (CrossAccelerated m))

(cl:ensure-generic-function 'LengthwayAccelerated-val :lambda-list '(m))
(cl:defmethod LengthwayAccelerated-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:LengthwayAccelerated-val is deprecated.  Use ivactuator-msg:LengthwayAccelerated instead.")
  (LengthwayAccelerated m))

(cl:ensure-generic-function 'SwingAngularVelocity-val :lambda-list '(m))
(cl:defmethod SwingAngularVelocity-val ((m <ivactuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ivactuator-msg:SwingAngularVelocity-val is deprecated.  Use ivactuator-msg:SwingAngularVelocity instead.")
  (SwingAngularVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ivactuator>) ostream)
  "Serializes a message object of type '<ivactuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmBrakerStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EpsStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TorqueStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DecStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SysStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ucGearCtrlStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakePedalStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CruiseStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ucGearPosition)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'uispeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'uisteerangle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BatteryVoltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CrossAccelerated)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LengthwayAccelerated)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SwingAngularVelocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ivactuator>) istream)
  "Deserializes a message object of type '<ivactuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmBrakerStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EpsStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TorqueStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DecStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SysStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ucGearCtrlStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BrakePedalStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CruiseStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ucGearPosition)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uispeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uisteerangle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BatteryVoltage) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CrossAccelerated) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LengthwayAccelerated) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SwingAngularVelocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ivactuator>)))
  "Returns string type for a message object of type '<ivactuator>"
  "ivactuator/ivactuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ivactuator)))
  "Returns string type for a message object of type 'ivactuator"
  "ivactuator/ivactuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ivactuator>)))
  "Returns md5sum for a message object of type '<ivactuator>"
  "526428371bea2f291a9985ee99cde163")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ivactuator)))
  "Returns md5sum for a message object of type 'ivactuator"
  "526428371bea2f291a9985ee99cde163")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ivactuator>)))
  "Returns full string definition for message of type '<ivactuator>"
  (cl:format cl:nil "uint8 EmBrakerStatus~%uint8 EpsStatus~%uint8 TorqueStatus~%uint8 DecStatus   ~%uint8 SysStatus~%uint8 ucGearCtrlStatus  ~%uint8 BrakePedalStatus~%uint8 CruiseStatus~%uint8 ucGearPosition~%int16 uispeed~%int16 uisteerangle~%int16 BatteryVoltage~%int16 CrossAccelerated~%int16 LengthwayAccelerated~%int16 SwingAngularVelocity~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ivactuator)))
  "Returns full string definition for message of type 'ivactuator"
  (cl:format cl:nil "uint8 EmBrakerStatus~%uint8 EpsStatus~%uint8 TorqueStatus~%uint8 DecStatus   ~%uint8 SysStatus~%uint8 ucGearCtrlStatus  ~%uint8 BrakePedalStatus~%uint8 CruiseStatus~%uint8 ucGearPosition~%int16 uispeed~%int16 uisteerangle~%int16 BatteryVoltage~%int16 CrossAccelerated~%int16 LengthwayAccelerated~%int16 SwingAngularVelocity~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ivactuator>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ivactuator>))
  "Converts a ROS message object to a list"
  (cl:list 'ivactuator
    (cl:cons ':EmBrakerStatus (EmBrakerStatus msg))
    (cl:cons ':EpsStatus (EpsStatus msg))
    (cl:cons ':TorqueStatus (TorqueStatus msg))
    (cl:cons ':DecStatus (DecStatus msg))
    (cl:cons ':SysStatus (SysStatus msg))
    (cl:cons ':ucGearCtrlStatus (ucGearCtrlStatus msg))
    (cl:cons ':BrakePedalStatus (BrakePedalStatus msg))
    (cl:cons ':CruiseStatus (CruiseStatus msg))
    (cl:cons ':ucGearPosition (ucGearPosition msg))
    (cl:cons ':uispeed (uispeed msg))
    (cl:cons ':uisteerangle (uisteerangle msg))
    (cl:cons ':BatteryVoltage (BatteryVoltage msg))
    (cl:cons ':CrossAccelerated (CrossAccelerated msg))
    (cl:cons ':LengthwayAccelerated (LengthwayAccelerated msg))
    (cl:cons ':SwingAngularVelocity (SwingAngularVelocity msg))
))
