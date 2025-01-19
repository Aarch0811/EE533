This is the subpart of Lab-1 with modifications in the ENHANCED source code. There is a problem called ZOMBIE PROBLEM. 
Zombie Problem: if the parent runs for a long time and accepts many connections, each of these connections will create a zombie when the connection is terminated. A zombie is a
process which has terminated but but cannot be permitted to fully die because at some point in the future, the parent of the process might execute a wait and would want information about the
death of the child. Zombies clog up the process table in the kernel, and so they should be prevented. Unfortunately, the code which prevents zombies is not consistent across different
architectures. When a child dies, it sends a SIGCHLD signal to its parent. On systems such as AIX, the following code in main() is all that is needed.

signal(SIGCHLD,SIG_IGN);
This says to ignore the SIGCHLD signal. However, on systems running SunOS, you have to use
the following code:
void *SigCatcher(int n)
{
wait3(NULL,WNOHANG,NULL);
}
...
int main()
{
...
signal(SIGCHLD,SigCatcher);
...

The function SigCatcher() will be called whenever the parent receives a SIGCHLD signal (i.e. whenever a child dies). This will in turn call wait3 which will receive the signal. The
WNOHANG flag is set, which causes this to be a non-blocking wait.
