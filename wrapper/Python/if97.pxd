from libcpp.string cimport string

cdef extern from "IF97.h" nogil:
    enum IF97parameters:
        IF97_DMASS
        IF97_HMASS
        IF97_T
        IF97_P
        IF97_SMASS
        IF97_UMASS
        IF97_CPMASS
        IF97_CVMASS
        IF97_W
        IF97_DRHODP
        IF97_MU
        IF97_K

    enum IF97SatState:
        NONE
        LIQUID
        VAPOR

cdef extern from "IF97.h" namespace "IF97" nogil:
    ###########################
    ## API
    ###########################
    
    # Get the mass density [kg/m^3] as a function of T [K] and p [Pa]
    double rhomass_Tp(double T, double p) except +
    # Get the mass enthalpy [J/kg] as a function of T [K] and p [Pa]
    double hmass_Tp(double T, double p) except +
    # Get the mass entropy [J/kg/K] as a function of T [K] and p [Pa]
    double smass_Tp(double T, double p) except +
    # Get the mass internal energy [J/kg] as a function of T [K] and p [Pa]
    double umass_Tp(double T, double p) except +
    # Get the mass constant-pressure specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cpmass_Tp(double T, double p) except +
    # Get the mass constant-volume specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cvmass_Tp(double T, double p) except +
    # Get the speed of sound [m/s] as a function of T [K] and p [Pa]
    double speed_sound_Tp(double T, double p) except +
    # Get the [d(rho)/d(p)]T [kg/m³/Pa] as a function of T [K] and p [Pa]
    double drhodp_Tp(double T, double p) except +
    
    ###########################
    ## Transport Properties
    ###########################
    
    # Get the viscosity [Pa-s] as a function of T [K] and Rho [kg/m³]
    double visc_TRho(double T, double rho) except +
    # Get the viscosity [Pa-s] as a function of T [K] and p [Pa]
    double visc_Tp(double T, double p) except +
    # Get the thermal conductivity [W/m-K] as a function of T [K] and p [Pa]
    double tcond_Tp(double T, double p) except +
    # Calculate the Prandtl number [dimensionless] as a function of T [K] and p [Pa]
    double prandtl_Tp(double T, double p) except +
    
    ###########################
    ## Saturated Vapor/Liquid Functions
    ###########################
    
    # Get the saturated liquid mass density [kg/m^3] as a function of p [Pa]
    double rholiq_p(double p) except +
    # Get the saturated vapor mass density [kg/m^3] as a function of p [Pa]
    double rhovap_p(double p) except +
    # Get the saturated liquid mass enthalpy [J/kg] as a function of p [Pa]
    double hliq_p(double p) except +
    # Get the saturated vapor mass enthalpy [J/kg] as a function of p [Pa]
    double hvap_p(double p) except +
    # Get the saturated liquid mass entropy [J/kg/K] as a function of p [Pa]
    double sliq_p(double p) except +
    # Get the saturated vapor mass entropy [J/kg/K] as a function of p [Pa]
    double svap_p(double p) except +
    # Get the saturated liquid mass internal energy [J/kg] as a function of p [Pa]
    double uliq_p(double p) except +
    # Get the saturated vapor mass internal energy [J/kg] as a function of p [Pa]
    double uvap_p(double p) except +
    # Get the saturated liquid mass isobaric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cpliq_p(double p) except +
    # Get the saturated vapor mass isobaric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cpvap_p(double p) except +
    # Get the saturated liquid mass isochoric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cvliq_p(double p) except +
    # Get the saturated vapor mass isochoric specific heat [J/kg/K] as a function of T [K] and p [Pa]
    double cvvap_p(double p) except +
    # Get the saturated liquid speed of sound [m/s] as a function of T [K] and p [Pa]
    double speed_soundliq_p(double p) except +
    # Get the saturated vapor speed of sound [m/s] as a function of T [K] and p [Pa]
    double speed_soundvap_p(double p) except +
    # Get the saturated liquid viscosity [Pa-s] as a function of p [Pa]
    double viscliq_p(double p) except +
    # Get the saturated vapor viscosity [Pa-s] as a function of p [Pa]
    double viscvap_p(double p) except +
    # Get the saturated liquid thermal conductivity [W/m-K] as a function of p [Pa]
    double tcondliq_p(double p) except +
    # Get the saturated vapor thermal conductivity [W/m-K] as a function of p [Pa]
    double tcondvap_p(double p) except +
    # Calculate the saturated liquid Prandtl number [dimensionless] as a function of p [Pa]
    double prandtlliq_p(double p) except +
    # Calculate the saturated vapor Prandtl number [dimensionless] as a function of p [Pa]
    double prandtlvap_p(double p) except +
    
    ###########################
    ## 2-Phase Functions
    ###########################
    
    # Get the saturation temperature [K] as a function of p [Pa]
    double Tsat97(double p) except +
    # Get the saturation pressure [Pa] as a function of T [K]
    double psat97(double T) except +
    # Get surface tension [N/m] as a function of T [K]
    double sigma97(double T) except +
    
    ###########################
    ## Backward Functions
    ###########################
    
    double T_phmass(double p, double h) except +
    double rhomass_phmass(double p, double h) except +
    double T_psmass(double p, double s) except +
    double rhomass_psmass(double p, double s) except +
    double p_hsmass(double h, double s) except +
    double T_hsmass(double h, double s) except +
    int Region_ph(double p, double h) except +
    int Region_ps(double p, double s) except +
    
    ###########################
    ## Trivial Functions
    ###########################
    
    # Get the Triple Point Temperature and Pressure
    double get_Ttrip()
    double get_ptrip()
    # Get the Critical Point Temperature and Pressure and Density
    double get_Tcrit()
    double get_pcrit()
    double get_rhocrit()
    # Get the Max and Min Temperatures and Pressures
    double get_Tmin()
    double get_Pmin()
    double get_Tmax()
    double get_Pmax()
    # Get physical constants
    double get_MW()
    double get_Rgas()
    double get_Acentric()
    
    ###########################
    ## Utility Functions
    ###########################
    string get_if97_version()
    double hmass_pQ(double p, double Q) except +
    double umass_pQ(double p, double Q) except +
    double smass_pQ(double p, double Q) except +
    double v_pQ(double p, double Q) except +
    double rhomass_pQ(double p, double Q) except +
    double Q_phmass(double p, double h) except +
    double Q_pumass(double p, double u) except +
    double Q_psmass(double p, double s) except +
    double Q_prhomass(double p, double rho) except +
    double Q_pv(double p, double v) except +
    
    double RegionOutput(IF97parameters outkey, double T, double p, IF97SatState State) except +
    