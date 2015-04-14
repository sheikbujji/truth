# Introduction #

> 컴퓨터를 조립할때, 마더보드와 CPU 그리고 메모리 사이에 호환성을 확인하고 적합한 조합을 선택한다. 컴퓨터 부품이 도착하면 누드 상태에서 마더보드와 CPU 그리고 메모리를 연결하고 동작하는지 확인한 후에 다음 부속을 조립한다. 이때 고성능 서버용 제품의 경우 노이즈에 민감해 세심한 주의가 필요하다. 확인할 부분은 전원 공급기가 잘 동작하는지 (예를들면 Fan이 움직이는지), CPU/Memory/마더보드가 호환이 되는지, 마더보드에 불량은 없는지 (예를들면, 케페스터가 터지진 않았는지) 등의 순서로 확인이 필요하다.

> GPU-CPU 슈퍼컴 사양

> - CPU: Xeon E5645 x 2 $579.99 each
> - Case: LIAN LI PC-P80 $299
> - GPU: GTX580 $489
> - Power: Silent Pro Gold 1200W $269.99
> - DRAM: 4 x 8GB DDR3 SDRAM 1333 (PC3 10600) ECC Registered Server ~87$ per 8GB
> - HDD: 2 x 1TB Seagate Barracuda ST31000524AS 7200RPM 149.99 each
> - DVD: Sony 19.99$
> - CPU Cooler: 2 x Thermalright U120eXtrem1366RT R-C 120mm Fluid Dynamic $59.99 each
> - Motherboard: Tyan S7025

> S/W

> Suse Linux Enterprise ##

> $ yast
  1. installs
> GCC
> Kernel source code

> ncurses-devel

> ifort (Intel Fortran Compiler)
> > Serial #: NR2M-KDS8GZHG
> > URL - https://registrationcenter.intel.com/RegCenter/DownloadNow.aspx?ID=14593&DLM=0&EmailID=yim2012%40gmail.com&Sequence=1246400

> mpich2


> MPI는 프로그램이 동작하는 노드들간에 비밀번호 등의 부가적인 인증(Authentication) 절차 없이 로그인 가능한 환경을 가정하고 있다. MPI 미들웨어는 SSH를 사용해 다른 노드에 Shell에 접근하여 MPI 프로세서를 실행(Launching)하게 되는데 SSH의 경우 로그인을 위해서 비밀번호를 필요로 한다. 이를 Bypass하기 위해서는 Public Key를 사용해서 설정해야 하는데 이 설정 방법은 다음과 같다.

> $ ssh-keygen -t rsa
> $ scp .ssh/id\_rsa.pub <remote node hostname>:.ssh/authorized\_keys


> zlib: http://zlib.net/
> git
> nftape

> CUDA

> cuda sdk
> cuda toolkit
> cuda driver
> > init 3 to disable the X
> > init 5 to enable



> 병렬 또는 분산 시스템에서는 효율성을 위해서는 분산 파일시스템의 사용이 필수적이다. AFS (Andrew File System)과 NFS (Network File System)이 대표적인 분산 파일시스템으로 설치 방법은 다음과 같다.

> NFS (too slow)

> http://nfs.sourceforge.net/nfs-howto/

> server setup: http://aaronwalrath.wordpress.com/2011/03/18/configure-nfs-server-v3-and-v4-on-scientific-linux-6-and-red-hat-enterprise-linux-rhel-6/
> windows client: http://www.labf.com/download/index.html


> OpenAFS

> client packages are installed by the install CD

> for configuration:

> /usr/vice/etc/ThisCell
> /usr/vice/etc/CellServDB

> Kerberos: /etc/krb5.conf

> $ service afs start

> OpenMPI 등의 경우 Firewall이 없는 Cluster 환경을 대상으로 하고 있기 때문에 병렬 작업의 수행을 위해서 SSH로 원격의 노드에 접속한 후에 임의의 TCP 포트를 열어서 병렬 작업을 수행하는데 이때 사용되는 TCP 포트의 범위에 제한이 없다. 따라서 Firewall이 MPI Cluster 내부에 있는 노드들의 IP로부터의 접속을 허용해야 한다.

> TORQUE (Parallel Batch Sys, PBS)

> http://www.adaptivecomputing.com/resources/downloads/torque/

> When SSH connection is slow (e.g., 192.168.x.x address), this is due to the slow DSN lookup operation. Fix is:

> add "UseDNS no" to /etc/ssh/sshd\_config
> add the client's net address to the server's /etc/hosts

# Details #

Add your content here.  Format your content with:
  * Text in **bold** or _italic_
  * Headings, paragraphs, and lists
  * Automatic links to other wiki pages