OPTS = -cp /usr/share/java/tomcat8-servlet-api.jar:../lib/commons-fileupload-1.0.jar:.:/usr/share/java/tomcat8-jsp-api.jar -Xlint:deprecation
JAVAC ?= javac
JAVA_FILES := $(wildcard ./*.java)
CLASS_FILES := $(notdir $(JAVA_FILES:.java=.class)) 

all: $(CLASS_FILES)

clean:
	rm -f $(CLASS_FILES)

%.class: %.java
	$(JAVAC) $(OPTS) $<
