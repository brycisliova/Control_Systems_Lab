function [Q,R,N] = get_QR(a,b,c,d,e)
%     Convention:
%      x = [theta alpha d_theta d_alpha]
    Q = zeros(4);
    Q(1,1) = a;
    Q(2,2) = b;
    Q(3,3) = c;
    Q(4,4) = d;
    
    R = e;  
    
    
    N = zeros(4,1);
end
