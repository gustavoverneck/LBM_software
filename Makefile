# Definiç̃ão de variáveis
CXX = g++
CXXFLAGS = -Wall -Wextra -Werror
TARGET = programa
SOURCES = main.cpp utils.cpp
OBJECTS = $(SOURCES:.cpp=.o)
INCLUDE_DIR = include
OUTPUT_DIR = output

# Diretórios das bibliotecas
# ...

# Regra padrão
all: $(TARGET)

# Regra para criar diretórios build e output
dirs:
	mkdir -p include
	mkdir -p output

# Regra para criar o executável
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Regra para criar os arquivos .o
%.o: %.c
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regra de limpeza
clean:
	rm -f $(OBJECTS) $(TARGET)

# Regra para executar o programa
run: $(TARGET)
	./$(TARGET)
