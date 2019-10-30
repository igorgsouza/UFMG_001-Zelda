ALLEGRO_VERSION=5.0.10
MINGW_VERSION=4.7.0
FOLDER=C:

FOLDER_NAME=\allegro-$(ALLEGRO_VERSION)-mingw-$(MINGW_VERSION)
PATH_ALLEGRO=$(FOLDER)$(FOLDER_NAME)
LIB_ALLEGRO=\lib\liballegro-$(ALLEGRO_VERSION)-monolith-mt.a
INCLUDE_ALLEGRO=\include
O_FLAGS=main.o	entidade.o	game.o	menu.o	player.o

all:	main

main:	$(O_FLAGS)
	g++	$(O_FLAGS)	-o	main	$(PATH_ALLEGRO)$(LIB_ALLEGRO)

main.o:	main.cpp
	g++	-I	$(PATH_ALLEGRO)$(INCLUDE_ALLEGRO)	-c	main.cpp
	
entidade.o:	entidade.cpp
	g++	-I	$(PATH_ALLEGRO)$(INCLUDE_ALLEGRO)	-c	entidade.cpp
	
game.o:	game.cpp
	g++	-I	$(PATH_ALLEGRO)$(INCLUDE_ALLEGRO)	-c	game.cpp
	
menu.o:	menu.cpp
	g++	-I	$(PATH_ALLEGRO)$(INCLUDE_ALLEGRO)	-c	menu.cpp
	
player.o:	player.cpp
	g++	-I	$(PATH_ALLEGRO)$(INCLUDE_ALLEGRO)	-c	player.cpp