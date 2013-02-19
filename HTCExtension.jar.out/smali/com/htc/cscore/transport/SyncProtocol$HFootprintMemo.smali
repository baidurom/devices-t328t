.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFootprintMemo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3ce

.field public static final FILETYPE_FIELD_NUMBER:I = 0x447

.field public static final FOOTPRINTID_FIELD_NUMBER:I = 0x2b4

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MEMOTIME_FIELD_NUMBER:I = 0x311

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;


# instance fields
.field private data_:Lcom/htc/protobuf/ByteString;

.field private fileType_:Ljava/lang/String;

.field private footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private hasData:Z

.field private hasFileType:Z

.field private hasFootprintId:Z

.field private hasId:Z

.field private hasMemoTime:Z

.field private hasName:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoTime_:I

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14522
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 15389
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 15393
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 15394
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14520
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 14564
    sget-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->data_:Lcom/htc/protobuf/ByteString;

    .line 14583
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->fileType_:Ljava/lang/String;

    .line 14602
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 14621
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 14640
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoTime_:I

    .line 14659
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->name_:Ljava/lang/String;

    .line 14678
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->timestamp_:J

    .line 14734
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoizedSerializedSize:I

    .line 14520
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14517
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;-><init>()V

    return-void
.end method

.method static synthetic access$28102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData:Z

    return p1
.end method

.method static synthetic access$28202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->data_:Lcom/htc/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$28302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType:Z

    return p1
.end method

.method static synthetic access$28402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->fileType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$28502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z

    return p1
.end method

.method static synthetic access$28600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14517
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$28702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z

    return p1
.end method

.method static synthetic access$28800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14517
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$28902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime:Z

    return p1
.end method

.method static synthetic access$29002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoTime_:I

    return p1
.end method

.method static synthetic access$29102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName:Z

    return p1
.end method

.method static synthetic access$29202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$29302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$29402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14517
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 14528
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14545
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$27600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 14863
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27900()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 14870
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14833
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14843
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14784
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14794
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14849
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14855
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14814
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14824
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 14574
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->data_:Lcom/htc/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 14536
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14593
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->fileType_:Ljava/lang/String;

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 14612
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 14631
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMemoTime()I
    .locals 1

    .prologue
    .line 14650
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoTime_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14669
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 14740
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoizedSerializedSize:I

    .line 14741
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 14774
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 14743
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 14744
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14745
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14748
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14749
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 14752
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14753
    const/16 v2, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14756
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14757
    const/16 v2, 0x311

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getMemoTime()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14760
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14761
    const/16 v2, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14764
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14765
    const/16 v2, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14768
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14769
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14772
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 14773
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoizedSerializedSize:I

    move v1, v0

    .line 14774
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 14688
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->timestamp_:J

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 14569
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData:Z

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 14588
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType:Z

    return v0
.end method

.method public hasFootprintId()Z
    .locals 1

    .prologue
    .line 14607
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 14626
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z

    return v0
.end method

.method public hasMemoTime()Z
    .locals 1

    .prologue
    .line 14645
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 14664
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 14683
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 14554
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$27700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14695
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14696
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14701
    :cond_0
    :goto_0
    return v0

    .line 14698
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14699
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14701
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 14868
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1

    .prologue
    .line 14876
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14517
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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
    .line 14710
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14711
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14713
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14714
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14716
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14717
    const/16 v0, 0x2b4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 14719
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14720
    const/16 v0, 0x311

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getMemoTime()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14722
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14723
    const/16 v0, 0x3ce

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 14725
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14726
    const/16 v0, 0x447

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14728
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14729
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 14731
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 14732
    return-void
.end method
