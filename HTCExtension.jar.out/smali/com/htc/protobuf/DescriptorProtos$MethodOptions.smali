.class public final Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MethodOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;


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
    .line 10682
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 11145
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 11149
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 11150
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10680
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 10723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    .line 10772
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 10680
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10676
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;-><init>()V

    return-void
.end method

.method static synthetic access$17100(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10676
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17102(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10676
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 10688
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10705
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 10878
    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16900()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 10885
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10848
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10858
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10799
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10809
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10864
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10870
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10829
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10839
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10814
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10820
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;->access$16800(Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 10696
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10778
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    .line 10779
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 10789
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 10781
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 10782
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10783
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 10786
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 10787
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 10788
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 10789
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 10742
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 10736
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 10730
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 10714
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 10750
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10751
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10754
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 10753
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10754
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 10883
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .prologue
    .line 10891
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10676
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

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
    .line 10764
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 10765
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 10766
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 10768
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_0
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 10769
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 10770
    return-void
.end method
