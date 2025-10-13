STARTYEAR	= 1997

SHELL		= /bin/sh
CXX		= g++
CXXCPP		= g++ -E
RANLIB		= ranlib
INSTALL		= /usr/bin/install -c
STRIP		= strip
MAKEDEP         = g++ -MM
AR		= ar
LEX		= flex
YACC		= bison -y
transform	= s,x,x,
SED		= /usr/bin/sed

UTLDIR		= src/core/utils.src
SIMDIR		= src/core/sim.src
CMDDIR		= src/core/cmd.src
GUIDIR		= src/core/gui.src
MOTDIR		= src/core/motorola.src

PICOPT		= 
CPPFLAGS        =  \
		  -I. -I$(srcdir) \
                  -I$(top_builddir)/$(UTLDIR) \
                  -I$(top_srcdir)/$(UTLDIR) \
                  -I$(top_srcdir)/$(SIMDIR) \
		  -I$(top_srcdir)/$(CMDDIR) \
		  -I$(top_srcdir)/$(GUIDIR) \
		  -I$(top_srcdir)/$(MOTDIR)

SILENT		= yes
OPT		?= 2
CFLAGS          = -Wall -Wno-overloaded-virtual -Wno-unused-parameters -Wno-unused -I /usr/include/ -O$(OPT)
CXXFLAGS        = -Wall -Wno-overloaded-virtual -Wno-unused-parameters -Wno-unused -g -pipe -O$(OPT) $(PICOPT)
LDFLAGS		= 
LIBS		= -lm -lrt 
CURSES_LIBS	= 

WINSOCK_AVAIL   = 0
LDFLAGS		= 

EXEEXT		= 
UCSIM_LIBS	= -lmotorola -lsim -lucsimutil -lgui -lcmd -lsim \
		  $(CURSES_LIBS) $(LIBS)
UCSIM_LIB_PREREQUES = \
		  $(top_builddir)/libmotorola.a \
		  $(top_builddir)/libcmd.a \
		  $(top_builddir)/libgui.a \
		  $(top_builddir)/libsim.a \
		  $(top_builddir)/libucsimutil.a

UCSIM_LIB_TARGETS = \
		motorola_lib \
		cmd_lib \
		gui_lib \
		sim_lib \
		ucsimutil_lib

prefix          = /usr/local
exec_prefix     = ${prefix}
bindir          = ${exec_prefix}/bin
libdir          = ${exec_prefix}/lib
datadir         = ${datarootdir}
datarootdir     = ${prefix}/share
includedir      = ${prefix}/include
mandir          = ${datarootdir}/man
man1dir         = $(mandir)/man1
man2dir         = $(mandir)/man2
infodir         = ${datarootdir}/info

curses_ok	= no
enable_dlso	= no
dlso_ok		= no

ALL_OBJECTS	= $(OBJECTS) $(LOCAL_OBJECTS)
SOURCES		= $(patsubst %.o,%.cc,$(ALL_OBJECTS))

.cc.o:
ifeq ($(SILENT),yes)
	@echo CXX $(PKG)-$@
	@$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c $< -o $@
else
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c $< -o $@
endif

.l.cc:
	rm -f $@
	$(LEX) -t $< > $@

.y.cc:
	$(YACC) -d $<
	mv y.tab.c $*.cc
	mv y.tab.h $*.hh


SEN		= s$(PKG)$(EXEEXT)
LEN		= ucsim_$(PKG)$(EXEEXT)
SONAME		= libucsim_$(PKG).so
