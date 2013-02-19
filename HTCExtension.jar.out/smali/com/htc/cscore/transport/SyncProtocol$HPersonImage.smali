.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTTYPE_FIELD_NUMBER:I = 0x2b4

.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;


# instance fields
.field private contentType_:Ljava/lang/String;

.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private hasContentType:Z

.field private hasData:Z

.field private hasFileType:Z

.field private hasId:Z

.field private hasName:Z

.field private hasPersonId:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42661
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 43531
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 43535
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 43536
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42659
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 42703
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->contentType_:Ljava/lang/String;

    .line 42722
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->data_:Lcom/htc/protobuf/ByteString;

    .line 42741
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->fileType_:Ljava/lang/String;

    .line 42760
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42779
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->name_:Ljava/lang/String;

    .line 42798
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 42817
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->timestamp_:J

    .line 42873
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->memoizedSerializedSize:I

    .line 42659
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42656
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;-><init>()V

    return-void
.end method

.method static synthetic access$81302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType:Z

    return p1
.end method

.method static synthetic access$81402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->contentType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$81502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData:Z

    return p1
.end method

.method static synthetic access$81602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$81702(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType:Z

    return p1
.end method

.method static synthetic access$81802(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$81902(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z

    return p1
.end method

.method static synthetic access$82000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42656
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$82102(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName:Z

    return p1
.end method

.method static synthetic access$82202(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$82302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$82400(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42656
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$82502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$82602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42656
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 42667
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 42684
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$80800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1

    .prologue
    .line 43002
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81100()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 43009
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42972
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42982
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42923
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42933
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42988
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42994
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42953
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42963
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42938
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42944
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 42732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 42675
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42751
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 42770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 42808
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 42879
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->memoizedSerializedSize:I

    .line 42880
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 42913
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 42882
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 42883
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42884
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42887
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42888
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 42891
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42892
    const/16 v2, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42895
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42896
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42899
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42900
    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42903
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42904
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42907
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 42908
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42911
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 42912
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->memoizedSerializedSize:I

    move v1, v0

    .line 42913
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 42827
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->timestamp_:J

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 42708
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 42727
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 42746
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 42765
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 42784
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 42803
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 42822
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 42693
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$80900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42834
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42835
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42840
    :cond_0
    :goto_0
    return v0

    .line 42837
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42838
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42840
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1

    .prologue
    .line 43007
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1

    .prologue
    .line 43015
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42656
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42849
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42850
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 42852
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42853
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 42855
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42856
    const/16 v0, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 42858
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42859
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 42861
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42862
    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 42864
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42865
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 42867
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42868
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 42870
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 42871
    return-void
.end method
