.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    }
.end annotation


# static fields
.field public static final EVENTDATE_FIELD_NUMBER:I = 0x375

.field public static final EVENTNAME_FIELD_NUMBER:I = 0x309

.field public static final EVENTTYPE_FIELD_NUMBER:I = 0x3de

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;


# instance fields
.field private eventDate_:J

.field private eventName_:Ljava/lang/String;

.field private eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field private hasEventDate:Z

.field private hasEventName:Z

.field private hasEventType:Z

.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27626
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 28563
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 28567
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 28568
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 27624
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 27735
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J

    .line 27754
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;

    .line 27773
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 27792
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27811
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 27830
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I

    .line 27849
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J

    .line 27905
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->memoizedSerializedSize:I

    .line 27624
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27621
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>()V

    return-void
.end method

.method static synthetic access$52602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z

    return p1
.end method

.method static synthetic access$52702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J

    return-wide p1
.end method

.method static synthetic access$52802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z

    return p1
.end method

.method static synthetic access$52902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$53002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z

    return p1
.end method

.method static synthetic access$53102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    return-object p1
.end method

.method static synthetic access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z

    return p1
.end method

.method static synthetic access$53300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27621
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$53500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27621
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$53602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z

    return p1
.end method

.method static synthetic access$53702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I

    return p1
.end method

.method static synthetic access$53802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$53902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27621
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 27632
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 27649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$52100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1

    .prologue
    .line 28034
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 28041
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28004
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28014
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27955
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27965
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28020
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28026
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27985
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27970
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27976
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 27640
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventDate()J
    .locals 2

    .prologue
    .line 27745
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1

    .prologue
    .line 27783
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27802
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 27821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 27840
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 27911
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->memoizedSerializedSize:I

    .line 27912
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 27945
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 27914
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 27915
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27916
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 27919
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27920
    const/16 v2, 0x309

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27923
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27924
    const/16 v2, 0x375

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 27927
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27928
    const/16 v2, 0x3de

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27931
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27932
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27935
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 27936
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27939
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27940
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27943
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 27944
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 27945
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 27859
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J

    return-wide v0
.end method

.method public hasEventDate()Z
    .locals 1

    .prologue
    .line 27740
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .prologue
    .line 27759
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 27778
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 27797
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 27816
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 27835
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 27854
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 27658
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$52200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27866
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27867
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 27872
    :cond_0
    :goto_0
    return v0

    .line 27869
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27870
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27872
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1

    .prologue
    .line 28039
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1

    .prologue
    .line 28047
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 27621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 27881
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27882
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 27884
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27885
    const/16 v0, 0x309

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 27887
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27888
    const/16 v0, 0x375

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 27890
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27891
    const/16 v0, 0x3de

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27893
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27894
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 27896
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27897
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 27899
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27900
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 27902
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 27903
    return-void
.end method
