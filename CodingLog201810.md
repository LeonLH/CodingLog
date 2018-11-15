Thu Oct  4 22:16:03 CST 2018
1. Usage of Ctags/cscope:
```
ctags -R 		//build tags of source code, create database
ctrl-]			//This keyboard combination, get into function/member
ctrl-t			//go back tags. opposite above command
:sc 			//cscope command list
```


Fri Oct  5 16:06:27 CST 2018
1. Shell script to automaticly mission;
	1. Upload CodingLog everyday automaticly if there is newer content;
	2. Upload leetcode everyday automaticly if there is newer content;
	3. upload My_CONFIG/ everyday automaticly if there is newer content;
2. 


Sat Oct  6 12:26:24 CST 2018
1. Hibernate
2. Disable the cdrom
3. Swap doesn't work
4. How to make terminal automaticly clear screen?
5. Does directory have inode? Or only files have inode, so that can be made a link.  
	1. Directory can be made a soft-link, but not sure for hard-link;
	2. File can be made either soft-link or hard-link;


Mon Oct  8 10:41:39 CST 2018
1. [TBD] GDB---pretty-printer 

Tue Oct  9 11:03:17 CST 2018
1. x86 CPU have limit to the size of debug register, so limit the size of watchpoint value, such as struct->val instead of struct;
2. Vector<vector<int>> V, vector tmp, when tmp is pushed into V, then change the value of tmp, V will not change;
3. 函数的参数是`TreeNode* &p`,c++语言特性;

Wed Oct 10 11:37:43 CST 2018
1. 一定要注意！的优先级非常高； 


Thu Oct 11 09:33:42 CST 2018
1. [D] Markdown nestlist doesn't support more than 2 levels, how to implement nestlist more than 3 levels. 
	* Yes, It doesn't support muti-nestedlist, but it support muti-indentation.  
2. Each paragraph should be seperated with a empty line; 
3. [TBD] Why does GDB aften break down when restart program? 

Fri Oct 12 10:40:34 CST 2018
Today's WorkTarget:
1. vbird 2H;
2. Write down basic BST operation (including search insert create delete), study 'How to create an AVL';
3. Leetcode: more than 2 accepts; 


1. 学习《鸟哥》时，先要快速把全书实现一遍，现在的速度感觉有点慢，两天一章，快速高效；
2. [TBD] Automatically upload Workspace everyday is more and more important right now; 
3. [TBD] 语系的问题，现在这个字体看着有点别扭，抽时间修改；
4. [TBD] Vim <F7> compile, <F8>compile and run. 



Sat Oct 13 11:37:43 CST 2018
Today's Plan:
1. vbird 2H;
2. Refact BST code and AVL code, then them down;
3. 2 leetcodes;
 

Workflow:
1. How to save a file as other name and stay in current file in vim? 
	* Just type `:w filename` ;
	* `:save filename` will save and GoTo that file;
	* NOTE: BOTH above command will NOT save changes into current file. So if you want save content into current file, typw ":w" before above command;

2. Vimium Using tricky:
```
ma 		//set mark a/A(global mark)
`a		//go to mark a/A(global mark)
```
3. [TBD] How to display the difference of code with git? 
4. Write with pen is too slow compared to typing code, So just write dwon some key code and typing code often to practice. 


Sun Oct 14 08:44:27 CST 2018

TaskList:
- [x] vbird 2H
- [ ] practice BST and AVL one time
- [ ] 1 leetcode

Workflow:
1. Markdown TaskList: `- [ ] TaskTodo` and `- [x] TaskDone`;
2. Git commmits should in best practice be fairly atomic and effect few files;
3. If you want something to be done each time you restart computer, you need to write something in `~/.bashrc`;
4. [TBD] 搜狗输入法的安装，由于需要重启，等我学完脚本的书写，能够自动化一系列开机流程后，再进行安装；
5. 还是相当的不熟练，还是要多敲，只有敲才能发现问题，问题还是有很多的；
6. Can't make use of mytime effectively, think about how to make good use of time. 


Mon Oct 15 08:38:28 CST 2018
TaskList:
- [x] vbird 2H
- [x] finish last day's practice
- [x] 1 leetcode

Workflow:
1. Find a new way to navigate to last day's working place:
	* Using vimium's mark, just set the mark `mL` and second day, I want to get the last place, then I should type `L FOR TWICE(first to get the page and second to get the place) to get to the place; 
2. Using `` to get to the last place where it isn't by j/k/gg/G/;
3. `if; else` && `if; if`
	* `if; else if; else if; else` 有点类似于分支语句，前述四个分支只 按顺序选取一个进入，后面的即使有满足条件的也不进入。所以else if使用的时候，要从全集开始一步一步分割，最后直到分割完成，后者剩下一些（此时没有最后一个else）。它适合于，四种情况，只有一种情况才能发生，就用elseif来分割。
	* `if; if; if; if;` 有点顺序逻辑，判断执行完第一个if还要判断执行第二个。它适合于各个条件都需要判断，即四种情况可能同时发生几种。
4. In order to easily debug using gdb, so don't define variable in the forloop. I know maybe It's best for some reason to define in the forloop, but before I find a batter way to debug in this situation, Don't use this way;   
5. [TBD] Find a effective procedure to write program. Reading realitive books;  
	* First, write down the steps of the implementation; 
	* Second, write down the test main and test data; 
6. One directory exclude some files: `!(filename)`

Tue Oct 16 08:35:28 CST 2018

TaskList:
- [ ] 2H vbird
- [ ] Search algorithms study
- [ ] 2 leetcode

Workflow:
1. [Already take 8H unfinished] .vimrc's `,sv` doesn't work;
	1. Inorder to remove stuff, the easiest way is to simply quit vim and restart it;
	2. Alternatively, you should explicit remove the stuff from the runtime model; for most stuff, there are corresponding negating commands:
		* The inverse of `:map` is `:unmap`, The inverse of `:iabbrev @@` is `:iunabbrev @@`;
		* There's `:command` and `delcommand`;
		* `autocmd` can be removed via `:autocmd!`, this can only effect in the **future** buffers. If I want make it effect, I want type `:nunmap <buffer> <F8> `;
	3. It waste too much time!

2. [TBD] Rewriting myown .vimrc file, make sure each item can be understood. 
3. 看着鸟哥看着看着就去研究.vimrc了，然后大概研究了两个小时左右，返回来再看鸟哥的时候，感觉就有点不在状态了，然后就转而去思考网页的鸟哥的不好的地方，就在想自己的那本书，然后就转去看关于书籍装订的东东了。就这样，大概今天上午浪费了三个小时（一共才三个半小时）；
4. 在图书馆还是不能靠椅子的背，刚开始靠以下没有什么问题，可是靠着靠着，精神就几种不起来了，然后就慢慢瘫到到后面去了。所以，为了此种现象的不再发生，同时也要养成一个终身的好习惯：禁止靠椅子背，强化背部肌肉，收紧下巴；
5. [TBD] 关于《鸟哥》，每天上午看它的效率有点太低了，如何能有效提高？
	* 
6. Append a line to leetcode repository's README.md: `>>` 


Wed Oct 17 08:36:19 CST 2018

TackList:
- [ ] 2H vbird, complete Chap.10; 
- [ ] Searching algorithms study, 3 method, if time is not enough, do it in the night; 
- [ ] 3 leetcode  

Workflow:
1. Effective input in bash
	* `<C-a>` Get to the first character of cmd line.
	* `<C-j>` Go forward by character.
	* `<C-w>` Delete backward by a word.
	* `<C-e>` Go to the end of cmd line.
	* `<C-u>` Delete the whole thing before cursor. 


Fri Oct 19 08:38:09 CST 2018

TaskList:
- [x] 2H vbird
- [x] 2 leetcode
- [ ] Study search algorithms

Workflow:
1. [D] How to get program's running time.  
	* time command
2. [TBD] How to test the vps's connection.
	1. 主机信息测试：
		* wget -q0- bench.sh | bash 
		* 或者 curl -Lso- bench.sh |bash
	2. 主机与客户端之间的网速：iperf3
		* Server: iperf3 -s
		* Client: iperf3 -c x.x.x.x
		* NOTE: Must open the relative port. 

Sat Oct 20 08:39:39 CST 2018

TaskList:
- [x] 2H vbird
- [ ] 2 leetcode
- [ ] Writing Searching algorithms

Workflow:
1. [TBD] Learn the basic usage of REX and find some exercises to practise to make me master it to a very high level. 
2. [TBD] How to substitute multiple blank to one blank with a simple command or Rex. 
3. [TBD] How to formulate the source code, especially when I copy some code from website? 
4. [TBD] Using Pointer Method OR Struct Method, How to choice? What advantages for both? 



Sun Oct 21 08:37:20 CST 2018
TaskList:
- [x] 2H vbird
- [] 2 leetcode
- [] Sorting algorithms


Workflow:
1. [TBD] Can struct be compared without have the operand == ?
	* No, It can't, We must customize operand == ;
	* [TBD] How to define a function of operand == for struct or class? 
	* Assignement operand = works without customize. 
2. I will code in the morning, and learn linux in the afternoon. Maybe My coding could be more effective this way. Because my brain seems inactive afternoon, and I can hardly focusing on coding. The leetcode is so important that I must put most of my time and energy to it. Come on guys, You can do it. 
3. [TBD] How to disable vim's cursor blink?
	* It's not about vim, It's about terminal's setting, Using the following method in terminal to disable the cursor blink:
		* gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default|tr -d \')/ cursor-blink-mode off




Mon Oct 22 17:13:40 CST 2018

TaskList:
- [] 2 leetcode;

Workflow:
1. [TBD] Practise using c++ sort;



Tue Oct 23 08:38:56 CST 2018
TaskList:
- [x] Three kind of sort including insert, swap, select;
- [x] 2H vbird;
- [ ] 2 leetcode;


workflow:
1. [TBD] Using `forloop` or `while` in cpp? How to make a choice?  
2. Writing in English is important to me, I must practice more and more to improve this skill. I should try to writing with English as much as possible; 
3. [TBD] How to use sentinel in the 0-beginning array? 
4. If I don't have thought of problem solving or stuck with something, The next thing I should do is using gdb to run the program, and find some clue. 
5. 



Wed Oct 24 07:51:09 CST 2018

TaskList:
- [x] Coding yesterday's work and get familiar with it. 
- [ ] 2 leetcode.
- [x] 2H vbird. 

Workflow:
1. Open pdf in terminal `gvfs-open filename`;
2. Which is more scientific? First writing big function or first writing small function? I prefer big function. Big function is helpful to clear the steps of problem solving. First wirting out the bigger function could be more efficient. Small function can be verified by test function. 
3. [TBD] stringstream, Input and output string stream. To be read!
4. [TBD] How to set C++ program's argument in terminal command line? 
5. [TBD] leetcode repository refactor. 


Thu Oct 25 07:00:20 CST 2018

TaskList:
- [x] 3 leetcode | ###
- [x] 2H vbird
- [ ] study textbook of chapter sort

Workflow:
1. [TBD] Make a alias cdls, which means change directory and list files. 
2. [TBD] Make cursor blink option in .bashrc
3. [TBD] Cpp function stringstream or input/output. 
4. [TBD] Array subscript is char
5. 


Fri Oct 26 08:38:41 CST 2018

TaskList:

- [ ] 3 leetcode | ##
- [x] 2H vbird
- [x] study textbook of chapter sort


Workflow:
1. main's arguments argc and argv? 
	* argv is always a type of `char**`, so all the value passed into main is a char string, If we want other kind of value, we should transfer ourselves. 
	* How to pass the int and string to main() from command line? 

```
#include<cstdlib>
#include<iostream>
#include<string>
using namespace std;
int main(int argc, char** argv){

	cout << argc << endl;
	// Using forloop to print
	for(int i = 0; i < argc; ++i){
		cout << "argv[" << i << "]: "; 
		for(int j=0; argv[i][j] != 0; ++j)
			cout << argv[i][j] ;
		cout << endl;
	}

	// Using c <cstdlib>
	int n;
	if(argc > 1){
		n = atoi(argv[1]);
	}

	// Using c++ <string>
	for(int i = 1; i < argc; ++i){
		cout << "argv[" << i << "]: "; 
		cout << stoi(argv[i]);
		cout << endl;
	}
	return 0;
}

```

2. stringstream: | << | .str() |

```
#include<iostream>
#include<sstream>
using namespace std;
int main(){
	stringstream ss;
	string str = "Hello world!";
	ss << str;
	cout << ss.str() << endl;
	// << append string to orignal string
	ss << " Nice to meet you! ";	
	cout << ss.str() << endl;
	// ss.str() can set/get ss
	ss.str("What a wonderful world! ");
	cout << ss.str() << endl;
	return 0;
}

```

3. [TBD] [#148 sortList](https://github.com/haoel/leetcode/blob/master/algorithms/cpp/sortList/sortList.cpp) review

4. [TBD] Adding a level header at each day's beginning. 
5. [TBD] BIT: Binary Indexed Tree. leetcode #315



Sat Oct 27 08:42:05 CST 2018

TaskList:
- [ ] 2 leetcode
- [ ] 2H vbird
- [ ] implement mergeSort
- [x] review heapSort
- [x] review BST

Workflow:
1. 如果程序运行的结果不符合预期，debug的时候顺着结果走一遍，就可以定位到出错的地方；
2. Refactor BST's delete;  
3. sudo apt-get install mupdf
E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)
E: Unable to lock the administration directory (/var/lib/dpkg/), is another process using it?

Sun Oct 28 09:07:25 CST 2018

TaskList:
- [ ] 2 leetcode
- [ ] 2H vbird
- [x] implement mergeSort

Workflow:
1. [D] vim-like pdf viewer: zathura & apvlv. 
2. [D] definition and declaration


Tue Oct 30 08:43:59 CST 2018

TaskList:
- [] 3 leetcode | #
- [] 2H vbird
- [] reading text book

Workflow:
1. command ln cannot be used in the file g++ will genarate, because g++ compile the file and genarate a new file, and then replace the old one, NOT modify the file as I expected. 
2. [TBD] How to modify source and make it effective during debug? 
3. [TBD] Is it right tui will not mess up when using printf to output a line return? ---> It will still turns it will mess up. Can I try the version of Grew's using in the youtube?  
4. Linked-list's bounder would better to using nullptr, but one's next node, because If we use pointer to operate content, one's next will be changed, and we still think the node unchanged is bounder. Thus the bug will come. 
5. [D] leetcode daily coding table. 
6. [TBD] grep, sed, awk should practice for more. 
7. [D] Refactor the directory. 
8. [TBD] How to quickly make gdb run a circle of program? 


Wed Oct 31 08:35:07 CST 2018

TaskList:
- [x] 3 leetcode	|####
- [ ] 2H vbird		|Hn

Workflow:
1. Deep copy and Swallow copy:
	* Deep copy is copy the pointer's value, and have a different address, so we can change the value but not infuent other pointer's value.	* Swallow copy is copy the value's address, If we change the value, other pointer's value also be changed, it can make sure the value is alway updated. 
2. date --date=1225 [+FORMAT]: output 25th Oct as the format of [+FORMAT];



