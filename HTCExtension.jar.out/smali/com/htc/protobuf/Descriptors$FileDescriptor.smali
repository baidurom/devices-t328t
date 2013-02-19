.class public final Lcom/htc/protobuf/Descriptors$FileDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    }
.end annotation


# instance fields
.field private final dependencies:[Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

.field private final messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$DescriptorPool;)V
    .locals 8
    .parameter "proto"
    .parameter "dependencies"
    .parameter "pool"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 386
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    .line 388
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 389
    invoke-virtual {p2}, [Lcom/htc/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 391
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$FileDescriptor;)V

    .line 393
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 394
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 395
    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/protobuf/Descriptors$Descriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    .line 400
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 401
    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    .line 405
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    new-instance v1, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4, v3}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v1, v0, v4

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 409
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 410
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 411
    iget-object v7, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZLcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v7, v4

    .line 410
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 414
    :cond_3
    return-void
.end method

.method static synthetic access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    return-object v0
.end method

.method public static buildFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 6
    .parameter "proto"
    .parameter "dependencies"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 272
    new-instance v1, Lcom/htc/protobuf/Descriptors$DescriptorPool;

    invoke-direct {v1, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/htc/protobuf/Descriptors$FileDescriptor;)V

    .line 273
    .local v1, pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    new-instance v2, Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v2, p0, p1, v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$DescriptorPool;)V

    .line 276
    .local v2, result:Lcom/htc/protobuf/Descriptors$FileDescriptor;
    array-length v3, p1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 277
    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v4, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v3, v2, v4, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    .line 281
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 282
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v4, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v3, v2, v4, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v3

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {v2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->crossLink()V

    .line 290
    return-object v2
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    .local v0, arr$:[Lcom/htc/protobuf/Descriptors$Descriptor;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 419
    .local v4, messageType:Lcom/htc/protobuf/Descriptors$Descriptor;
    #calls: Lcom/htc/protobuf/Descriptors$Descriptor;->crossLink()V
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->access$500(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v4           #messageType:Lcom/htc/protobuf/Descriptors$Descriptor;
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    .local v0, arr$:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 423
    .local v5, service:Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
    #calls: Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->crossLink()V
    invoke-static {v5}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->access$600(Lcom/htc/protobuf/Descriptors$ServiceDescriptor;)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    .end local v5           #service:Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .local v0, arr$:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 427
    .local v1, extension:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->crossLink()V
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 429
    .end local v1           #extension:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return-void
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 13
    .parameter "descriptorDataParts"
    .parameter "dependencies"
    .parameter "descriptorAssigner"

    .prologue
    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v2, descriptorData:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 315
    .local v6, part:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    .end local v6           #part:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    .local v1, descriptorBytes:[B
    :try_start_1
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_1
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 336
    .local v7, proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_start_2
    invoke-static {v7, p1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    :try_end_2
    .catch Lcom/htc/protobuf/Descriptors$DescriptorValidationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 342
    .local v9, result:Lcom/htc/protobuf/Descriptors$FileDescriptor;
    invoke-interface {p2, v9}, Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/ExtensionRegistry;

    move-result-object v8

    .line 345
    .local v8, registry:Lcom/htc/protobuf/ExtensionRegistry;
    if-eqz v8, :cond_1

    .line 348
    :try_start_3
    invoke-static {v1, v8}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_3
    .catch Lcom/htc/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 355
    invoke-direct {v9, v7}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 357
    :cond_1
    return-void

    .line 321
    .end local v1           #descriptorBytes:[B
    .end local v7           #proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .end local v8           #registry:Lcom/htc/protobuf/ExtensionRegistry;
    .end local v9           #result:Lcom/htc/protobuf/Descriptors$FileDescriptor;
    :catch_0
    move-exception v3

    .line 322
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Standard encoding ISO-8859-1 not supported by JVM."

    invoke-direct {v10, v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 329
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #descriptorBytes:[B
    :catch_1
    move-exception v3

    .line 330
    .local v3, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 337
    .end local v3           #e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    .restart local v7       #proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    :catch_2
    move-exception v3

    .line 338
    .local v3, e:Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid embedded descriptor for \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 349
    .end local v3           #e:Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
    .restart local v8       #registry:Lcom/htc/protobuf/ExtensionRegistry;
    .restart local v9       #result:Lcom/htc/protobuf/Descriptors$FileDescriptor;
    :catch_3
    move-exception v3

    .line 350
    .local v3, e:Lcom/htc/protobuf/InvalidProtocolBufferException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .locals 3
    .parameter "proto"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$Descriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->access$800(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$EnumDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->access$900(Lcom/htc/protobuf/Descriptors$EnumDescriptor;Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->access$1000(Lcom/htc/protobuf/Descriptors$ServiceDescriptor;Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 456
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 457
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 459
    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 174
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 181
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 183
    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 185
    goto :goto_0
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 236
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 238
    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method public findMessageTypeByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 146
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 153
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 155
    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method public findServiceByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 202
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 213
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 209
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 211
    check-cast v0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 213
    goto :goto_0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->services:[Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FileDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method
