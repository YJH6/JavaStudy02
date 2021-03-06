Java命名规范

> 学习于阿里巴巴Java开发手册

## 编程规约

### 命名风格

#### 强制

* 命名不能以下划线或美元符号开始或结束

  （美元符号是什么鬼，不过下划线我以前倒是用过）

* 命名用英文

  （不知为何，感觉命名出现拼音就很弱智）

* 类名全单词首字母大写

  方法名、参数名、成员变量、局部变量用小驼峰

* 常量命名全部大写，单词用下划线隔开，且语义完整

  （这就很烦，大写的单词还要再想成小写的才懂意思）

* 抽象类名用Abstract/Base开头

  异常类名用Exception结尾

  测试类名以要测试的类的名称开头，以Test结尾

  （抽象类？异常类？）

* 数组的类型与中括号紧挨

  （如String[] args）

* POJO类中布尔类型的变量不要加is前缀

  （POJO：简单的java程序？似乎boolean后面的变量确实加了is前缀）

* 包名统一小写，单数，.之间只有一个自然语义的单词

  （我之前用的libs就算错的了，要用lib）

#### 推荐

* 命名的时候，尽量表达完整

* 将设计模式体现在名字中

* 接口类（?）中的方法和属性不加任何修饰符号（包括public），并加上有效的Javadoc注释（?）

  如若要在接口里定义变量，肯定是与接口方法相关，并且是整个应用的基础常量（?）

* 接口和实现类的命名有两套规则：

   1）[强制]对于 Service 和 DAO 类，基于 SOA 的理念，暴露出来的服务一定是接口，内部 的实现类用 Impl 的后缀与接口区别。 正例：CacheServiceImpl 实现 CacheService 接口

   2）[推荐]如果是形容能力的接口名称，取对应的形容词为接口名（通常是–able 的形式）

  正例：AbstractTranslator 实现 Translatable 接口

#### 参考

* 枚举类名建议带上 Enum 后缀，枚举成员名称需要全大写，单词间用下划线隔开

* 各层命名规约：

  A) Service/DAO 层方法命名规约

  ​	1）获取单个对象的方法用 get 做前缀

  ​	2）获取多个对象的方法用 list 做前缀，复数形式listObjects

  ​	3） 获取统计值的方法用 count 做前缀

  ​	4） 插入的方法用 save/insert 做前缀

  ​	5） 删除的方法用 remove/delete 做前缀

  ​	6） 修改的方法用 update 做前缀

  B) 领域模型命名规约

  ​	1） 数据对象：xxxDO，xxx 即为数据表名

  ​	2） 数据传输对象：xxxDTO，xxx 为业务领域相关的名称

  ​	3） 展示对象：xxxVO，xxx 一般为网页名称

  ​	4） POJO 是 DO/DTO/BO/VO 的统称，禁止命名成 xxxPOJO。

## 常量定义

/*

未完待续

*/