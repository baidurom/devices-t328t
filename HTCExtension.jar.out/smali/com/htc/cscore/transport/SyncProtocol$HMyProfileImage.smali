.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTTYPE_FIELD_NUMBER:I = 0x2b4

.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final MYPROFILE_FIELD_NUMBER:I = 0x7e5

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;


# instance fields
.field private contentType_:Ljava/lang/String;

.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private hasContentType:Z

.field private hasData:Z

.field private hasFileType:Z

.field private hasId:Z

.field private hasMyProfile:Z

.field private hasMyProfileId:Z

.field private hasName:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

.field private name_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28576
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    .line 29548
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 29552
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 29553
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28574
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 28618
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;

    .line 28637
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;

    .line 28656
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;

    .line 28675
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28694
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    .line 28713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28732
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;

    .line 28751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J

    .line 28813
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->memoizedSerializedSize:I

    .line 28574
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28571
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;-><init>()V

    return-void
.end method

.method static synthetic access$54502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z

    return p1
.end method

.method static synthetic access$54602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$54702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z

    return p1
.end method

.method static synthetic access$54802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$54902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z

    return p1
.end method

.method static synthetic access$55002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$55102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z

    return p1
.end method

.method static synthetic access$55200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$55202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$55302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z

    return p1
.end method

.method static synthetic access$55400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method static synthetic access$55402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object p1
.end method

.method static synthetic access$55502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$55600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$55602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$55702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z

    return p1
.end method

.method static synthetic access$55802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$55902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$56002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28571
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 28582
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 28599
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$54000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1

    .prologue
    .line 28946
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 28953
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28916
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28926
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28867
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28877
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28932
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28938
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28897
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28907
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28882
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28888
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;->access$54200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28628
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->contentType_:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 28647
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;
    .locals 1

    .prologue
    .line 28590
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;
    .locals 1

    .prologue
    .line 28704
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfile_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 28819
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->memoizedSerializedSize:I

    .line 28820
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 28857
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 28822
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 28823
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28824
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28827
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28828
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28831
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28832
    const/16 v2, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28835
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28836
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28839
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28840
    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28843
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28844
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28847
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 28848
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28851
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28852
    const/16 v2, 0x7e5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28855
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 28856
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->memoizedSerializedSize:I

    move v1, v0

    .line 28857
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28761
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->timestamp_:J

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 28623
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 28642
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 28661
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 28680
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId:Z

    return v0
.end method

.method public hasMyProfile()Z
    .locals 1

    .prologue
    .line 28699
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 28718
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 28737
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 28756
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 28608
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$54100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28768
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 28777
    :cond_0
    :goto_0
    return v0

    .line 28771
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28772
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28774
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 28775
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28777
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1

    .prologue
    .line 28951
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;
    .locals 1

    .prologue
    .line 28959
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28571
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage$Builder;

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
    .line 28786
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28787
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 28789
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28790
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 28792
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28793
    const/16 v0, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 28795
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28796
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 28798
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28799
    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 28801
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28802
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 28804
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28805
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 28807
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->hasMyProfile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28808
    const/16 v0, 0x7e5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getMyProfile()Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 28810
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 28811
    return-void
.end method
