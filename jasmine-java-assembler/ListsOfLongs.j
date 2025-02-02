.class public ListsOfLongs
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 15
.limit locals 8
; 1 = LArrayList;
; 2 = iterator
; 3 = object I iterate

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "34343"
invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

new java/util/ArrayList
dup
invokespecial java/util/ArrayList.<init>()V
astore 1

aload 1
new java/lang/Long
dup
ldc "1"
invokespecial java/lang/Long.<init>(Ljava/lang/String;)V
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 1
new java/lang/Long
dup
ldc "2"
invokespecial java/lang/Long.<init>(Ljava/lang/String;)V
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2


aload 1
new java/lang/Long
dup
ldc "3"
invokespecial java/lang/Long.<init>(Ljava/lang/String;)V
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 1
new java/lang/Long
dup
ldc "8"
invokespecial java/lang/Long.<init>(Ljava/lang/String;)V
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 1
new java/lang/Long
dup
ldc "9"
invokespecial java/lang/Long.<init>(Ljava/lang/String;)V
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2

aload 1
aconst_null
invokeinterface java/util/List.add(Ljava/lang/Object;)Z 2


aload 1
invokevirtual java/util/ArrayList.iterator()Ljava/util.Iterator;
astore 2

foreach:

aload_2 ; iterator
invokeinterface java/util/Iterator.hasNext()Z 1
ifeq endall

aload_2 ; iterator
invokeinterface java/util/Iterator.next()Ljava/lang/Object; 1
astore_3
aload_3
getstatic java/lang/System.out Ljava/io/PrintStream;
swap
invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

aload_3 ;object
checkcast java/lang/Long
dup
ifnull clear1
invokevirtual java/lang/Long.intValue()I
iconst_2
irem
ifne ggg

getstatic java/lang/System.out Ljava/io/PrintStream;
ldc "even"
invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

ggg:

goto foreach
clear1:
pop

endall:

return
.end method