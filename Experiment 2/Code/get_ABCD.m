function [A,B,C,D] = get_ABCD()
    
    M_p = 0.027;        %kg
    l_p = 0.153;        %m
    L_p = 0.191;        %m
    r = 0.08260;        %m

    J_m = 3e-5;         %kg-m^2
    M_arm = 0.028;      %kg
    g = 9.810;          %m/s^2
    J_eq = 1.23e-4;     %kg-m^2
    J_p = 1.1e-4;       %kg-m^2
    B_eq = 0;           %N-m/(rad/s)
    B_p = 0;            %N-m/(rad/s)
    R_m = 3.3;          %ohm
    K_t = 0.02797;      %N-m
    K_m = 0.02797;      %N-m
    
    
    A = zeros(4,4);
    A(1,3) = 1;
    A(2,4) = 1;
    
    A(3,2) = (r * M_p^2 * l_p^2 * g)/(J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2);
   
    A(3,3) = - (K_t*K_m * (J_p + M_p*l_p^2)) / ((J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2) * R_m);
    
    A(4,2) = (M_p * l_p * g * (J_eq + M_p*r^2))/(J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2);
    
    A(4,3) = - (M_p * l_p * K_t * r * K_m)/((J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2) * R_m);
    
    B = zeros(4,1);
    
    B(3,1) = (K_t * (J_p + M_p * l_p^2))/((J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2) * R_m);
    
    B(4,1) = (M_p * l_p * K_t * r)/((J_p * J_eq + M_p*l_p^2 * J_eq + J_p*M_p * r^2) * R_m);
    
    C = eye(4);
    
    D = zeros(4,1);
        
end
