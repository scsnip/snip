#include <boost/asio.hpp>
#include <iostream>


using std::cout;
using std::endl;
using boost::asio::ip::tcp;
using std::string;

int main (){
    boost::asio::io_service is; 
    tcp::acceptor acceptor(is,tcp::endpoint(tcp::v4(), 12345));
    boost::system::error_code err;

    for(;;){
        tcp::socket client_sock(is);
        acceptor.accept(client_sock);
        string message="hello friend!";
        boost::asio::write(client_sock, boost::asio::buffer(message), boost::asio::transfer_all(), err);
    }
}
