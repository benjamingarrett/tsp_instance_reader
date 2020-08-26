#include "tsp_instance_reader.h"
#include <iostream>
using std::cout;
using std::endl;
int main(){
  int g;
  struct tsp_instance * instance;
  instance = read_tsp_instance("../misc_phd/input/tsp_instances/tsplib/burma14.tsp");
  cout << "Name: " << instance->name << endl;
  cout << "Num points: " << instance->num_points << endl;
  for(g=0; g<instance->num_points; g++){
    cout << instance->x[g] << " " << instance->y[g] << endl;
  }
}
