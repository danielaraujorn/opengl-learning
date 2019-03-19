# Compila programas do curso de OpenGL
# digite: make programa.c
#

CC = gcc

##### MACROS #####

INCDIR = /usr/include
LIBDIR = /usr/lib

GL_LIBS = -L$(LIBDIR) -lglut -lGLU -lGL -lm $(XLIBS)

LIB_DEP = $(LIBDIR)/$(GL_LIB)

##### RULES #####

.SUFFIXES:
.SUFFIXES: .c

.c: $(LIB_DEP)
	$(CC) -I$(INCDIR) $(CFLAGS) $< $(GL_LIBS) -o $@

##### TARGETS ######

clean:
	-rm *.o *~