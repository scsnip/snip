all:	sync_server
clean:	sync_server_clean
	
sync_server:
	g++ ./sync_socket.cpp -lboost_system -o sync_server.bin

sync_server_clean:
	rm ./sync_server.bin

