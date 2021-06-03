.PHONY: build


build:
	./protoc \
		--plugin=protoc-gen-scala=protoc-gen-scala \
		-Iprotobuf/ \
		-I. \
		--scala_out=flat_package,grpc:src/main/scala \
		./TestEvent.proto
	./gradlew build --no-daemon
