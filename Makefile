CXX      := clang++
CXXFLAGS := -Wall -Wextra
LDFLAGS  := -luring
BUILD    := ./build
TARGET   := divio
SRC      := main.cpp

.PHONY: all build clean

all: build $(BUILD)/$(TARGET)

build:
	@mkdir -p $(BUILD)
	$(CXX) $(CXXFLAGS) -o $(BUILD)/$(TARGET) $(SRC) $(LDFLAGS)

debug: CXXFLAGS += -DDEBUG -g
debug: all

release: CXXFLAGS += -O2
release: all
