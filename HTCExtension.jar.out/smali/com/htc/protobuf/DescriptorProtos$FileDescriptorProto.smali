.class public final Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final DEPENDENCY_FIELD_NUMBER:I = 0x3

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;


# instance fields
.field private dependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private hasName:Z

.field private hasOptions:Z

.field private hasPackage:Z

.field private memoizedSerializedSize:I

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

.field private package_:Ljava/lang/String;

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1731
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1735
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->internalForceInit()V

    .line 1736
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 530
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    .line 595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 708
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    .line 776
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSerializedSize:I

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FileOptions;)Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 914
    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$900()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 921
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    #calls: Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->access$800(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Ljava/util/List;

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 782
    iget v3, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSerializedSize:I

    .line 783
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 825
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 785
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 786
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 787
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 791
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 795
    :cond_2
    const/4 v0, 0x0

    .line 796
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 800
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 801
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 803
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 804
    .local v1, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v5, 0x4

    invoke-static {v5, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    .line 807
    .end local v1           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 808
    .local v1, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_3

    .line 811
    .end local v1           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 812
    .local v1, element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    const/4 v5, 0x6

    invoke-static {v5, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_4

    .line 815
    .end local v1           #element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 816
    .local v1, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v5, 0x7

    invoke-static {v5, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_5

    .line 819
    .end local v1           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 820
    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    .line 823
    :cond_8
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 824
    iput v3, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSerializedSize:I

    move v4, v3

    .line 825
    .end local v3           #size:I
    .restart local v4       #size:I
    goto/16 :goto_0
.end method

.method public getService(I)Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName:Z

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions:Z

    return v0
.end method

.method public hasPackage()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

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

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 726
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_1
    :goto_0
    return v2

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 729
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 731
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 732
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 734
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 735
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 737
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 738
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    :cond_9
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 919
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 927
    invoke-static {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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
    .line 749
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 752
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 759
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 761
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 762
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_2

    .line 764
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 765
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_3

    .line 767
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 768
    .local v0, element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_4

    .line 770
    .end local v0           #element:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 771
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 773
    :cond_7
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 774
    return-void
.end method
