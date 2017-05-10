#!/home/cimo/Programs/anaconda3/bin/python

import sys,os
from PyQt5 import QtGui, QtCore, QtWidgets
import MakeKeyClass

class EmittingStream(QtCore.QObject):

    textWritten = QtCore.pyqtSignal(str)

    def write(self, text):
        self.textWritten.emit(str(text))


class Window(QtWidgets.QWidget):
    
    def __init__(self):
        super(Window, self).__init__()
        sys.stdout = EmittingStream(textWritten=self.normalOutputWritten)
        
        self.initUI()

    def __del__(self):
        # Restore sys.stdout
        sys.stdout = sys.__stdout__
        

    # Class method to initialize the GUI
    def initUI(self):
        
        # Parser variable initialization
        self.PI = ''
        self.scantime = '20m'
        self.donwload_kernels = 'N'
        self.mid_scan = 'Y'
        self.start_date = ''
        self.end_date = ''
        self.initial_gap = 'N'
        self.gap_start = '5m'
        self.pwd = os.getcwd()
        self.date1 = self.pwd[-4:]
        self.year= self.pwd[-10:-6]
        if self.pwd[-5:-4] == 'M':
            self.spacecraft = 'MEX'
            self.keyname = 'mex'+self.date1+'.key'
        elif self.pwd[-5:-4] == 'V':
            self.spacecraft = 'VEX'
            self.keyname = 'vex'+self.date1+'.key'
        else:
            self.spacecraft = 'MEX'
            self.keyname = 'output.key'
        self.date1 = self.pwd[-4:]
        self.year= self.pwd[-10:-6]
        self.out_file = self.keyname

        # Setting the window
        self.setWindowTitle('Make KEY file')
        self.setGeometry(800,800,800,800)
        self.move(500,10)
        
        # Two final buttons
        self.okButton = QtWidgets.QPushButton("OK")
        self.okButton.clicked.connect(self.returns)
        cancelButton = QtWidgets.QPushButton("Exit")
        cancelButton.pressed.connect(self.buttonClicked)

        # Creating buttons, fields and drop-down menus
        #
        self.comboSC = QtWidgets.QComboBox(self)
        self.comboSC.addItem(self.spacecraft)
        self.comboSC.insertSeparator(1)
        self.comboSC.addItem("VEX")
        self.comboSC.addItem("MEX")
        self.comboSC.activated[str].connect(self.onActivated) 
        
        self.label1 =  QtWidgets.QLabel('Choose spacecraft',self)

        self.comboPI = QtWidgets.QComboBox(self)
        self.comboPI.addItem("PI1")
        self.comboPI.addItem("PI2")
        #self.comboPI.addItem("")
        #self.comboPI.addItem("")
        self.comboPI.activated[str].connect(self.onActivated)

        self.output= QtWidgets.QLineEdit(self.keyname,self)
        self.output.textChanged.connect(self.onActivated)

        self.time = QtWidgets.QLineEdit('20m',self)
        self.time.textChanged.connect(self.onActivated)
        self.kernels = QtWidgets.QCheckBox('Update kernels', self)
        self.kernels.stateChanged.connect(self.onActivated)
        self.mid = QtWidgets.QCheckBox('Mid-scan coordinates', self)
        self.mid.toggle()
        self.mid.stateChanged.connect(self.onActivated)

        self.date = QtWidgets.QDateTimeEdit(self)
        self.date.setCalendarPopup(True)
        self.date0 = QtCore.QDateTime.fromString(self.date1+self.year,'MMddyyyy')
        self.date.setDateTime(QtCore.QDateTime(self.date0))
        self.date.setDisplayFormat("dd/MM/yyyy hh:mm:ss")
        self.start_date = self.date.textFromDateTime(QtCore.QDateTime(self.date0))
        self.date.dateTimeChanged.connect(self.setdate)

        self.date2 = QtWidgets.QDateTimeEdit(self)
        self.date2.setCalendarPopup(True)
        self.date2.setDateTime(QtCore.QDateTime(self.date0))
        self.date2.setDisplayFormat("dd/MM/yyyy hh:mm:ss")
        self.end_date = self.date2.textFromDateTime(QtCore.QDateTime(self.date0))
        self.date2.dateTimeChanged.connect(self.setdate2)

        self.make_vex = QtWidgets.QCheckBox('Create vex file', self)
        self.do_vex = 'N'
        self.make_vex.toggled.connect(self.onToggle)
        self.early_start = QtWidgets.QCheckBox('Start with gap for calibration', self)
        self.early_start.toggled.connect(self.onToggle)
        self.early_start_gap = QtWidgets.QLineEdit('5m',self)
        self.early_start_gap.textChanged.connect(self.onActivated)
        self.early_start_gap.setReadOnly(True)
        
        self.station=[]
        self.stations=[]
        self.stations_codes=['Mh','Wz','ONSALA60','ONSALA85','Mc','Ys',
                        'Ma', 'Nt','Sh','Ur','KUNMING','Ww','Bd',
                        'Ks','Ym', 'Hb','YEVPATORIA', 'Us', 'Pu',
                        'Zc','Sv','Hh','Ht','Tm']
        #self.stations_codes=['METSAHOV','WETTZELL','ONSALA60','ONSALA85','MEDICINA','YEBES40M',
        #               'MATERA', 'NOTO','SHANGHAI','URUMUQI','KUNMING','WARKWORTH','BADARY',
        #               'KASHIMA','YAMAGUCHI', 'HOBART12','YEVPATORIA', 'USSURIYSK', 'PUSHCHINO',
        #               'ZELENCHK','SVETLOE','HARTRAO','HART15M','TIANMA65']
        pos = [(0, 0), (0, 1), (0, 2), (0, 3),(0, 4), (0, 5), (0, 6), (0, 7),
               (1, 0), (1, 1), (1, 2), (1, 3),(1, 4), (1, 5), (1, 6), (1, 7),
               (2, 0), (2, 1), (2, 2), (2, 3),(2, 4), (2, 5), (2, 6), (2, 7)]
        j = 0
        self.grid_stations = QtWidgets.QGridLayout()
        for i in range(len(self.stations_codes)):
            self.station.append(QtWidgets.QCheckBox(self.stations_codes[i], self))
            self.grid_stations.addWidget(self.station[i], pos[j][0], pos[j][1])
            j = j + 1
        [self.station[k].stateChanged.connect(self.clickStation) for k in range(len(self.stations_codes))]

        # Arranging my buttons and fields into a grid
        #
        self.grid = QtWidgets.QGridLayout()
        self.grid.setSpacing(10)

        self.grid.addWidget(self.comboSC,1,0)
        self.grid.addWidget(self.label1,1,1)
        self.grid.addWidget(self.output,1,2)
        self.grid.addWidget(self.comboPI,1,3)

        self.grid.addWidget(self.time,2,0)
        self.grid.addWidget(self.kernels,2,1) 
        self.grid.addWidget(self.mid,2,2) 
        self.grid.addWidget(QtWidgets.QLabel(''),2,3)
        
        self.grid.addWidget(QtWidgets.QLabel('From:'),4,0)
        self.grid.addWidget(self.date,4,1)
        self.grid.addWidget(QtWidgets.QLabel('To'),4,2)
        self.grid.addWidget(self.date2,4,3)
        
#
        self.grid.addWidget(self.make_vex,3,1)
#
        self.grid.addWidget(self.early_start,3,2)
        self.grid.addWidget(self.early_start_gap,3,3)
        self.grid.addLayout(self.grid_stations,5,0,1,4)
        self.box=QtWidgets.QTextEdit(self)
        self.box.setReadOnly(True)
        self.grid.addWidget(self.box,6,0,6,4)
        
        # Creating 3 boxes where to put my grid and ok/cancel buttons
        #
        hbox = QtWidgets.QHBoxLayout()
        hbox.addStretch(1)
        hbox.addWidget(self.okButton)
        hbox.addWidget(cancelButton)

        vbox = QtWidgets.QVBoxLayout()
        vbox.addLayout(self.grid)
#        vbox.addLayout(self.grid_stations)
        vbox.addLayout(hbox)
        
        self.setLayout(vbox)

    def buttonClicked(self):
      
        sys.exit()

    def onToggle(self):
        
        if self.make_vex.checkState() == 2:
            self.do_vex = 'Y'
        else:
            self.do_vex = 'N'
        
        if self.early_start.checkState() == 2:
            self.early_start_gap.setReadOnly(False)
            self.initial_gap = 'Y'
        else:
            self.early_start_gap.setReadOnly(True)
            self.initial_gap = 'N'

    def setdate(self):
        
        self.date2.setDate(self.date.date())
        self.start_date = self.date.dateTime().toString("dd/MM/yyyy hh:mm:ss")
        self.end_date = self.date2.dateTime().toString("dd/MM/yyyy hh:mm:ss")
        
    def setdate2(self):
      
        self.date2.setDate(self.date2.date())
        self.end_date = self.date2.dateTime().toString("dd/MM/yyyy hh:mm:ss")

    def onActivated(self):

        if self.comboSC.currentText() == 'Spacecraft':
            self.label1.setText('Choose spacecraft')
        else:
            self.label1.setText(self.comboSC.currentText())
            self.spacecraft = self.comboSC.currentText()

        self.keyname = self.output.displayText()

        self.out_file = self.keyname
        #self.out_file = self.output.displayText()

        self.PI = self.comboPI.currentText()
            
        self.scantime = self.time.displayText()
        
        if self.kernels.checkState() == 2:
            self.donwload_kernels = 'Y'
        else:
            self.donwload_kernels = 'N'

        if self.mid.checkState() == 2:
            self.mid_scan = 'Y'
        else:
            self.mid_scan = 'N'

        self.gap_start = self.early_start_gap.displayText()

        
    def clickStation(self):
        
        self.stations=[]
        stat = [self.station[k].checkState() for k in range(len(self.stations_codes))]
        stations_dict=dict(zip(self.stations_codes,stat))
        #        print stations_dict

        for key in stations_dict.keys():
            if stations_dict.get(key) == 2:
                self.stations.append(key)

    def returns(self):
        
        self.box.clear()
        print('\nSummary (please check if correct):')
        print('-------------------------------\n')
        print( 'PI:', self.PI)
        print( 'Satellite:', self.spacecraft)
        print( 'Output file:', self.out_file)
        print( 'Observations start:', self.start_date)
        print( 'Observations end:', self.end_date)
        print( 'Stations scheduled :', ', '.join(self.stations))

        station_list = ", ".join(self.stations)
        MakeKeyClass.MakeCoordFunction(self.spacecraft, self.PI,self.out_file, self.scantime, self.donwload_kernels, \
                                       self.mid_scan, self.do_vex, self.start_date, self.end_date, self.initial_gap, \
                                       self.gap_start, station_list)
        
        self.okButton.deleteLater()

    def normalOutputWritten(self, text):
        
        # Append text to the QTextEdit."

        cursor = self.box.textCursor()
        cursor.movePosition(QtGui.QTextCursor.End)
        cursor.insertText(text)
        self.box.setTextCursor(cursor)
        self.box.ensureCursorVisible()
#        self.box.append(text)


def main():
    
    app = QtWidgets.QApplication(sys.argv)
    
    Win = Window()
    
    # show the GUI
    Win.show()

    # This keeps the application alive
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
