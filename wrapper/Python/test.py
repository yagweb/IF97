import if97
from if97 import ThermoDynState, get_state_by_p_and_h,\
    get_state_by_p_and_s, get_state_by_h_and_s

def test_Region1():
    print("Table 5 - Region 1\n")
    print("v\t, h\t, u\t, s\t, cp\t, w\t")
    for T, p in ((300, 3),
                 (300, 80),
                 (500, 3)):
        state = ThermoDynState(T, p, units = 'IAPWS')
        print("%11.8e, %11.8e, %11.8e, %11.8e, %11.8e, %11.8e" % 
              (state.v, state.h, state.u, state.s, state.cp, state.w))
    print("_______________________________________________\n")
        
def test_Region2():
    print("Table 15 - Region 2\n")
    print("v\t, h\t, s\t, cp\t, w\t")
    for T, p in ((300, 0.0035),
                 (700, 0.0035),
                 (700, 30)):
        state = ThermoDynState(T, p, units = 'IAPWS')
        print("%11.8e, %11.8e, %11.8e, %11.8e, %11.8e" % 
              (state.v, state.h, state.s, state.cp, state.w))
    print("_______________________________________________\n")
        
def test_Region3():
    print("Table 33* - Region 3\n")
    print("rho\t, h\t, s\t, cp\t, w\t")
    for T, p in ((650, 25.5837018),
                 (650, 22.2930643),
                 (750, 78.3095639)):
        state = ThermoDynState(T, p, units = 'IAPWS')
        print("%11.8e, %11.8e, %11.8e, %11.8e, %11.8e" % 
              (state.rho, state.h, state.s, state.cp, state.w))
    print("_______________________________________________\n")
        
def test_Region5():
    print("Table 42 - Region 5\n")
    print("v\t, h\t, s\t, cp\t, w\t")
    for T, p in ((1500, 0.5),
                 (1500, 30),
                 (2000, 30)):
        state = ThermoDynState(T, p, units = 'IAPWS')
        print("%11.8e, %11.8e, %11.8e, %11.8e, %11.8e" % 
              (state.v, state.h, state.s, state.cp, state.w))
    print("_______________________________________________\n")
        
def test_reverse():
    print(" Reverse Functions T(p,h) & T(p,s) \n")
    print(" Region 1 \n")
    for p, h, s in ((3.0, 500, 0.5),
                 (80, 500, 0.5),
                 (80, 1500, 3)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(p, s, units = 'IAPWS')
        print("%d %d T = %11.9e | %d %.1f %11.9e" % (state1.p, state1.h, state1.T, 
                                                     state2.p, state2.s, state2.T))
    print("_______________________________________________\n")
        
    print(" Region 2a, 2b, 2c \n")
    for p, h, ps, s in ((0.001, 3000, 0.1, 7.5),
                 (3, 3000, 0.1, 8),
                 (3, 4000, 2.5, 8)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(ps, s, units = 'IAPWS')
        print("T = %11.9e, %11.9e" % (state1.T, state2.T))
    print("_______________________________________________\n")
    
    for p, h, ps, s in ((5, 3500, 8, 6),
                 (5, 4000, 8, 7.5),
                 (25, 3500, 90, 6)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(ps, s, units = 'IAPWS')
        print("T = %11.9e, %11.9e" % (state1.T, state2.T))
    print("_______________________________________________\n")

    for p, h, ps, s in ((40, 2700, 20, 5.75),
                 (60, 2700, 80, 5.25),
                 (60, 3200, 80, 5.75)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(ps, s, units = 'IAPWS')
        print("T = %11.9e, %11.9e" % (state1.T, state2.T))
    print("_______________________________________________\n")
  
    print(" Region 3a, 3b \n")
    for p, h, s in ((20, 1700, 3.8),
                 (50, 2000, 3.6),
                 (100, 2100, 4.0)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(p, s, units = 'IAPWS')
        print("T = %11.9e, %11.9e" % (state1.T, state2.T))
    print("_______________________________________________\n")
    
    for p, h, s in ((20, 2500, 5.0),
                 (50, 2400, 4.5),
                 (100, 2700, 5.0)):
        state1 = get_state_by_p_and_h(p, h, units = 'IAPWS')
        state2 = get_state_by_p_and_s(p, s, units = 'IAPWS')
        print("T = %11.9e, %11.9e" % (state1.T, state2.T))
    print("_______________________________________________\n")

def test_reverse2():
    print(" Reverse Functions p(h,s) & T(h,s) \n")
    print("  Region 1 \n")
    for h, s in ((0.001, 0),
                 (90, 0),
                 (1500, 3.4)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
#        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
        print("p = %11.9e" % (state1.p))
    print("_______________________________________________\n")

    print("  Region 2a, 2b, 2c \n")
    
    for h, s in ((2800, 6.5),
                 (2800, 9.5),
                 (4100, 9.5)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
    print("_______________________________________________\n")

    for h, s in ((2800, 6.0),
                 (3600, 6.0),
                 (3600, 7.0)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
    print("_______________________________________________\n")

    for h, s in ((2800, 5.1),
                 (2800, 5.8),
                 (3400, 5.8)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
    print("_______________________________________________\n")
    
    print("  Region 3a, 3b \n")
    for h, s in ((1700, 3.8),
                 (2000, 4.2),
                 (2100, 4.3)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
    print("_______________________________________________\n")
    
    for h, s in ((2600, 5.1),
                 (2400, 4.7),
                 (2700, 5.0)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
        print("%d %.1f p = %11.9e" % (state1.h, state1.s, state1.p))
    print("_______________________________________________\n")
    
    print(" Region 4 (2-phase Saturation Temperature) \n")
    for h, s in ((1800, 5.3),
                 (2400, 6.0),
                 (2500, 5.5)):
        state1 = get_state_by_h_and_s(h, s, units = 'IAPWS')
    ### bug, compile with SI, reconstruct error is very big!
    ### compile with IAPWS, throw exception!
#        print("%d %.1f T = %11.9e" % (state1.h, state1.s, state1.T))
        print("T = %11.9e" % (state1.T))
    print("_______________________________________________\n")
    
def test_RegionOutput():
    T = 500
    p = 100
    value = if97.RegionOutput(if97.IF97parameters.IF97_UMASS, T, p, if97.IF97SatState.VAPOR)
    print(value)
    
if __name__ == "__main__":
    print(if97.version)
    test_Region1()
    test_Region2()
    test_Region3()
    test_Region5()
    test_reverse()
    test_reverse2()
    test_RegionOutput()