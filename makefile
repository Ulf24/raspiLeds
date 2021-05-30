all: greenOn.cpp greenOff.cpp writeInFile.cpp
	# ------------ Building programs for green led --------------
	sh findFileForGreen.sh && g++ -std=c++11 -o greenOn greenOn.cpp && g++ -std=c++11 -o greenOff greenOff.cpp
	# ------------ Building programs for red led ----------------
	sh findFileForRed.sh && g++ -std=c++11 -o redOn redOn.cpp && g++ -std=c++11 -o redOff redOff.cpp
