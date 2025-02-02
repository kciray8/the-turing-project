.class public Lists
.super java/lang/Object

.method public static main([Ljava.lang.String;)V
.limit stack 10
.limit locals 10
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "lol"
invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4

aload 4
ldc "345"
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 4
aload 0
iconst_1
aaload
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 4
iconst_0
ldc "6"
invokeinterface java/util/List.add(ILjava/lang/Object;)V 3

getstatic java/lang/System/out Ljava/io/PrintStream;
aload 4
invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V


return
.end method