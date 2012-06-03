#include <stdio.h>
#include <stdlib.h>

float rss( float number )
{
  long i;
  float x2, y;
  const float threehalfs = 1.5F;

  x2 = number * 0.5F;
  y  = number;
  i  = * ( long * ) &y;  // evil floating point bit level hacking
  i  = 0x5f3759df - ( i >> 1 ); // what the fuck?
  y  = * ( float * ) &i;
  y  = y * ( threehalfs - ( x2 * y * y ) ); // 1st iteration
  printf("ind: %f res: %f\n",number,1/y);
  return y;
}

float ss(float number) {
    long i;
    float x, y;
    const float f = 1.5F;

    x = number * 0.5F;
    y  = number;
    i  = * ( long * ) &y;
    i  = 0x5f3759df - ( i >> 1 );
    y  = * ( float * ) &i;
    y  = y * ( f - ( x * y * y ) );
    y  = y * ( f - ( x * y * y ) );
    printf("ind: %f res: %f\n",number,number*y);
    return number * y;
}

int main(){
    ss(400.0);
    ss(612.0);
    ss(250.0);
    ss(710.0);

    rss(400.0);
    rss(612.0);
    rss(250.0);
    rss(710.0);

}
