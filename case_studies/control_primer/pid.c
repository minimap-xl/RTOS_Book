/*********** 
 * 
 * Computation of PID control using  bilinear transform. The Laplace transform of the transfer function is
 * W(s) = Kp*X(s)+Ki*X(s)/s+Kd*s*X(s)
 * Using bilinear transform, i.e. s = (2/T)(1 - (1/z))/(1 + (1/z)), the corresponding Z transform is:
 * W(z) = ((1/z)**2*(Ki*T**2-2*T*Kp+4*Ki) + (1/z)(2*Ki*T**2-8*Kd) + 2*T*Kp+Ki*T**2+4*Kd) / (2*T*(1 - (1/z)**2))
 * corresponding to the following discrete transform:
 * y(nT) = y((n-2)T) + (1/(2*T))*((2*T*Kp+Ki*T**2+4*Kd)*x(nT) + (2*Ki*T**2-8*Kd)*x((n-1)T) + (Ki*T**2-2*T*Kp+4*Kd)*X((n-2)T)))
 * 
 *****************/

 struct history {
    double oldY[2];
    double oldX[2];
 };

 static void updateHistory(double x, double y, struct history *his)
 {
    his->oldY[1] = his->oldY[0];
    his->oldY[0] = y;
    his->oldX[1] = his->oldX[0];
    his->oldX[0] = x;
 }

static struct history history; //being static, its elements are initialized to 0


double pid(double inX, double T, double Kp, double Ki, double Kd, struct history *his)
{
    double y = his->oldY[1] + (1./2*T)*((2*T*Kp+Ki*T*T+4*Kd)*inX + (2*Ki*T*T-8*Kd)*his->oldX[0] + (Ki*T*T-2*T*Kp+4*Kd)*his->oldX[1]);
    updateHistory(inX,y,his);
    return y; 
}







 