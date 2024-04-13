module BridgeCalcsUS

export A6_6_1_2_2_1, A6_9_4_1_2d1

"""

    A6_6_1_2_2_1(γ, Δf, ΔF_n)

# Arguments

- γ - load factor specified in Table 3.4.1-1 for the fatigue load combination.
- Δf - force effect, live load stress range due to the passage of the fatigue 
  load as specified in Article 3.6.1.4 (ksi)  
- ΔF_n - nominal fatigue resistance as specified in Article 6.6.1.2.5 (ksi)
"""
function A6_6_1_2_2_1(γ, Δf, ΔF_n)
    γ*Δf <= ΔF_n
end

"""
    A6_9_4_1_2d1(E, A_g, K, l, r_s)

# Arguments

- E = modulus of elasticity of steel (ksi)
- A_g - gross cross-sectional area of the member (in.2) 
- K - effective length factor in the plane of buckling determined as specified in Article 4.6.2.5
- l - unbraced length in the plane of buckling (in.)
- r_s - radius of gyration about the axis normal to the plane of buckling (in.)
"""
function A6_9_4_1_2d1(E, A_g, K, l, r_s)
    P_e = (π^2*E)/(K*l/r_s)^2*A_g
end

end

