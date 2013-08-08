CFLAGS	+=	-Os -Wall
PROG		=	forecast-stone
PREFIX	?=	/usr
VER		=	0.1
MANDIR	?=	/share/man

${PROG}: ${PROG}.c
	@${CC} ${CFLAGS} -o ${PROG} ${PROG}.c
	@strip ${PROG}

clean:
	@rm -f ${PROG}

install:
	@install -Dm755 ${PROG} ${DESTDIR}${PREFIX}/bin/${PROG}
#	@install -Dm644 ${PROG}.1 ${DESTDIR}${PREFIX}${MANDIR}/man1/${PROG}.1
