CC = gcc
CFLAGS = -Wall -Wextra -std=c99 -Ivendors/raylib/src
LDFLAGS = -Lvendors/raylib/src -lraylib -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

SRCDIR = src
OBJDIR = build
SRCS = $(wildcard $(SRCDIR)/*.c)
OBJS = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRCS))

TARGET = game

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: clean
