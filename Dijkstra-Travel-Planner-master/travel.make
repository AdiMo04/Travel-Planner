# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -std=c++11

# Executable name
EXEC = travel

# Source files
SRC = Main.cpp FileOperations.cpp GraphFunctions.cpp Location.cpp Parser.cpp Route.cpp

# Object files
OBJ = $(SRC:.cpp=.o)

# Header files
HEADERS = FileOperations.h GraphFunctions.h Location.h Parser.h Route.h

# Default target
all: $(EXEC)

# Link object files to create executable
$(EXEC): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compile source files to object files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $<

# Clean target
clean:
	rm -f $(OBJ) $(EXEC)
