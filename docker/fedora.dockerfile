FROM fedora:28

RUN yum groupinstall -y "Development Tools"                                                                                                                                                        
RUN yum install -y zlib-devel readline-devel ncurses-devel openssl-devel gdbm-devel sqlite-devel bzip2-devel                                                                                       
RUN yum install -y wget                                                                                                                                                                            
RUN yum install -y freeglut-devel                                                                                                                                                                  
RUN yum install -y xcb-util-*                                                                                                                                                                      
RUN yum install -y which                                                                                                                                                                           
RUN yum install -y libXi-devel libXmu-devel                                                                                                                                                        
RUN yum install -y libXrandr-devel                                                                                                                                                                 
RUN yum install -y libXinerama-devel                                                                                                                                                               
RUN yum install -y libXcursor-devel                                                                                                                                                                
RUN yum install -y libtiff-devel                                                                                                                                                                   
RUN yum install -y libpng-devel                                                                                                                                                                    
RUN yum install -y libjpeg-turbo-devel                                                                                                                                                             
RUN yum install -y dh-autoreconf curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel                                                                                          
RUN yum install -y pcre-devel xz-devel zlib-devel                                                                                                                                                  
RUN yum install -y xz-devel                                                                                                                                                                        
RUN yum install -y glib2-devel slang-devel                                                                                                                                                         
RUN yum install -y cmake                                                                                                                                                                           
RUN yum install -y boost-devel lua-devel                                                                                                                                                           
RUN yum install -y freetype-devel 
RUN yum install -y harfbuzz-devel 
RUN yum install -y fontconfig-devel 
RUN yum install -y libevent-devel 
