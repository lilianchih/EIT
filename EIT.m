ohm_c = 1;
gamma21 = 0.00001;
gamma31 = (1 + gamma21)/2;
delta_c = 0;
%The parameters above are in unit of Gamma^-1
OD = 50;
delta_p = -10:0.01:10;
for j = 1:size(delta_p,2)
    T(j) = exp(-OD * imag(sigma(delta_p(j), gamma31, delta_c, gamma21, ohm_c)));
    phi(j) = 0.5 * OD * real(sigma(delta_p(j), gamma31, delta_c, gamma21, ohm_c));
end
subplot(1, 2, 1)
plot(delta_p, T)
title('Transmission')
subplot(1, 2, 2)
plot(delta_p, phi)
title('Phase shift')