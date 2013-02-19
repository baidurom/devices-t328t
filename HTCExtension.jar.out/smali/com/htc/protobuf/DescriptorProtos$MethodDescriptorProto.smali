.class public final Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_TYPE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;


# instance fields
.field private hasInputType:Z

.field private hasName:Z

.field private hasOptions:Z

.field private hasOutputType:Z

.field private inputType_:Ljava/lang/String;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

.field private outputType_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6350
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 6977
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 6981
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 6982
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6348
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 6392
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/String;

    .line 6411
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/String;

    .line 6430
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/String;

    .line 6449
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    .line 6493
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSerializedSize:I

    .line 6348
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6345
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$10202(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType:Z

    return p1
.end method

.method static synthetic access$10502(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10802(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6345
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MethodOptions;)Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6345
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6356
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6373
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$9700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 6610
    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$10000()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 6617
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6580
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6590
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6531
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6541
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6596
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6602
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6561
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6571
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6546
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6552
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->access$9900(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 6364
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6421
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->inputType_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6402
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 6459
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public getOutputType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6440
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->outputType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 6499
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSerializedSize:I

    .line 6500
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6521
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6502
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6503
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6504
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6507
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6508
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6511
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6512
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6515
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6516
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6519
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 6520
    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->memoizedSerializedSize:I

    move v1, v0

    .line 6521
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 6416
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6397
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 6454
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions:Z

    return v0
.end method

.method public hasOutputType()Z
    .locals 1

    .prologue
    .line 6435
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6382
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$9800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6466
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6467
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 6615
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 6623
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6345
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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
    .line 6478
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6479
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6481
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6482
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6484
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6485
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6487
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6488
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 6490
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 6491
    return-void
.end method
