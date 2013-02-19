.class public final Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final CTYPE_FIELD_NUMBER:I = 0x1

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x3

.field public static final EXPERIMENTAL_MAP_KEY_FIELD_NUMBER:I = 0x9

.field public static final PACKED_FIELD_NUMBER:I = 0x2

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;


# instance fields
.field private ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field private deprecated_:Z

.field private experimentalMapKey_:Ljava/lang/String;

.field private hasCtype:Z

.field private hasDeprecated:Z

.field private hasExperimentalMapKey:Z

.field private hasPacked:Z

.field private memoizedSerializedSize:I

.field private packed_:Z

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
    .line 8429
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 9237
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 9241
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 9242
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8427
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 8536
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 8555
    iput-boolean v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    .line 8574
    iput-boolean v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    .line 8593
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    .line 8611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    .line 8672
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    .line 8427
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8423
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    return-void
.end method

.method static synthetic access$13900(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8423
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z

    return p1
.end method

.method static synthetic access$14102(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z

    return p1
.end method

.method static synthetic access$14502(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z

    return p1
.end method

.method static synthetic access$14702(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8423
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 8435
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8452
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$13400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .prologue
    .line 8794
    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13700()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8801
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8764
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8774
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8715
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8725
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8780
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8786
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8745
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8755
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8730
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8736
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->access$13600(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .prologue
    .line 8546
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->ctype_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 8443
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 8584
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->deprecated_:Z

    return v0
.end method

.method public getExperimentalMapKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8603
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->experimentalMapKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    .prologue
    .line 8565
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->packed_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 8678
    iget v2, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    .line 8679
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 8705
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 8681
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 8682
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8683
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 8686
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8687
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 8690
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8691
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 8694
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8695
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8698
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8699
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v4, 0x3e7

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 8702
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 8703
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 8704
    iput v2, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->memoizedSerializedSize:I

    move v3, v2

    .line 8705
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .parameter "index"

    .prologue
    .line 8630
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 8624
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

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
    .line 8618
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public hasCtype()Z
    .locals 1

    .prologue
    .line 8541
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype:Z

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .prologue
    .line 8579
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated:Z

    return v0
.end method

.method public hasExperimentalMapKey()Z
    .locals 1

    .prologue
    .line 8598
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey:Z

    return v0
.end method

.method public hasPacked()Z
    .locals 1

    .prologue
    .line 8560
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8461
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$13500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 8638
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

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

    .line 8639
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8642
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_1
    :goto_0
    return v2

    .line 8641
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->extensionsAreInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8642
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .prologue
    .line 8799
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .prologue
    .line 8807
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8423
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

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
    .line 8652
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newExtensionWriter()Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v1

    .line 8653
    .local v1, extensionWriter:Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8654
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8656
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8657
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8659
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8660
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8662
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->hasExperimentalMapKey()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8663
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getExperimentalMapKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 8665
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    .line 8666
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 8668
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;
    :cond_4
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3, p1}, Lcom/htc/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V

    .line 8669
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 8670
    return-void
.end method
