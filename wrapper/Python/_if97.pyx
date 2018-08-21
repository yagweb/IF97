cimport if97

###########################
## API
###########################

def rhomass_Tp(T,  p):
    '''
    Get the mass density [kg/m^3] as a function of T [K] and p [Pa]
    '''
    return if97.rhomass_Tp(T, p)

def hmass_Tp(T, p):
    '''
    Get the mass enthalpy [J/kg] as a function of T [K] and p [Pa]
    '''
    return if97.hmass_Tp(T, p)

def smass_Tp(T, p):
    '''
    Get the mass entropy [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.smass_Tp(T, p)

def umass_Tp(T, p):
    '''
    Get the mass internal energy [J/kg] as a function of T [K] and p [Pa]
    '''
    return if97.umass_Tp(T, p)

def cpmass_Tp(T, p):
    '''
    Get the mass constant-pressure specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cpmass_Tp(T, p)
    
def cvmass_Tp(T, p):
    '''
    Get the mass constant-volume specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cvmass_Tp(T, p)

def speed_sound_Tp(T, p):
    '''
    Get the speed of sound [m/s] as a function of T [K] and p [Pa]
    '''
    return if97.speed_sound_Tp(T, p)

def drhodp_Tp(T, p):
    '''
    Get the [d(rho)/d(p)]T [kg/m³/Pa] as a function of T [K] and p [Pa]
    '''
    return if97.drhodp_Tp(T, p)

###########################
## Transport Properties
###########################

def visc_TRho(T, rho):
    '''
    Get the viscosity [Pa-s] as a function of T [K] and Rho [kg/m³]
    '''
    return if97.visc_TRho(T, rho)

def visc_Tp(T, p):
    '''
    Get the viscosity [Pa-s] as a function of T [K] and p [Pa]
    '''
    return if97.visc_Tp(T, p)

def tcond_Tp(T, p):
    '''
    Get the thermal conductivity [W/m-K] as a function of T [K] and p [Pa]
    '''
    return if97.tcond_Tp(T, p)

def prandtl_Tp(T, p):
    '''
    Calculate the Prandtl number [dimensionless] as a function of T [K] and p [Pa]
    '''
    return if97.prandtl_Tp(T, p)

###########################
## Saturated Vapor/Liquid Functions
###########################

def rholiq_p(p):
    '''
    Get the saturated liquid mass density [kg/m^3] as a function of p [Pa]
    '''
    return if97.rholiq_p(p)

def rhovap_p(p):
    '''
    Get the saturated vapor mass density [kg/m^3] as a function of p [Pa]
    '''
    return if97.rhovap_p(p)

def hliq_p(p):
    '''
    Get the saturated liquid mass enthalpy [J/kg] as a function of p [Pa]
    '''
    return if97.hliq_p(p)

def hvap_p(p):
    '''
    Get the saturated vapor mass enthalpy [J/kg] as a function of p [Pa]
    '''
    return if97.hvap_p(p)

def sliq_p(p):
    '''
    Get the saturated liquid mass entropy [J/kg/K] as a function of p [Pa]
    '''
    return if97.sliq_p(p)

def svap_p(p):
    '''
    Get the saturated vapor mass entropy [J/kg/K] as a function of p [Pa]
    '''
    return if97.svap_p(p)

def uliq_p(p):
    '''
    Get the saturated liquid mass internal energy [J/kg] as a function of p [Pa]
    '''
    return if97.uliq_p(p)

def uvap_p(p):
    '''
    Get the saturated vapor mass internal energy [J/kg] as a function of p [Pa]
    '''
    return if97.uvap_p(p)

def cpliq_p(p):
    '''
    Get the saturated liquid mass isobaric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cpliq_p(p)

def cpvap_p(p):
    '''
    Get the saturated vapor mass isobaric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cpvap_p(p)

def cvliq_p(p):
    '''
    Get the saturated liquid mass isochoric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cvliq_p(p)

def cvvap_p(p):
    '''
    Get the saturated vapor mass isochoric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    '''
    return if97.cvvap_p(p)

def speed_soundliq_p(p):
    '''
    Get the saturated liquid speed of sound [m/s] as a function of T [K] and p [Pa]
    '''
    return if97.speed_soundliq_p(p)

def speed_soundvap_p(p):
    '''
    Get the saturated vapor speed of sound [m/s] as a function of T [K] and p [Pa]
    '''
    return if97.speed_soundvap_p(p)

def viscliq_p(p):
    '''
    Get the saturated liquid viscosity [Pa-s] as a function of p [Pa]
    '''
    return if97.viscliq_p(p)

def viscvap_p(p):
    '''
    Get the saturated vapor viscosity [Pa-s] as a function of p [Pa]
    '''
    return if97.viscvap_p(p)

def tcondliq_p(p):
    '''
    Get the saturated liquid thermal conductivity [W/m-K] as a function of p [Pa]
    '''
    return if97.tcondliq_p(p)

def tcondvap_p(p):
    '''
    Get the saturated vapor thermal conductivity [W/m-K] as a function of p [Pa]
    '''
    return if97.tcondvap_p(p)

def prandtlliq_p(p):
    '''
    Calculate the saturated liquid Prandtl number [dimensionless] as a function of p [Pa]
    '''
    return if97.prandtlliq_p(p)

def prandtlvap_p(p):
    '''
    Calculate the saturated vapor Prandtl number [dimensionless] as a function of p [Pa]
    '''
    return if97.prandtlvap_p(p)

###########################
## 2-Phase Functions
###########################

def Tsat97(p):
    '''
    Get the saturation temperature [K] as a function of p [Pa]
    '''
    return if97.Tsat97(p)

def psat97(T):
    '''
    Get the saturation pressure [Pa] as a function of T [K]
    '''
    return if97.psat97(T)

def sigma97(T):
    '''
    Get surface tension [N/m] as a function of T [K]
    '''
    return if97.sigma97(T)

###########################
## Backward Functions
###########################

def T_phmass(p, h):
    return if97.T_phmass(p, h)

def rhomass_phmass(p, h):
    return if97.rhomass_phmass(p, h)

def T_psmass(p, s):
    return if97.T_psmass(p, s)

def rhomass_psmass(p, s):
    return if97.rhomass_psmass(p, s)

def p_hsmass(h, s):
    return if97.p_hsmass(h, s)

def T_hsmass(h, s):
    return if97.T_hsmass(h, s)

def Region_ph(p, h):
    return if97.Region_ph(p, h)

def Region_ps(p, s):
    return if97.Region_ps(p, s)

###########################
## Trivial Functions
###########################

# Get the Triple Point Temperature and Pressure
Ttrip = if97.get_Ttrip()
ptrip = if97.get_ptrip()
# Get the Critical Point Temperature and Pressure and Density
Tcrit = if97.get_Tcrit()
pcrit = if97.get_pcrit()
rhocrit = if97.get_rhocrit()
# Get the Max and Min Temperatures and Pressures
Tmin = if97.get_Tmin()
Pmin = if97.get_Pmin()
Tmax = if97.get_Tmax()
Pmax = if97.get_Pmax()

# Get physical constants
MW = if97.get_MW()
Rgas = if97.get_Rgas()
Acentric = if97.get_Acentric()

###########################
## Utility Functions
###########################
version = if97.get_if97_version().decode()
units = 'IAPWS' if 'IAPWS' in version else 'SI'

def hmass_pQ(p, Q):
    return if97.hmass_pQ(p, Q)

def umass_pQ(p, Q):
    return if97.umass_pQ(p, Q)

def smass_pQ(p, Q):
    return if97.smass_pQ(p, Q)

def v_pQ(p, Q):
    return if97.v_pQ(p, Q)

def rhomass_pQ(p, Q):
    return if97.rhomass_pQ(p, Q)

def Q_phmass(p, h):
    return if97.Q_phmass(p, h)

def Q_pumass(p, u):
    return if97.Q_pumass(p, u)

def Q_psmass(p, s):
    return if97.Q_psmass(p, s)

def Q_prhomass(p, rho):
    return if97.Q_prhomass(p, rho)

def Q_pv(p, v):
    return if97.Q_pv(p, v)

class IF97parameters:
    IF97_DMASS = 0
    IF97_HMASS = 1
    IF97_T = 2
    IF97_P = 3
    IF97_SMASS = 4
    IF97_UMASS = 5
    IF97_CPMASS = 6
    IF97_CVMASS = 7
    IF97_W = 8
    IF97_DRHODP = 9
    IF97_MU = 10
    IF97_K = 11

class IF97SatState:
    NONE = 0
    LIQUID = 1
    VAPOR = 2
        
def RegionOutput(int outkey, double T, double p, int state):
    cdef :
        if97.IF97parameters _outkey = <if97.IF97parameters>outkey
        if97.IF97SatState _State = <if97.IF97SatState>state
    return if97.RegionOutput(_outkey, T, p, _State)