function result = Mojtaba_trap_integral(x, y, fun)
 result = trapz(y,trapz(x,fun,1),2);


