
.class public HeapSortCheck
.super java/lang/Object

.method private static unsortedArray()[I
    bipush 6
    .limit locals 10
    .limit stack 10
    newarray int
    astore_1

    aload_1
    bipush 0
    bipush 5
    iastore

    aload_1
    bipush 1
    bipush 2
    iastore

    aload_1
    bipush 2
    bipush -5
    iastore

    aload_1
    bipush 3
    bipush 4
    iastore

    aload_1
    bipush 4
    bipush 20
    iastore

    aload_1
    bipush 5
    bipush 1
    iastore

    aload_1
    areturn
.end method

.method public static main([Ljava/lang/String;)V
    .limit locals 10
    .limit stack 10
    ; 1 - unsorted array
    ; 2 - i
    ; 3 - MinHeapImpl
    ; 4 - resulting array

    invokestatic HeapSortCheck.unsortedArray()[I
    astore_1

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload_1
    invokestatic java/util/Arrays.toString([I)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

    new MinHeapImpl
    dup
    invokespecial MinHeapImpl/<init>()V
    astore 3

    ; i := 0
    iconst_0
    istore 2

    FOR_LOOP:
    iload 2
    aload_1
    arraylength
    if_icmpge FOR_END

    aload 3
    aload_1
    iload 2
    iaload
    invokestatic java/lang/Integer.valueOf(I)Ljava/lang/Integer;
    invokeinterface MinHeap.insert(Ljava/lang/Object;)V 2

    iinc 2 1
    goto FOR_LOOP
    FOR_END:

    aload_3
    invokestatic HeapSortCheck.extractAll(LMinHeap;)[Ljava/lang/Object;
    astore 4

    getstatic java/lang/System.out Ljava/io/PrintStream;
    invokevirtual java/io/PrintStream.println()V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload 4
    invokestatic java/util/Arrays.toString([Ljava/lang/Object;)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    return
.end method

.method static extractAll(LMinHeap;)[Ljava/lang/Object;
    .limit locals 10
    .limit stack 10
    ;1 - resulting array
    ;2 - i
    ;3 - temp element
    ;4 - heap initial size

    aload_0
    invokeinterface MinHeap.size()I 1

    anewarray java/lang/Object
    astore_1

    iconst_0
    istore_2

    aload_0
    invokeinterface MinHeap.size()I 1
    istore 4

    NEXT_ELEMENT:
    iload_2
    iload 4
    if_icmpeq ALL_ELEMENTS_DONE

    aload_0
    invokeinterface MinHeap.extract()Ljava/lang/Object; 1
    astore 3

    aload_1
    iload_2
    aload_3
    aastore

    iinc 2 1
    goto NEXT_ELEMENT
    ALL_ELEMENTS_DONE:

    aload_1
    areturn
.end method


