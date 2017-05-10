class MakeKey:
    #
    def __init__(self,pi={'piname':'Name','phone':'Phone number','email':'email@some.where'},year='2017',month='05',day='10',sat='Mex',early_start='n',start_time='12:00:00',sources='',setup='n',setup_file='',stations='Mh',path=''):
        self.pis = pi
        self.year = year
        self.month = month
        self.day = day
        self.list_sat = ['v', 'm', 'r', 'g']
        self.sat = sat
        self.stations = stations
        self.early_start = early_start
        self.start_early = start_time
        self.start = start_time
        self.sources = sources
        self.setup = setup
        self.setup_file = setup_file
        self.path=path
        self.list_checks = ['exp',
                            'stafile',
                            'locfile',
                            'source',
                            'y',
                            'm',
                            'd',
                            's',
                            'sta',
                            'setup',
                            'piname',
                            'phone',
                            'email']
        self.list_regex = ['(.*expcode.*\')(\*{5})(\'.*)',
                           '(^stafile.*)',
                           '(^locfile.*)',
                           '(.*srcfile2.*)(sources\.\*{4})(.*)',
                           '(.*year.*)',
                           '(.*month.*)',
                           '(.*day.*)',
                           '(^start.*)',
                           '(.*stations.*.=.*)',
                           '(.*setup.*)',
                           '(.*piname.*\')(.*)(\'.*)',
                           '(.*\sphone.*\')(.*)(\'.*)',
                           '(.*email.*\')(.*)(\'.*)']
        self.dict_regex = dict(zip(self.list_checks, self.list_regex))

    def re_lines(self,check):
        import re
        self.check = check
        self.re = re.compile(self.dict_regex.get(self.check))

    def match_lines(self,line):
        if self.re.match(line):
            self.lines = line
            
    def match_text(self,text,line):
        insert =''
        if text == 'y': insert = self.year
        if text == 'm': insert = self.month
        if text == 'd': insert = self.day
        if text == 'sta': insert = self.stations
        if text in ['piname','phone','email']: insert = self.pis.get(text)+'\''
        if text == 'stafile': insert = self.path+'catalogs/locations.dat\n'
        if text == 'locfile': insert = self.path+'catalogs/stations.local\n'
        if text == 'source': insert = self.sources
        if text == 'exp':
            if self.sat.lower()[0] in self.list_sat:
                insert = self.sat.lower()[0]+self.month+self.day+'\''
            else:
                insert = 'x'+self.month+self.day+'\''
        if text == 'setup':
            if self.setup=='y':
                insert = self.setup_file
            else:
                if self.sat.lower()[0] in (self.list_sat):
                    insert = self.path+'Setups/'+self.sat.lower()+'.x'
        if text == 's':
            if self.early_start=='n':
                insert = self.start
            elif self.early_start=='y':
                insert = self.start_early
        
        return self.re.match(line).groups()[0]+insert+'\n'

if __name__ == '__main__':
    test = MakeKey()
    for lines in open('default.key'):
        split_line = lines
        for r in test.list_checks:
            test.re_lines(r)
            if test.re.match(lines):
                split_line = test.match_text(r,lines)
        print(split_line[:-1])
