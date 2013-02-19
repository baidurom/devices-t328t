.class public final Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;


# instance fields
.field private memoizedSerializedSize:I

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9251
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    .line 9714
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 9718
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 9719
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9249
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 9292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    .line 9341
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    .line 9249
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 9245
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;-><init>()V

    return-void
.end method

.method static synthetic access$15300(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9245
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$15302(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9245
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 9257
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9274
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$14800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 9447
    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15100()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9454
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9417
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9427
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9368
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9378
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9433
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9439
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9398
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9408
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9383
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9389
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;->access$15000(Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 9265
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 9347
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    .line 9348
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 9358
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 9350
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 9351
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 9352
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 9355
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 9356
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 9357
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 9358
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 9311
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 9305
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9299
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 9283
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$14900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9319
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 9320
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9323
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 9322
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9323
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 9452
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .prologue
    .line 9460
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9245
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9333
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 9334
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 9335
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 9337
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_0
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 9338
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 9339
    return-void
.end method
