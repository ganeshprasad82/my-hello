#include <stdio.h>
#include <math.h>
int main(){
int c=0;
for(c=0;c<50;c++) {
float i = 0.314;
       float j = 0.25;
       float k = 6.25;
       float sin_value = sin(i);
       float cos_value = cos(i);
       float tan_value = tan(i);
       float log_value = log(k);
       float log10_value = log10(k);
       float exp_value = exp(k);

       printf("The value of sin(%f) : %f \n", i, sin_value);
       printf("The value of cos(%f) : %f \n", i, cos_value);
       printf("The value of tan(%f) : %f \n", i, tan_value);
       printf("The value of log(%f) : %f \n", k, log_value);
       printf("The value of log10(%f) : %f \n",k,log10_value);
       printf("The value of exp(%f) : %f \n",k, exp_value);
}
      return 0;
}

