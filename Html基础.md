webStorm中的一些快捷键

1. 快速复制光标所在行的内容：ctrl+D
2. 快速删除光标坐在行的内容：ctrl+X
3. 快速新建.html文件 ctrl+shift+insert
4. 让标签包裹一段内容：ctrl+alt+T,之后输入对应的标签名
5. 行注释快捷键：ctrl+/
6. 块注释：ctrl+shift+/
7. 自动补全代码:ctrl+shift+space
8. 快速移动选中的代码：Ctrl+shift+↑（往上移动）  Ctrl+shift+↓（往下移动）
9. 快速展开合并某一个标签的代码块：Ctrl + -（减号）（合并）Ctrl + +（加号）（展开）
10. 快速展开合并选中的代码块：Ctrl + shift + -（减号）（合并）Ctrl + shift + +（加号）（展开）
11. 快速新起一行：shift + enter（回车键）

# 标签

### img标签

+ img标签：顾名思义，img标签是Image的缩写，作用是在网页中插入图片，其有几个属性需要了解

| 属性           | 作用                                          |
| -------------- | --------------------------------------------- |
| src(srcouse)   | 告诉浏览器图片的路径，分绝对路径和相对路径    |
| alt(alternate) | 当找不到图片的时候，才会显示alt指定的文本内容 |
| title          | 当鼠标悬停在图片上时，会显示其文本内容        |
| width          | 设置图片的显示宽度                            |
| height         | 设置图片的显示高度                            |

+ 注：当想让图片等比例拉伸时，可以只设置width/height一个属性即可
+ 相对路径和绝对路径要注意区别，下文会说，日后使用绝大部分采用相对路径的方式存储图片

### br标签：

​	Br标签的作用是让内容换行，使用多少个br标签，就换几行

+ 格式：<br/>
+ 企业开发中一个段落结束后需要重新起一个段落，所用很少使用br标签

### a标签

+ 格式：<a href="[地址]">
+ 作用，从一个页面跳转到另一个页面
+ 注意：<a>标签之间必须要加上文字或者图片，或者主页上找不到这个标签

其有三个属性：

| 属性名 |                             作用                             |
| ------ | :----------------------------------------------------------: |
| href   |                      指定跳转的目标地址                      |
| target | 其有两个属性值，_ _blank是新开页面打开，_ _self是在原有页面上打开 |
| title  |                  鼠标悬停时，显示的介绍文本                  |

```html
<a href="https://www.baidu.com" target=_self/_blank title="这是跳转的网页地址">
```

对于数量很多的网页，如果我们都一个一个手动去编写它们的显示方式非常浪费时间，对这种情况我们有一个解决方案:

```html
<head>
   	<meta charse="UTF-8">
	<title></title>
   	<base target="_blank">
</head>
```

   其中<base>标签是用来统一当前指定网页的显示方式，其中注意几点：

   + base标签必须被<head>标签所包括
   + 当<a>标签和<base>标签了都存在target属性打开方式时，这时以<a>标签里的页面显示方式为准 

## 绝对路径和相对路径

+ 相对路径是从.html文件所在位置开始查找，分为同级、上级和下级

### 查找方式

1. 同级

   * 直接编写，例如“photo.png”
   * 加上./编写，例如“./photo.png”

2. 下级

   * 直接编写，例如“image/photo.png”
   * 加上./编写，例如“./image/photo.png”

3. 上级

   + ../代表着上级目录，若图片所在的目录是.html文件所在的上两个目录，

   那么就需要在前面添加两个**../../**

   ****

   *** 对于绝对路径只需了解即可，无论在开发还是在书写代码过程中，尽量不使用绝对路径。绝对路径是从指定的盘符中需找图片，假如一张图片在你的盘符是D盘，别人拷贝你的文件放在了它的E盘中。编写的HTML代码路径不改变的话是找不到图片的。***

   ****
## 假链接

```html
   <a href="#">点击</a>   <!--点击之后直接回到顶部-->
   <a href="javascript:">点击</a>  <!--点击之后不会返回顶部-->  
```

## 列表

### 无序列表   

```html
<ul>
<li></li>
<li></li>
<li></li>
</ul>      <!--生成这样的模式时，可以写成 ul>li*3 ,之后按下tab健，便可生成左边的 			 样式，非常的省时省力-->
```

​	ul可选的属性：

| 属性名  |         值         |            描述             |
| ------- | :----------------: | :-------------------------: |
| compact |      compact       | 不赞成使用，在CSS中设置样式 |
| type    | disc/square/circle | 不赞成使用，在CSS中设置样式 |



+ ul 标签和 li 标签是组合使用  ，li标签中可以有ul标签和其他标签

​	li可选的属性：	

### 有序列表

| 属性  |              值              |               描述               |
| ----- | :--------------------------: | :------------------------------: |
| type  | A/a/I/i/1/disc/square/circle |   对顶使用的符号（不赞成使用）   |
| value |            number            | 规定列表项目的数字（不赞成使用） |

```html
<ol>
<li></li>
<li></li>
<li></li>
</ol>
```

ol中可选属性：

| 属性     | 值        |                      描述                      |
| -------- | --------- | :--------------------------------------------: |
| compact  | compact   | 规定列表呈现的效果比正常情况小巧（不赞成使用） |
| reversed | reversed  |               规定列表顺序为降序               |
| start    | number    |              规定有序列表的起始值              |
| type     | 1/A/a/I/i |            规定列表中使用的标记类型            |

### 定义列表

```html
<dl>
	<dt>
		<dd></dd>
         <dd></dd>
	</dt>
</dl>
```

+ dt是description tiltle的缩写，含义是用来定义列表
+ dd是description description,含义是对定义的列表进行相应的解释

## 表格标签

对数据进行表格化处理，让数据更加清晰，用**<table></table>**来表示表格，通常用**<tr></tr>**表示行，**<th></th>**定义表头，**<td></td>**定义单元格、其有几个属性需要了解

|        属性         |                       值                       |                        描述                         |
| :-----------------: | :--------------------------------------------: | :-------------------------------------------------: |
|       border        |                     pixels                     |                 规定表格的边框宽度                  |
| cellpadding(内边距) |                    pixels%                     |         规定单元格的边框与其内容之间的空白          |
| cellspacing(外边距) |                    pixels%                     |                规定单元格之间的空白                 |
|        frame        | void/above/below/hsides/rhs/vsides/box/border/ |             规定外边侧哪个部分是可见的              |
|        rules        |           none/groups/rows/cols/all            |            规定内侧边框的哪部分是可见的             |
|       bgcolor       |          colornane/rgb(x,x,x)/#xxxxx           | 规定了表格的背景颜色（不赞成使用，在CSS样式表设置） |

+ 表格的border属性默认值是0，因此看不到边框
+ 对于定义表头的标签th，默认是黑色加粗的，

下面是对frame属性的一些使用

```html
<html>
<body>
<p><b>注释：</b>frame 属性无法在 Internet Explorer 中正确地显示。</p>
<p>Table with frame="box":</p>
<table frame="box">
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>

<p>Table with frame="above":</p>
<table frame="above">
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>

<p>Table with frame="below":</p>
<table frame="below">
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>

<p>Table with frame="hsides":</p>
<table frame="hsides">
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>

<p>Table with frame="vsides":</p>
<table frame="vsides">
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>
</body>
</html>
```

### 表格合并

1. 水平方向

   1. 可以在<td>标签上添加属性colspan属性，

      1. ```css
         <td colspan="3"></td> 
         /*将一个单元格当成3个单元格来使用*/
         ```

   2. 单元格合并只能向后合并

2. 垂直方向

   1. 可以在<td>标签上添加rowspan属性，把某个单元格当作多个多个单元格来看待
   2. 单元格合并只能向后合并



## 表单标签

**标签就是元素，元素就是标签，**

### input标签 

1. input标签有很多type属性，下面来介绍一下

   ``` css
   <input type ="type"> 
   /*输入的内容会显示出来*/
   <input type = "password">
   /*输入的内容不会显示，以暗文的形式*/
   <input type = "text" value = "12345">
   /*赋予了默认值12345*/
   <input type = "radio">
   /*这个代码表示这是一个单选框*/
   ```

2. 对于单选框radio，需要注意的是：

   1. 默认情况下单选框不会互斥，意思是说可以选择多个。如果想让单选框互斥，则需要给input标签添加一个**name**属性，并且所有的name属性的值要一致

      ``` css
      <input type = "radio" name = "xxx">
      /* xxx的内容是任意的，这个功能是为了让单选框互斥*/
      
      ```

   2. 若想让单选框默认选择一个时，则需要给input标签添加一个**checked**属性

      ```css
      <input type = "radio" name = "xx" checked ="checked">男
      /*默认是选择男这个单选框选项*/
      ```

      对于有的属性名词和属性值一样，我们可以省略值，但是在开发中最好不要省略

3. 对于多选框**checkbox**

   ``` css
   <input type = "checkbox">篮球
   <input type = "checkbox">足球
   <input type = "checkbox" checked = "checked">排球 /*同样我们可以添加checked属性来选择默认值*/
   /*这样我们可以同时选择这三个选项*/
   ```

4. 对于按钮属性

   1. 普通按钮**butto**

      ```html
      <input type = "button" value = "我是一个按钮">
      ```

   2. 图片按钮**image**

      ```html
      <input type = "image" src = "……">
      ```

   3. 重置按钮**reset**

      ```css
      <input type =　"reset">
      /*默认是重置*/
      <input type =　"reset" value = "清空">
      /*也可以自己定义value的值来设置*/
      ```

   4. 提交按钮**submit**

      ```css
      <form action = "http://www.baidu.com">
          /*action属性的功能是告诉我们将数据提交到哪个服务器上，这里我写的是提交到www.baidu.com这个服务器上*/
      
      <input type = "text" name = "我是学生">
          /*我们想提交哪些数据，只需要在input元素里添加name属性，这样就会将这个按钮里的内容提交到你刚才所提交到的服务器上，而没有添加name属性的其他按钮里的内容则不会提交到服务器上去。*/
      ```

### label标签

​	对于有的文字和文本框，当我们点击文字的时候，对应或者相关联对应的文本框就会聚焦，我们使用label标签就会很好的解决这个问题，有两种方式

1. 直接用label标签将文本框包围起来 

   ```html
   <form action = "">
       <lable>
           账号：<input type = "text">
       </lable>
   	<label>密码：
           <input type = "password">
       </label>
   </form>
   ```

   会显示如下格式；

![image-20210423232853268](C:\Users\samsung\AppData\Roaming\Typora\typora-user-images\image-20210423232853268.png)

​	但是这种方式也很有局限性，它只能类似于那种一对一的聚焦，不能够很好的突破界限，假如我们点击账号的时候，我们希望聚焦的是我们的密码的文本框，这时候有什么办法呢，以下方式：

2. 

   ```html
   <form action = "">
       <lable for = "id名">账号：</lable><input type = "text" id = "id名">
       <label for = "id名">密码：</label> <input type = "password" id = "id名">
   </form>
   ```

   用过这种方式我们可以突破这种局限性，点击文字的时候可以聚焦任意的文本框

   	1. 首先用一堆label标签将文字包裹
    	2. 其次在input标签内添加一个id属性，并赋一个id名
    	3. 最后通过label标签中的for属性，其属性值是我们定义的id属性的属性值

### select标签

用于定义下拉标签

``` css
<select>
	<option>北京</option>
    <option>上海</option>
    <option selected =  "selected">深圳</option>
    /*给option标签添加一个selected属性来指定默认值*/
</select>
```

### textarea标签

定义一个多行输入框

``` css
默认格式：
<textarea>
	
</textarea>
/*默认情况下输入框可以无限换行，且默认情况下输入框有自己的高度和宽度*/

<hr>
<textarea cols = "2" rows = "3">
 /*这里我们指定输入框是两列三行，但还可以无限延伸下去*/

```



## 新增标签

### video标签

``` css
默认格式：
<video src = ""  autoplay = "autoplay"></video>
/*在网页中不会默认播放视频，需要添加autoplay属性才能默认播放*/

<video src = "" controls = "controls" ></video>
 /*给网页中的视频添加控制条*/

<video src = "" poster = "图片地址" ></video>
 /*给网页上的视频添加一个图片封面*/

<video src = "" autoplay = "autoplay" loop = "loop"></video>
/*loop属性可以设置视频是否循环播放，一般用于广告视频*/

<video src = "" preload = ""></video>
/*预先加载视频，和autoplay属性冲突，二者只能选其一*/

<video src = "" muted = "muted" ></video>
/*设置视频静音*/

第二种格式：
<video>
    <source src = "" type = "video/webm"></source>/*告诉浏览器是webm格式*/

    <source src = "" type = "video/ogg"></source>/*告诉浏览器是ogg视频格式*/
 	<source src = ""></source>
</video>
/*这样做的原因是很多浏览器厂商的视频格式各异，有的视频格式可以在IE上观看，但不能在chrome浏览器上查看。为了解决这种问题，w3c联盟制定了这种方法，以便更好的兼容视频*/
```

### audio标签

1. audio标签的使用和video标签的使用是一样的，能在video标签中使用的属性，在audio标签里也可以使用，并且两者的格式也是一样的，功能也都一样，就不一一详细叙述
2. 无论是audiio标签和video标签，向网页中插入音视频的方法很多种，这里我们先一步步学习，在w3cschool上有详细的教程指导

### 详情和概要标签

格式：

``` html
<details>
	<summary></summary>
</details>
```

利用summary标签来概述信息，利用details标签来详细描述信息

	1. 利用有限的空间来展开内容的详细信息

### marquee标签

	1. 在官方文档中查询不到这个标签，但是各大浏览器都支持这个标签
 	2. 可以滚动文字，也可以滚动图片

格式：

```html
<marquee>内容</marquee>
```

指定滚动方向: direction属性

```css
<marquee>这是我的网页</marquee>
/*默认情况下是从右往左滚动*/

<marquee direction = "right">这是我的网页</marquee>
/*从左往右滚动*/

<marquee direction = "up">这是我的网页</marquee>
/*从下往上滚动*/

<marquee direction = "down">这是我的网页</marquee>
/*从上往下滚动*/
```

指定滚动速度：scrollamount属性

``` html
<marquee scrollamount = ""></marquee>
```

指定滚动次数：loop属性

```html
<marquee loop = ""></marquee>
```

 	1. 默认是-1，也就是无限滚动

指定滚动类型：behavior属性

```css
<marquee behavior = "slide"></marquee>
/*滚动到边界后就停止了*/

<marquee behavior = "alternate"></marquee>
/*滚动到边界后就弹回*/
```

+ 在这里提一下HTML中被废弃的标签。因为当前HTML中的标签只有一个作用,就是来添加语义.而早期的HTML中有一些标签只是用来修改样式，像<b>、<u>、<i>等标签只能来修改文字样式，就被淘汰了。
+ 在很多的企业开发中，这样标签不到万不得已不要使用。































































































































































