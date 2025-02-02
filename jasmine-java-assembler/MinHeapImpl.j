.class public MinHeapImpl
.super java/lang/Object
.implements MinHeap

.field size I
.field array [Ljava/lang/Object;

.method public <init>()V
    .limit locals 10
    .limit stack 10
    aload_0
    invokespecial java/lang/Object/<init>()V

    aload_0
    bipush 10
    anewarray java/lang/Object

    putfield MinHeapImpl.array [Ljava/lang/Object;
    return
.end method

.method public size()I
    aload_0
    getfield MinHeapImpl.size I
    ireturn
.end method

.method public insert(Ljava/lang/Object;)V
    .limit locals 10
    .limit stack 10

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    aload_0
    getfield MinHeapImpl.size I
    aload_1
    aastore

    aload_0
    aload_0
    getfield MinHeapImpl.size I
    iconst_1
    iadd
    putfield MinHeapImpl.size I

    aload_0
    aload_0
    getfield MinHeapImpl.size I
    iconst_1
    isub
    invokevirtual MinHeapImpl.bubbleUp(I)V

    aload_0
    invokevirtual MinHeapImpl.printInternalHeapRepresentation()V

    return
.end method

.method private printInternalHeapRepresentation()V
    .limit locals 10
    .limit stack 10

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "internal heap representation: "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    invokestatic java/util/Arrays.toString([Ljava/lang/Object;)Ljava/lang/String;
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    return
.end method

.method private bubbleUp(I)V
    .limit locals 10
    .limit stack 10
    ; 1 - index of element
    ; 2 - element to bubble (Object)
    ; 3 - parent index
    ; 4 - parent element

    iload_1
    ifeq ROOT

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    iload_1
    aaload
    astore 2

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "element to bubble: "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload 2
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    iload_1
    iconst_1
    isub

    iconst_2
    idiv
    istore_3

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    iload_3
    aaload
    astore 4

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "parent element: "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload 4
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    aload 2
    aload 4
    invokeinterface java/lang/Comparable.compareTo(Ljava/lang/Object;)I 2
    ifge NO_NEED_TO_SWAP
    aload_0
    iload_1
    iload_3
    invokevirtual MinHeapImpl.swapElements(II)V

    aload_0
    iload_3
    invokevirtual MinHeapImpl.bubbleUp(I)V

    NO_NEED_TO_SWAP:
    ROOT:

    return
.end method

.method private swapElements(II)V
    .limit locals 10
    .limit stack 10
    ;3 - array

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    astore 3

    aload 3
    iload_1
    aaload

    aload 3
    iload_2
    aaload

    aload 3
    swap
    iload_1
    swap
    aastore

    aload 3
    swap
    iload_2
    swap
    aastore

    return
.end method

.method public extract()Ljava/lang/Object;
    .limit locals 10
    .limit stack 10
    ;0 - this
    ;1 - element
    ;2 - array of objects

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    astore_2

    aload_2
    iconst_0
    aaload
    astore 1

    aload_0
    getfield MinHeapImpl.size I
    iconst_1
    isub
    aload_0
    swap
    putfield MinHeapImpl.size I

    aload_0
    iconst_0
    invokevirtual MinHeapImpl.fillTheHole(I)V

    aload 1
    areturn
.end method

.method private fillTheHole(I)V
    .limit locals 10
    .limit stack 10
    ; 0 - this
    ; 1 - index of the hole
    ; 2 - index of left child
    ; 3 - index of right child
    ; 4 - left child
    ; 5 - right child
    ; 6 - ref to array
    ; 7 - index of smallest child
    ; 8 - smallest child

    iload_1
    aload_0
    getfield MinHeapImpl.size I
    if_icmplt NO_SIZE_OVERBOUND
    return
    NO_SIZE_OVERBOUND:

    aload_0
    invokevirtual MinHeapImpl.printInternalHeapRepresentation()V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "Will fill the hole at "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    iload 1
    invokevirtual java/io/PrintStream.println(I)V

    aload_0
    getfield MinHeapImpl.array [Ljava/lang/Object;
    astore 6

    iload_1
    iconst_2
    imul
    iconst_1
    iadd
    istore 2

    iload_2
    iconst_1
    iadd
    istore 3

    aload 6
    iload 2
    aaload
    astore 4

    aload 6
    iload 3
    aaload
    astore 5

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "left child: "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload 4
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    ldc "right child: "
    invokevirtual java/io/PrintStream.print(Ljava/lang/Object;)V

    getstatic java/lang/System.out Ljava/io/PrintStream;
    aload 5
    invokevirtual java/io/PrintStream.println(Ljava/lang/Object;)V

    aload 4
    ifnonnull AT_LEAST_ONE_NOT_NULL
    aload 5
    ifnonnull AT_LEAST_ONE_NOT_NULL
    return

    AT_LEAST_ONE_NOT_NULL:

    aload 4
    ifnull lEFT_GT_RIGHT
    aload 5
    ifnull RIGHT_GT_lEFT

    aload 4
    aload 5
    invokeinterface java/lang/Comparable.compareTo(Ljava/lang/Object;)I 2
    ifge lEFT_GT_RIGHT
    ; assume left is smallest
    RIGHT_GT_lEFT:
    iload 2
    istore 7
    goto RIGHT_GT_lEFT_FINISH

    lEFT_GT_RIGHT:
    iload 3
    istore 7
    RIGHT_GT_lEFT_FINISH:

    iload 7
    aload_0
    getfield MinHeapImpl.size I
    ifle OUT_OF_BOUND

    aload 6
    iload 7
    aaload
    astore 8

    aload 6
    iload 1
    aload 8
    aastore

    aload 6
    iload 7
    aconst_null
    aastore

    aload_0
    iload 7
    invokevirtual MinHeapImpl.fillTheHole(I)V

    OUT_OF_BOUND:
    BOTH_CHILDREN_NULL:
    return
.end method