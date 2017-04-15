OPTS = -d ../classes/ -cp ../lib/javax.servlet-api-3.0.1.jar:../lib/postgresql-42.0.0.jre6.jar -Xlint:deprecation
JAVAC ?= javac
JAVA_FILES := $(shell find . -name '*.java')
CLASS_FILES := $(JAVA_FILES:.java=.class)

all: $(CLASS_FILES)

copy: $(CLASS_FILES)

clean:
	rm -rf ../classes/*

%.class: %.java
	$(JAVAC) $(OPTS) $<