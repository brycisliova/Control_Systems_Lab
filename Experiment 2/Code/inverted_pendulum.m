function [] = inverted_pendulum()
    close all;
    [A,B,C,D] = get_ABCD();
    %17,0.5,1,0.5,1
%     55,0.5,1,0.5,1
%     70,0.5,1,0.5,1
    [Q,R,N] = get_QR(18,0.75,2,0.75,1);
    
    K = lqr(A,B,Q,R,N);
%     k1 = K(1)
%     k2 = K(2)
%     k3 = K(3)
%     k4 = K(4)
%     
    fprintf('float k1 =%f;\n',K(1));
    fprintf('float k2 =%f;\n',K(2));
    fprintf('float k3 =%f;\n',K(3));
    fprintf('float k4 =%f;\n',K(4));
%     states = {'theta' 'alpha' 'd_theta' 'd_alpha'};
%     inputs = {'u'};
%     outputs = {'theta' 'alpha'};
    
%     sys_ss = ss(A,B,C,D);
%     poles = eig(A)
% 
%     
%     A_cl = [(A-B*K)];
%     B_cl = [B];
%     C_cl = [C];
%     D_cl = [D];
%     
%     sys_cl = ss(A_cl,B_cl,C_cl,D_cl);
%     
%     t = 0:0.01:5;
%     r =0.2*ones(size(t));
%     
%     [y,t,x]=lsim(sys_cl,r,t);
%     [AX,H1,H2] = plotyy(t,y(:,1),t,y(:,2),'plot');
%     set(get(AX(1),'Ylabel'),'String','cart position (m)')
%     set(get(AX(2),'Ylabel'),'String','pendulum angle (radians)')
%     title('Step Response with LQR Control')



    
end
