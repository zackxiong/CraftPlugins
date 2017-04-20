#pragma once
#include<stdio.h>
#include<vector>

using namespace std;

class CGenome{
public:

vector<double> vecWeights;
double dFitness;

CGenome()
    :dFitness(0) {};
CGenome(vector<double>w, double f)
    :vecWeights(w),
    dFitness(f){
    
}

};
