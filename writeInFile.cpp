#ifndef WRITEINFILE_CPP
#define WRITEINFILE_CPP

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
  else return 0;
  }

#endif
