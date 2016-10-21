function output = sigma(delta_p,gamma31,delta_c,gamma21,ohm_c)
%steady state matrix element sigma31/ohm_p of EIT
output = -0.5i/((delta_p*1i - gamma31)+(ohm_c^2*0.25/(1i*(delta_p - delta_c) - gamma21)));