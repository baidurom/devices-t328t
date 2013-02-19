.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFootprintCategory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    }
.end annotation


# static fields
.field public static final FOOTPRINTCOUNT_FIELD_NUMBER:I = 0x160

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;


# instance fields
.field private footprintCount_:I

.field private hasFootprintCount:Z

.field private hasId:Z

.field private hasName:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12925
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 13483
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 13487
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 13488
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12923
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 12967
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->footprintCount_:I

    .line 12986
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13005
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->name_:Ljava/lang/String;

    .line 13046
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->memoizedSerializedSize:I

    .line 12923
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12920
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;-><init>()V

    return-void
.end method

.method static synthetic access$24902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount:Z

    return p1
.end method

.method static synthetic access$25002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->footprintCount_:I

    return p1
.end method

.method static synthetic access$25102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z

    return p1
.end method

.method static synthetic access$25200(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName:Z

    return p1
.end method

.method static synthetic access$25402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12920
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->name_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    .prologue
    .line 12931
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12948
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$24400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1

    .prologue
    .line 13159
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24700()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 13166
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13129
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13139
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13080
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13090
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13145
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13151
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13110
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13120
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13095
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13101
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    .prologue
    .line 12939
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCount()I
    .locals 1

    .prologue
    .line 12977
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->footprintCount_:I

    return v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 12996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 13052
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->memoizedSerializedSize:I

    .line 13053
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 13070
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 13055
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 13056
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13057
    const/16 v2, 0x160

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getFootprintCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13060
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13061
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13064
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13065
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13068
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 13069
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->memoizedSerializedSize:I

    move v1, v0

    .line 13070
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasFootprintCount()Z
    .locals 1

    .prologue
    .line 12972
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 12991
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 13010
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12957
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$24500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 13022
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13023
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13025
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1

    .prologue
    .line 13164
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1

    .prologue
    .line 13172
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12920
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

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
    .line 13034
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13035
    const/16 v0, 0x160

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getFootprintCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13037
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13038
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13040
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13041
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 13043
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 13044
    return-void
.end method
