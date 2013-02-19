.class public final Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_SET_WIRE_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final NO_STANDARD_DESCRIPTOR_ACCESSOR_FIELD_NUMBER:I = 0x2

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;


# instance fields
.field private hasMessageSetWireFormat:Z

.field private hasNoStandardDescriptorAccessor:Z

.field private memoizedSerializedSize:I

.field private messageSetWireFormat_:Z

.field private noStandardDescriptorAccessor_:Z

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
    .line 7818
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 8415
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 8419
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 8420
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7816
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 7860
    iput-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    .line 7879
    iput-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    .line 7897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    .line 7952
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    .line 7816
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7812
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;-><init>()V

    return-void
.end method

.method static synthetic access$12900(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7812
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7812
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7812
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z

    return p1
.end method

.method static synthetic access$13102(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7812
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return p1
.end method

.method static synthetic access$13202(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7812
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z

    return p1
.end method

.method static synthetic access$13302(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7812
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 7824
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7841
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$12400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .prologue
    .line 8066
    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12700()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8073
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8036
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8046
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7987
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7997
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8052
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8058
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8017
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8027
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8002
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8008
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->access$12600(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 7832
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 7870
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->messageSetWireFormat_:Z

    return v0
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 7889
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 7958
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    .line 7959
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 7977
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 7961
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 7962
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7963
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7966
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7967
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7970
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7971
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 7974
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7975
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 7976
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 7977
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 7916
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 7910
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 7904
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasMessageSetWireFormat()Z
    .locals 1

    .prologue
    .line 7865
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat:Z

    return v0
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 1

    .prologue
    .line 7884
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7850
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$12500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 7924
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 7925
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7928
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 7927
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7928
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .prologue
    .line 8071
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .prologue
    .line 8079
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7812
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7938
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 7939
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7940
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7942
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7943
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7945
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7946
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 7948
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_2
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 7949
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 7950
    return-void
.end method
