policeA(X,Y):-(X=true);(Y=true).
policeB(X,Y):-(X=true);(Y=true).
policeC(X,Y):-(X=true);(Y=true).
policeD(X,Y):-(X=false);(Y=false).
policeE(X,Y):-(X=false);(Y=false).
find([Zhao,Qian,Sun,Li]):-policeA(Zhao,Qian),policeB(Qian,Sun),policeC(Sun,Li),policeD(Zhao,Sun),policeE(Qian,Li).












