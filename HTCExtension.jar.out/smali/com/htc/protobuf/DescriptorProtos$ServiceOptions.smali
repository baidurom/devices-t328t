.class public final Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;


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
    .line 10205
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    .line 10668
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 10672
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 10673
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10203
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 10246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10295
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 10203
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10199
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;-><init>()V

    return-void
.end method

.method static synthetic access$16500(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10199
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16502(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10199
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 10211
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10228
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 10401
    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16300()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10408
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10371
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10381
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10322
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10332
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10387
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10393
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10352
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10362
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10337
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10343
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;->access$16200(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .prologue
    .line 10219
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10301
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    .line 10302
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 10312
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 10304
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 10305
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10306
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 10309
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 10310
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 10311
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 10312
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 10265
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 10259
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 10253
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10237
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 10273
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10274
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10277
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 10276
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10277
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 10406
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;
    .locals 1

    .prologue
    .line 10414
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;)Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10199
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

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
    .line 10287
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 10288
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10289
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 10291
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_0
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 10292
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 10293
    return-void
.end method
