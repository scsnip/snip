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
        string message="hello friend!\n";
        char input[1000];
        int bts_rcvd=boost::asio::read(client_sock, boost::asio::buffer((void*)input,sizeof(input)),boost::asio::transfer_at_least(1),err);
        cout<<"Data size obtained: "<<bts_rcvd<<endl;
        boost::asio::write(client_sock, boost::asio::buffer(message), boost::asio::transfer_all(), err);
        boost::asio::write(client_sock, boost::asio::buffer(input,bts_rcvd), boost::asio::transfer_all(), err);
        message="plz send more data :)\n";
        boost::asio::write(client_sock, boost::asio::buffer(message), boost::asio::transfer_all(), err);
        bts_rcvd=boost::asio::read(client_sock, boost::asio::buffer((void*)input,sizeof(input)),boost::asio::transfer_at_least(1),err);
        cout<<"Data size obtained: "<<bts_rcvd<<endl;
    }
}
