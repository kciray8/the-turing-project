.bytecode 61.0
.class public boot/Controller
.super java/lang/Object

.annotation visible Lorg/springframework/web/bind/annotation/RestController;
.end annotation

.method public <init>()V
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public test(II)I
    .limit stack 10
    .limit locals 10

    .annotation visible Lorg/springframework/web/bind/annotation/GetMapping;
        value [s = "sum"
    .end annotation

    .annotation visibleparam 1 Lorg/springframework/web/bind/annotation/RequestParam;
       value s = "p"
    .end annotation

    .annotation visibleparam 2 Lorg/springframework/web/bind/annotation/RequestParam;
       value s = "q"
    .end annotation

    iload_1
    iload_2
    iadd
    ireturn
.end method

.method public testReactive(I)Lreactor/core/publisher/Flux;
    .limit stack 10
    .limit locals 10

    .annotation visible Lorg/springframework/web/bind/annotation/GetMapping;
        value [s = "reactive"
    .end annotation

    .annotation visibleparam 1 Lorg/springframework/web/bind/annotation/RequestParam;
        value s = "n"
    .end annotation

    iconst_0
    iload_1
    invokestatic reactor/core/publisher/Flux.range(II)Lreactor/core/publisher/Flux;
    areturn
.end method

