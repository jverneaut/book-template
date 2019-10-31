BOOK_TITLE = Exemple_de_livre

SOURCE_FOLDER = chapters
SOURCE_FILES = $(wildcard $(SOURCE_FOLDER)/*.md)
OUTPUT_FOLDER = output

PANDOC_OPTIONS =\
	--number-sections \
	--table-of-contents

pdf: chapters/*.md
	mkdir -p $(OUTPUT_FOLDER)
	pandoc \
		$(SOURCE_FILES) \
		-o $(OUTPUT_FOLDER)/$(BOOK_TITLE).pdf \
		$(PANDOC_OPTIONS)

all: pdf
