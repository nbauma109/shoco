FLAGS=$(CFLAGS) -std=c99 -O3 -Wall -I"/c/jdk1.7.0_80/include" -I"/c/jdk1.7.0_80/include/win32"
SOURCES=shoco.c org_shoco_Shoco.c
OBJECTS=$(SOURCES:.c=.o)
HEADERS=shoco.h shoco_model.h org_shoco_Shoco.h
GENERATOR=generate_compressor_model.py
TRAINING_DATA_DIR=training_data
TRAINING_DATA=$(wildcard training_data/*.txt)
TABLES_DIR=models
TABLES=$(TABLES_DIR)/text_en.h $(TABLES_DIR)/words_en.h $(TABLES_DIR)/filepaths.h

.PHONY: all
all: shoco shocolibjni.dll

shoco: shoco-bin.o $(OBJECTS) $(HEADERS)
	$(CC) $(LDFLAGS) $(OBJECTS) -s $< -o $@

test_input: test_input.o $(OBJECTS) $(HEADERS)
	$(CC) $(LDFLAGS) $(OBJECTS) -s $< -o $@

$(OBJECTS): %.o: %.c $(HEADERS)
	$(CC) $(FLAGS) $< -c

shoco_model.h: $(TABLES_DIR)/words_en.h
	cp $< $@

.PHONY: models
models: $(TABLES)

$(TABLES_DIR)/text_en.h: $(TRAINING_DATA) $(GENERATOR)
	python $(GENERATOR) $(TRAINING_DATA) -o $@

$(TABLES_DIR)/words_en.h: $(TRAINING_DATA) $(GENERATOR)
	python $(GENERATOR) --split=whitespace --strip=punctuation $(TRAINING_DATA) -o $@

$(TABLES_DIR)/dictionary.h: /usr/share/dict/words $(GENERATOR)
	python $(GENERATOR) $< -o $@

# Warning: This is *slow*! Use pypy when possible
$(TABLES_DIR)/filepaths.h: $(GENERATOR)
	find / -print 2>/dev/null | pypy $(GENERATOR) --optimize-encoding -o $@

.PHONY: check
check: tests

tests: tests.o $(OBJECTS) $(HEADERS)
	$(CC) $(LDFLAGS) $(OBJECTS) $< -o $@
	./tests

.PHONY: clean
clean:
	rm *.o

.PHONY: js
js: shoco.js

shoco.js: $(OBJECTS) $(HEADERS) pre.js
	emcc shoco.c -O3 -o $@ --closure 1 -s EXPORTED_FUNCTIONS="['_shoco_compress', '_shoco_decompress']" --pre-js pre.js

shocolibjni.dll: $(OBJECTS)
	$(CC) -shared $^ -o $@ org_shoco_Shoco.def

	