#makefile
SHELL := bash
.ONESHELL:

CC = g++-12
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
    CC = g++-12
endif   

CFLAGS = -std=c++11 -Wall

SRCEXT := cpp
SRCDIR := src
INCDIR := include
BINDIR := bin
OBJDIR := obj

TARGET = hello


SRCFILES := $(shell find $(SRCDIR) -type f -iname "*.$(SRCEXT)") 
OBJFILES := $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$(SRCFILES:.$(SRCEXT)=.o))


$(TARGET): $(OBJFILES)
	@$(CC) $^ -o $(BINDIR)/$(TARGET)  
	@$(BINDIR)/$(TARGET)

$(OBJDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@mkdir -p $(OBJDIR)
	@$(CC) -c $(CFLAGS) -I $(INCDIR) $< -o $@

clean:
	@rm -rf $(OBJDIR) $(BINDIR)/*


setup:
	@mkdir -p $(SRCDIR) $(INCDIR) $(BINDIR) $(LIBDIR)
	@touch $(SRCDIR)/main.cpp
	@echo "int main() { return 0; }" > $(SRCDIR)/main.cpp

destroy:
	@rm -f $(SRCDIR)/* $(INCDIR)/* $(BINDIR)/* $(OBJDIR)/* $(LIBDIR)/*
	@rm -rf $(SRCDIR) $(INCDIR) $(BINDIR) $(OBJDIR) $(LIBDIR)
