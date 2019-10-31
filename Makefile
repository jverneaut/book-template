BOOK_TITLE = Exemple_de_livre

SOURCE_FOLDER = src
SOURCE_FILES = $(wildcard $(SOURCE_FOLDER)/**/*.md)
METADATA_FILE = src/metadata.yml

OUTPUT_FOLDER = output

PANDOC_OPTIONS =\
	--number-sections \
	--table-of-contents

pdf: $(SOURCE_FOLDER)/**/*.md
	mkdir -p $(OUTPUT_FOLDER)
	pandoc \
		-i $(SOURCE_FILES) \
		-o $(OUTPUT_FOLDER)/$(BOOK_TITLE).pdf \
		--metadata-file=$(METADATA_FILE) \
		$(PANDOC_OPTIONS)

all: pdf
