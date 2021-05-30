all:
	make green
	make red

green: findFileForGreen.sh greenOn.cpp greenOff.cpp writeInFile.cpp
	make fileGreen
	make greenOn
	make greenOff

red: findFileForRed.sh redOn.cpp redOff.cpp writeInFile.cpp
	make fileRed
	make redOn
	make redOff

fileGreen: findFileForGreen.sh
	sh findFileForGreen.sh

fileRed: findFileForRed.sh
	sh findFileForRed.sh

greenOn: greenOn.cpp writeInFile.cpp green.cpp
	g++ -std=c++11 -o greenOn greenOn.cpp

greenOff: greenOff.cpp writeInFile.cpp green.cpp
	g++ -std=c++11 -o greenOff greenOff.cpp

redOn: redOn.cpp writeInFile.cpp red.cpp
	g++ -std=c++11 -o redOn redOn.cpp

redOff: redOff.cpp writeInFile.cpp red.cpp
	g++ -std=c++11 -o redOff redOff.cpp

clean:
	rm greenOn greenOff redOn redOff green.cpp red.cpp

groupGpio: makeGroupGpio.sh
	sh makeGroupGpio.sh

