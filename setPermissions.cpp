#include <iostream>
#include <sstream>
#include <cstdlib>

int main()
  {
  system("sudo addgroup gpio; sudo adduser $(whoami) gpio");
  #include "green.cpp"
  #include "red.cpp"
  std::ostringstream os;
  os << "sudo chown root:gpio " << GREEN << " && sudo chmod 0664 " << GREEN << " && sudo chown root:gpio " << RED << " && sudo chmod 0664 " << RED;
  if(system(os.str().c_str()) == 0)
    {
    std::cout << "Now users in the group gpio can use the files " << GREEN << " and " << RED << "." << std::endl;
    return 0;
    }
  else
    {
    std::cerr << "setPermissions: Can not set the permissions for this files! Are you in the group sudo?" << std::endl;
    return -1;
    }
  }
