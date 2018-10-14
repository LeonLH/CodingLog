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

