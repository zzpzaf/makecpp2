//main.cpp

#include "salutation.h"
#include "calculations.h"

// using namespace nspace1; 

int main()
{
    nspace1::Salutation sal;
    sal.salut() ;

    int a = 5;
    int b = 6;
    int p = 11;
    int rm;
    int rf;
    nspace2::Calculations calc;
    rm = calc.multiply(a, b);
    rf = calc.factorial(p);
    sal.result(rm, rf);


    return 0;
}






// #include <iostream>
// #include <vector>
// #include <string>

// using namespace std;

// int main()
// {
//     vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and", "make!"};

//     for (const string& word : msg)
//     {
//         cout << word << " ";
//     }
//     cout << endl;
// }