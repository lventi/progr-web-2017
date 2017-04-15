OPTS = -cp ../lib/javax.servlet-api-3.0.1.jar -Xlint:deprecation
JAVAC ?= javac
JAVA_FILES := $(wildcard ./*.java)
CLASS_FILES := $(notdir $(JAVA_FILES:.java=.class))

all: $(CLASS_FILES)

clean:
	rm -f $(CLASS_FILES)

%.class: %.java
	$(JAVAC) $(OPTS) $<