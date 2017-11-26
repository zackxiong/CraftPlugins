#include <cstdio>
#include <cstdlib>
#include <cerrno>
#include <cstring>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <iostream>
#include <fstream>

#define SERVPORT 3333
#define BACKLOG 10
#define MAXDATASIZE 1000
#define SOURCE_FILE "./test.mhtml"

using namespace std;

int main()
{
    int sock_fd,client_fd;
    int sin_size;
    struct sockaddr_in my_addr;
    struct sockaddr_in remote_addr;

    if((sock_fd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
        perror("socket创建出错！");
        exit(1);
    }

    long flag = 1;
    setsockopt(sock_fd, SOL_SOCKET, SO_REUSEADDR, (char *)&flag, sizeof(flag));

    my_addr.sin_family=AF_INET;
    my_addr.sin_port=htons(SERVPORT);
    my_addr.sin_addr.s_addr = INADDR_ANY;
    bzero(&(my_addr.sin_zero),8);
    if(bind(sock_fd, (struct sockaddr *)&my_addr, sizeof(struct sockaddr)) == -1) {
        perror("bind出错！");
        exit(1);
    }
    if(listen(sock_fd, BACKLOG) == -1) {
        perror("listen出错！");
        exit(1);
    }


    while(1) {
        sin_size = sizeof(struct sockaddr_in);
        if((client_fd = accept(sock_fd, (struct sockaddr *)&remote_addr, (socklen_t*)&sin_size)) == -1) {
            perror("accept出错");
            continue;
        }
        printf("received a connection from %s:%u\n", inet_ntoa(remote_addr.sin_addr), ntohs(remote_addr.sin_port));

        if(!fork()) {
            ifstream infile;
            infile.open(SOURCE_FILE);
            if(!infile.is_open()){
                perror("Can't open source file!");
            }
            std::string s_html,f_buff;
            std::cout<<"FILE READING<========================"<<std::endl;
            while(getline(infile,f_buff)){
                s_html.append(f_buff);
            }
            infile.close();
            std::cout<<s_html<<std::endl;
            std::cout<<"END<========================"<<std::endl;

            char* buff = new char[3000];
            buff[2999]='\0';
            auto is_last = [=](char* b){
                return std::string(b).find("\x0D\x0A\x0D\x0A")==std::string::npos;
            };

            std::cout<<"READING<========================"<<std::endl;
            do{
                recv(client_fd,buff,2999,0);
                std::cout<<buff<<std::endl;
            }
            while(is_last(buff));
            std::cout<<"END<========================"<<std::endl;

            const char* header=
                "HTTP/1.1 200 OK\x0D\x0A"
                "Content-Type: message/rfc822\x0D\x0A"
                "Cache-control: no-cache\x0D\x0A\x0D\x0A\0";

            auto s_content=(std::string(header)+s_html);

            auto content=s_content.data();

            std::cout<<"SENDING========================>"<<std::endl;
            std::cout<<content<<std::endl;
            if(send(client_fd, content,(strlen(content))*sizeof(char), 0) == -1) {
                perror("send出错！");
            }

            std::cout<<"END========================>"<<(strlen(s_html.data()))*sizeof(char)<<std::endl;

            close(client_fd);
            delete[] buff;
            std::cout<<(int)client_fd<<": closed"<<std::endl;
            exit(0);
        }
        close(client_fd);
    }
    return 0;
}
