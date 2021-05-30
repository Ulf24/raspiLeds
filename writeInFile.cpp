#ifndef WRITEINFILE_CPP
#define WRITEINFILE_CPP

#include <iostream>
#include <string>
#include <fstream>

bool writeInFile(std::string file, bool value)
  {
  std::ofstream of(file, std::ofstream::out | std::ofstream::binary);
  if(of.is_open())
    {
    of << value;
    of.close();
    return 1;
    }
  else
    {
    std::cerr << "Can not open file " << file << " for writing. Do you have permissions?" << std::endl;
    return 0;
    }
  }

#endif
