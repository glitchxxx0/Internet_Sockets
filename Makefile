# Variables
CC = gcc
CFLAGS = -Wall -g

# Source files
SRC = client.c listener.c showip.c simple_stream_server.c talker.c telnot.c

# Executables
EXECUTABLES = $(SRC:.c=)

# Targets
all: $(EXECUTABLES)

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(EXECUTABLES)

