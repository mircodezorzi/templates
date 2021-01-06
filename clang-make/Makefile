CC := g++

CXXFLAGS := -O3 -Iinclude
LDLIBS   := -lfmt

SRCS    = $(shell find $(SRCDIR) -name '*.cpp')
SRCDIRS = $(shell find . -name '*.cpp' | dirname {} | sort | uniq | sed 's/\/$(SRCDIR)//g' )
OBJS    = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRCS))

EXEC     := program

DESTDIR  := /usr/local
PREFIX   := debug

EXECDIR  := bin
OBJDIR   := bin
SRCDIR   := src
INCLUDE  := include

all: $(EXEC)
$(EXEC): $(OBJS) $(HDRS) Makefile
	mkdir -p $(EXECDIR)/$(PREFIX)
	$(CC) -o $(EXECDIR)/$(PREFIX)/$@ $(OBJS) $(CXXFLAGS) $(LDLIBS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(OPTS) -c $< $(INCLUDE:%=-I%) -o $@

.PHONY: install
install: $(EXEC)
	mkdir -p $(DESTDIR)/$(PREFIX)/bin
	cp $< $(DESTDIR)/$(PREFIX)/bin/$(EXEC)

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)/$(PREFIX)/bin/$(EXEC)

.PHONY: clean
clean:
	rm -f $(EXECDIR)/$(PREFIX)/$(EXEC) $(OBJS)

.PHONY: compile_commands.json
compile_commands.json: Makefile
	make --always-make --dry-run \
		| grep -wE 'gcc|g++' \
		| grep -w '\-c' \
		| jq -nR '[inputs|{directory:".", command:., file: match(" [^ ]+$$").string[1:]}]' \
		> compile_commands.json
