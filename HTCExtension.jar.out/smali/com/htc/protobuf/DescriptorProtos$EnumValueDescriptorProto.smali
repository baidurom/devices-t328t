.class public final Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;


# instance fields
.field private hasName:Z

.field private hasNumber:Z

.field private hasOptions:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private number_:I

.field private options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5142
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 5696
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 5700
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 5701
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5140
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 5184
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    .line 5203
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    .line 5222
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 5263
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    .line 5140
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5137
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$8102(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$8202(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return p1
.end method

.method static synthetic access$8502(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5137
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5137
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5148
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5165
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$7600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 5376
    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7900()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5383
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5346
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5356
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5297
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5307
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5362
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5368
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5327
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5337
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5312
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5318
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5156
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5194
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 5213
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5232
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 5269
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    .line 5270
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5287
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5272
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5273
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5274
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5277
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5278
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5281
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5282
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5285
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5286
    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    move v1, v0

    .line 5287
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5189
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 5208
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 5227
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5174
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$7700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5239
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5240
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 5381
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 5389
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5137
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5251
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5252
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5254
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5255
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5257
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5258
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 5260
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 5261
    return-void
.end method
