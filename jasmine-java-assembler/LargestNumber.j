.source MyClass.j
.class LargestNumber
.super java/lang/Object

.method public static main([Ljava.lang.String;)V
    .limit stack 10
    .limit locals 10
    ;0 - args

    new LargestNumber
    dup
    invokespecial LargestNumber/<init>()V

    return
.end method

.method <init>()V
    .limit stack 10
    .limit locals 10
    ;1 - array of strings
    ;2 - iterator i
    ;3 - iterator j
    ;4 - arraylen
    ;5 - max
    ;6 - temp

    aload_0
    invokespecial java/lang/Object/<init>()V

    aload_0
    invokevirtual LargestNumber.scan()[Ljava/lang/String;
    astore_1

    getstatic java/lang/System/out Ljava/io/PrintStream;
    aload_1
    invokestatic java/util/Arrays.deepToString([Ljava.lang.Object;)Ljava.lang.String;
    invokevirtual java/io/PrintStream/println(Ljava/lang/Object;)V

    aload_1
    arraylength
    istore 4

    getstatic java.lang.Integer.MIN_VALUE I
    istore 5

    iconst_0
    istore_2 ; i := 0

    fori:
    iload_2
    iload 4
    if_icmpge fori_end

    aload_1
    iload_2
    aaload

    invokestatic java/lang/Integer/parseInt(Ljava.lang.String;)I
    dup
    istore 6
    iload 5
    if_icmplt skip_this_int

    iload 6
    istore 5

    skip_this_int:

    iinc 2 1
    goto fori
    fori_end:

    getstatic java/lang/System.out  Ljava/io/PrintStream;
    ldc "max = "
    iload 5
    invokestatic java/lang/Integer.valueOf(I)Ljava/lang/Integer;
    invokevirtual java/lang/Object.toString()Ljava.lang.String;
    invokevirtual java/lang/String.concat(Ljava.lang.String;)Ljava.lang.String;
    invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

    return
.end method

.method scan()[Ljava/lang/String;
    .limit stack 10
    .limit locals 10
    ;1 - scanner
    ;2 - array of strings
    ;3 - array of numbers

    input:
    new java/util/Scanner
    dup
    getstatic java/lang/System.in Ljava/io/InputStream;
    invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
    astore_1

    aload_1
    invokevirtual java/util/Scanner.nextLine()Ljava/lang/String;
    ldc " "
    invokevirtual java/lang/String.split(Ljava/lang/String;)[Ljava/lang/String;
    astore_2

    getstatic java/lang/System.out  Ljava/io/PrintStream;
    ldc "len = "
    aload_2
    arraylength
    invokestatic java/lang/Integer.valueOf(I)Ljava/lang/Integer;
    invokevirtual java/lang/Object.toString()Ljava.lang.String;

    invokevirtual java/lang/String.concat(Ljava.lang.String;)Ljava.lang.String;
    invokevirtual java/io/PrintStream.println(Ljava.lang.String;)V

    aload_2
    areturn
.end method