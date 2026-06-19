BUILD_VERSION := 01a925da68e9412939c56b62620bd45fec1dfede
BUILD_ARTIFACT := SS14.Server_linux-x64.zip

IMAGE_TAG := ss14:$(BUILD_VERSION)

UNZIP_DIR := unpacked

all: $(UNZIP_DIR) image

$(BUILD_ARTIFACT):
	./fetch.sh $(BUILD_VERSION) $(BUILD_ARTIFACT)

$(UNZIP_DIR): $(BUILD_ARTIFACT)
	unzip -d $(UNZIP_DIR) $(BUILD_ARTIFACT)

image:
	docker buildx build -t $(IMAGE_TAG) .

clean:
	rm -rf $(BUILD_ARTIFACT)

.PHONY: all image clean
