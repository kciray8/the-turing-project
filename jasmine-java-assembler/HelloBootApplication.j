.bytecode 61.0
.class public boot/HelloBootApplication
.super java/lang/Object

.annotation visible Lorg/springframework/boot/autoconfigure/SpringBootApplication;
    ; value = "ExampleValue"
.end annotation


.method public <init>()V
    .limit stack 10
    .limit locals 10
    aload_0
    invokespecial java/lang/Object/<init>()V
    return
.end method

.method public static main([Ljava.lang.String;)V
    .limit locals 10
    .limit stack 10

    ; SpringApplication springApplication = new SpringApplication(HelloBootApplication.class);
    ; springApplication.setWebApplicationType(WebApplicationType.REACTIVE);
    ; springApplication.run(args);
    new org/springframework/boot/SpringApplication
    astore_1
    aload_1

    iconst_1
    anewarray java/lang/Class
    astore_2
    aload_2
    iconst_0
    ldc boot/HelloBootApplication
    aastore

    aload_2
    invokespecial org/springframework/boot/SpringApplication/<init>([Ljava/lang/Class;)V
    getstatic org/springframework/boot/WebApplicationType/REACTIVE Lorg/springframework/boot/WebApplicationType;
    aload_1
    swap
    invokevirtual org/springframework/boot/SpringApplication.setWebApplicationType(Lorg/springframework/boot/WebApplicationType;)V
    aload_1
    aload_0
    invokevirtual org/springframework/boot/SpringApplication.run([Ljava.lang.String;)Lorg/springframework/context/ConfigurableApplicationContext;

    ; ldc boot/HelloBootApplication
    ; aload_0
    ; invokestatic org/springframework/boot/SpringApplication.run(Ljava/lang/Class;[Ljava.lang.String;)Lorg/springframework/context/ConfigurableApplicationContext;

return
.end method

