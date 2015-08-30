(Denford Gerber to NC Wizard 
(---------------------------
(Filename: PCBExample-Edge_Cuts.gbr
(Date: 29/08/2015
(Time: 14:47:18
(Board Side: Component Side
(Track Cutting Depth: 0.000mm
(Track Cutting Tool: T1 Diameter: 1.500mm
[TOOLDEF T0101 D1.5000
(Drilling Depth: 2.000mm
(---------------------------
G21
[BILLET X16.160 Y24.030 Z1.600
G90
G91 G28 X0 Y0 Z0
M05
G90 M6 T1
M03 S23000
G0X0Y0Z8.000
G1Z8.000F600.000
G0Z8.000

(1st pass
G0X13.500Y20.320
G1Z0.000
X13.500Y20.320
X13.500Y0.000
X13.477Y-0.191
X13.408Y-0.372
X13.299Y-0.530
X13.154Y-0.658
X12.984Y-0.748
X12.796Y-0.794
X12.604Y-0.794
X0.096Y-0.794
X-0.096Y-0.794
X-0.284Y-0.748
X-0.454Y-0.658
X-0.599Y-0.530
X-0.708Y-0.372
X-0.777Y-0.191
X-0.800Y0.000
X-0.800Y20.320
X-0.777Y20.511
X-0.708Y20.692
X-0.599Y20.850
X-0.454Y20.978
X-0.284Y21.068
X-0.096Y21.114
X0.096Y21.114
X12.604Y21.114
X12.796Y21.114
X12.984Y21.068
X13.154Y20.978
X13.299Y20.850
X13.408Y20.692
X13.477Y20.511
X13.500Y20.320
G1Z8.000

(2nd pass
G0X13.500Y20.320
G1Z-0.600
X13.500Y20.320
X13.500Y0.000
X13.477Y-0.191
X13.408Y-0.372
X13.299Y-0.530
X13.154Y-0.658
X12.984Y-0.748
X12.796Y-0.794
X12.604Y-0.794
X0.096Y-0.794
X-0.096Y-0.794
X-0.284Y-0.748
X-0.454Y-0.658
X-0.599Y-0.530
X-0.708Y-0.372
X-0.777Y-0.191
X-0.800Y0.000
X-0.800Y20.320
X-0.777Y20.511
X-0.708Y20.692
X-0.599Y20.850
X-0.454Y20.978
X-0.284Y21.068
X-0.096Y21.114
X0.096Y21.114
X12.604Y21.114
X12.796Y21.114
X12.984Y21.068
X13.154Y20.978
X13.299Y20.850
X13.408Y20.692
X13.477Y20.511
X13.500Y20.320
G1Z8.000

(3rd pass
G0X13.500Y20.320
G1Z-1.200
X13.500Y20.320
X13.500Y0.000
X13.477Y-0.191
X13.408Y-0.372
X13.299Y-0.530
X13.154Y-0.658
X12.984Y-0.748
X12.796Y-0.794
X12.604Y-0.794
X0.096Y-0.794
X-0.096Y-0.794
X-0.284Y-0.748
X-0.454Y-0.658
X-0.599Y-0.530
X-0.708Y-0.372
X-0.777Y-0.191
X-0.800Y0.000
X-0.800Y20.320
X-0.777Y20.511
X-0.708Y20.692
X-0.599Y20.850
X-0.454Y20.978
X-0.284Y21.068
X-0.096Y21.114
X0.096Y21.114
X12.604Y21.114
X12.796Y21.114
X12.984Y21.068
X13.154Y20.978
X13.299Y20.850
X13.408Y20.692
X13.477Y20.511
X13.500Y20.320
G1Z8.000

(4th pass
G0X13.500Y20.320
G1Z-1.900
X13.500Y20.320
X13.500Y0.000
X13.477Y-0.191
X13.408Y-0.372
X13.299Y-0.530
X13.154Y-0.658
X12.984Y-0.748
X12.796Y-0.794
X12.604Y-0.794
X0.096Y-0.794
X-0.096Y-0.794
X-0.284Y-0.748
X-0.454Y-0.658
X-0.599Y-0.530
X-0.708Y-0.372
X-0.777Y-0.191
X-0.800Y0.000
X-0.800Y20.320
X-0.777Y20.511
X-0.708Y20.692
X-0.599Y20.850
X-0.454Y20.978
X-0.284Y21.068
X-0.096Y21.114
X0.096Y21.114
X12.604Y21.114
X12.796Y21.114
X12.984Y21.068
X13.154Y20.978
X13.299Y20.850
X13.408Y20.692
X13.477Y20.511
X13.500Y20.320
G1Z8.000

M03 S23000
G91 G28 X0 Y0 Z0
M30
