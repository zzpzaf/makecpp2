//calculations.cpp

#include "calculations.h"

int nspace2::Calculations::multiply(int x, int y)
{
    return x * y;
}

int nspace2::Calculations::factorial(int n)
{
    if (n == 1)
        return 1;
    return n * factorial(n - 1);
}

