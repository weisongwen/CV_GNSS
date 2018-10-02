;; Auto-generated. Do not edit!


(when (boundp 'ivactuator::ivactuator)
  (if (not (find-package "IVACTUATOR"))
    (make-package "IVACTUATOR"))
  (shadow 'ivactuator (find-package "IVACTUATOR")))
(unless (find-package "IVACTUATOR::IVACTUATOR")
  (make-package "IVACTUATOR::IVACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude ivactuator.msg.html


(defclass ivactuator::ivactuator
  :super ros::object
  :slots (_EmBrakerStatus _EpsStatus _TorqueStatus _DecStatus _SysStatus _ucGearCtrlStatus _BrakePedalStatus _CruiseStatus _ucGearPosition _uispeed _uisteerangle _BatteryVoltage _CrossAccelerated _LengthwayAccelerated _SwingAngularVelocity ))

(defmethod ivactuator::ivactuator
  (:init
   (&key
    ((:EmBrakerStatus __EmBrakerStatus) 0)
    ((:EpsStatus __EpsStatus) 0)
    ((:TorqueStatus __TorqueStatus) 0)
    ((:DecStatus __DecStatus) 0)
    ((:SysStatus __SysStatus) 0)
    ((:ucGearCtrlStatus __ucGearCtrlStatus) 0)
    ((:BrakePedalStatus __BrakePedalStatus) 0)
    ((:CruiseStatus __CruiseStatus) 0)
    ((:ucGearPosition __ucGearPosition) 0)
    ((:uispeed __uispeed) 0)
    ((:uisteerangle __uisteerangle) 0)
    ((:BatteryVoltage __BatteryVoltage) 0)
    ((:CrossAccelerated __CrossAccelerated) 0)
    ((:LengthwayAccelerated __LengthwayAccelerated) 0)
    ((:SwingAngularVelocity __SwingAngularVelocity) 0)
    )
   (send-super :init)
   (setq _EmBrakerStatus (round __EmBrakerStatus))
   (setq _EpsStatus (round __EpsStatus))
   (setq _TorqueStatus (round __TorqueStatus))
   (setq _DecStatus (round __DecStatus))
   (setq _SysStatus (round __SysStatus))
   (setq _ucGearCtrlStatus (round __ucGearCtrlStatus))
   (setq _BrakePedalStatus (round __BrakePedalStatus))
   (setq _CruiseStatus (round __CruiseStatus))
   (setq _ucGearPosition (round __ucGearPosition))
   (setq _uispeed (round __uispeed))
   (setq _uisteerangle (round __uisteerangle))
   (setq _BatteryVoltage (round __BatteryVoltage))
   (setq _CrossAccelerated (round __CrossAccelerated))
   (setq _LengthwayAccelerated (round __LengthwayAccelerated))
   (setq _SwingAngularVelocity (round __SwingAngularVelocity))
   self)
  (:EmBrakerStatus
   (&optional __EmBrakerStatus)
   (if __EmBrakerStatus (setq _EmBrakerStatus __EmBrakerStatus)) _EmBrakerStatus)
  (:EpsStatus
   (&optional __EpsStatus)
   (if __EpsStatus (setq _EpsStatus __EpsStatus)) _EpsStatus)
  (:TorqueStatus
   (&optional __TorqueStatus)
   (if __TorqueStatus (setq _TorqueStatus __TorqueStatus)) _TorqueStatus)
  (:DecStatus
   (&optional __DecStatus)
   (if __DecStatus (setq _DecStatus __DecStatus)) _DecStatus)
  (:SysStatus
   (&optional __SysStatus)
   (if __SysStatus (setq _SysStatus __SysStatus)) _SysStatus)
  (:ucGearCtrlStatus
   (&optional __ucGearCtrlStatus)
   (if __ucGearCtrlStatus (setq _ucGearCtrlStatus __ucGearCtrlStatus)) _ucGearCtrlStatus)
  (:BrakePedalStatus
   (&optional __BrakePedalStatus)
   (if __BrakePedalStatus (setq _BrakePedalStatus __BrakePedalStatus)) _BrakePedalStatus)
  (:CruiseStatus
   (&optional __CruiseStatus)
   (if __CruiseStatus (setq _CruiseStatus __CruiseStatus)) _CruiseStatus)
  (:ucGearPosition
   (&optional __ucGearPosition)
   (if __ucGearPosition (setq _ucGearPosition __ucGearPosition)) _ucGearPosition)
  (:uispeed
   (&optional __uispeed)
   (if __uispeed (setq _uispeed __uispeed)) _uispeed)
  (:uisteerangle
   (&optional __uisteerangle)
   (if __uisteerangle (setq _uisteerangle __uisteerangle)) _uisteerangle)
  (:BatteryVoltage
   (&optional __BatteryVoltage)
   (if __BatteryVoltage (setq _BatteryVoltage __BatteryVoltage)) _BatteryVoltage)
  (:CrossAccelerated
   (&optional __CrossAccelerated)
   (if __CrossAccelerated (setq _CrossAccelerated __CrossAccelerated)) _CrossAccelerated)
  (:LengthwayAccelerated
   (&optional __LengthwayAccelerated)
   (if __LengthwayAccelerated (setq _LengthwayAccelerated __LengthwayAccelerated)) _LengthwayAccelerated)
  (:SwingAngularVelocity
   (&optional __SwingAngularVelocity)
   (if __SwingAngularVelocity (setq _SwingAngularVelocity __SwingAngularVelocity)) _SwingAngularVelocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _EmBrakerStatus
    1
    ;; uint8 _EpsStatus
    1
    ;; uint8 _TorqueStatus
    1
    ;; uint8 _DecStatus
    1
    ;; uint8 _SysStatus
    1
    ;; uint8 _ucGearCtrlStatus
    1
    ;; uint8 _BrakePedalStatus
    1
    ;; uint8 _CruiseStatus
    1
    ;; uint8 _ucGearPosition
    1
    ;; int16 _uispeed
    2
    ;; int16 _uisteerangle
    2
    ;; int16 _BatteryVoltage
    2
    ;; int16 _CrossAccelerated
    2
    ;; int16 _LengthwayAccelerated
    2
    ;; int16 _SwingAngularVelocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _EmBrakerStatus
       (write-byte _EmBrakerStatus s)
     ;; uint8 _EpsStatus
       (write-byte _EpsStatus s)
     ;; uint8 _TorqueStatus
       (write-byte _TorqueStatus s)
     ;; uint8 _DecStatus
       (write-byte _DecStatus s)
     ;; uint8 _SysStatus
       (write-byte _SysStatus s)
     ;; uint8 _ucGearCtrlStatus
       (write-byte _ucGearCtrlStatus s)
     ;; uint8 _BrakePedalStatus
       (write-byte _BrakePedalStatus s)
     ;; uint8 _CruiseStatus
       (write-byte _CruiseStatus s)
     ;; uint8 _ucGearPosition
       (write-byte _ucGearPosition s)
     ;; int16 _uispeed
       (write-word _uispeed s)
     ;; int16 _uisteerangle
       (write-word _uisteerangle s)
     ;; int16 _BatteryVoltage
       (write-word _BatteryVoltage s)
     ;; int16 _CrossAccelerated
       (write-word _CrossAccelerated s)
     ;; int16 _LengthwayAccelerated
       (write-word _LengthwayAccelerated s)
     ;; int16 _SwingAngularVelocity
       (write-word _SwingAngularVelocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _EmBrakerStatus
     (setq _EmBrakerStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EpsStatus
     (setq _EpsStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TorqueStatus
     (setq _TorqueStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _DecStatus
     (setq _DecStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SysStatus
     (setq _SysStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ucGearCtrlStatus
     (setq _ucGearCtrlStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _BrakePedalStatus
     (setq _BrakePedalStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _CruiseStatus
     (setq _CruiseStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ucGearPosition
     (setq _ucGearPosition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _uispeed
     (setq _uispeed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _uisteerangle
     (setq _uisteerangle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _BatteryVoltage
     (setq _BatteryVoltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _CrossAccelerated
     (setq _CrossAccelerated (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _LengthwayAccelerated
     (setq _LengthwayAccelerated (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _SwingAngularVelocity
     (setq _SwingAngularVelocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ivactuator::ivactuator :md5sum-) "526428371bea2f291a9985ee99cde163")
(setf (get ivactuator::ivactuator :datatype-) "ivactuator/ivactuator")
(setf (get ivactuator::ivactuator :definition-)
      "uint8 EmBrakerStatus
uint8 EpsStatus
uint8 TorqueStatus
uint8 DecStatus   
uint8 SysStatus
uint8 ucGearCtrlStatus  
uint8 BrakePedalStatus
uint8 CruiseStatus
uint8 ucGearPosition
int16 uispeed
int16 uisteerangle
int16 BatteryVoltage
int16 CrossAccelerated
int16 LengthwayAccelerated
int16 SwingAngularVelocity



")



(provide :ivactuator/ivactuator "526428371bea2f291a9985ee99cde163")


