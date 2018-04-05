import _if97
from _if97 import version

UnChange = {'p':1, 'h':1}
SI2IAPWS = {'p':1e-6, 'h':1e-3}
IAPWS2SI = {'p':1e6, 'h':1e3}

def get_encode_type(units):
    '''
    pass to dll
    '''
    if units == _if97.units:
        return UnChange
    elif units == 'SI':
        return SI2IAPWS
    elif units == 'IAPWS':
        return IAPWS2SI
    else:
        raise Exception("units '%s' not recognized" % units)

def get_decode_type(units):
    '''
    pass to dll
    '''
    if units == _if97.units:
        return UnChange
    elif units == 'SI':
        return IAPWS2SI
    elif units == 'IAPWS':
        return SI2IAPWS
    else:
        raise Exception("units '%s' not recognized" % units)    

class ThermoDynState(object):
    def __init__(self, T, p, units = 'SI'):
        self.units = units
        self.units_encode = get_encode_type(units)
        self.units_decode = get_decode_type(units)
            
        self.T = T
        self.p = p
        self.__p = self.units_encode['p'] * p
        self.__rho = None
        self.__v = None
        self.__h = None
        self.__u = None
        self.__s = None
        self.__cp = None
        self.__w = None

    @property
    def rho(self):
        if self.__rho is None:
            self.__rho = _if97.rhomass_Tp(self.T, self.__p)
        return self.__rho

    @property        
    def v(self):
        if self.__v is None:
            self.__v = 1/_if97.rhomass_Tp(self.T, self.__p)
        return self.__v

    @property        
    def h(self):
        if self.__h is None:
            self.__h = _if97.hmass_Tp(self.T, self.__p) * self.units_decode['h']
        return self.__h

    @property        
    def u(self):
        if self.__u is None:
            self.__u = _if97.umass_Tp(self.T, self.__p) * self.units_decode['h']
        return self.__u

    @property        
    def s(self):
        if self.__s is None:
            self.__s = _if97.smass_Tp(self.T, self.__p) * self.units_decode['h']
        return self.__s

    @property        
    def cp(self):
        if self.__cp is None:
            self.__cp = _if97.cpmass_Tp(self.T, self.__p) * self.units_decode['h']
        return self.__cp

    @property        
    def w(self):
        if self.__w is None:
            self.__w = _if97.speed_sound_Tp(self.T, self.__p)
        return self.__w
    
def get_state_by_p_and_h(p, h, units = 'SI'):
    units_encode = get_encode_type(units)
    _p = p * units_encode['p']
    _h = h * units_encode['h']
    T = _if97.T_phmass(_p, _h)
    state = ThermoDynState(T, p, units = units)
#    state.__h = h
    return state
    
def get_state_by_p_and_s(p, s, units = 'SI'):
    units_encode = get_encode_type(units)
    _p = p * units_encode['p']
    _s = s * units_encode['h']
    T = _if97.T_psmass(_p, _s)
    state = ThermoDynState(T, p, units = units)
#    state.__s = s
    return state
    
def get_state_by_h_and_s(h, s, units = 'SI'):
    units_encode = get_encode_type(units)
    units_decode = get_decode_type(units)
    _h = h * units_encode['h']
    _s = s * units_encode['h']
    _p = _if97.p_hsmass(_h, _s)
    p = _p * units_decode['p']
#    T = _if97.T_hsmass(_h, _s)
    T = _if97.T_phmass(_p, _h)
    state = ThermoDynState(T, p, units = units)
#    state.__s = s
    return state
