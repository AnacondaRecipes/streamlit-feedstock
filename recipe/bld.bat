:: Set the protobuf command
set PROTOC=protoc

:: Compile the .proto files to Python code
%PROTOC% --proto_path=proto --python_out=lib proto\streamlit\proto\*.proto

%PYTHON% -m pip install ./lib -vv --no-deps --no-build-isolation