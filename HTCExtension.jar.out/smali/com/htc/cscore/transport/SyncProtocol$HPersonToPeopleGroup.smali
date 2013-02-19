.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonToPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PEOPLEGROUPID_FIELD_NUMBER:I = 0x700

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;


# instance fields
.field private hasId:Z

.field private hasPeopleGroupId:Z

.field private hasPersonId:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45469
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 46161
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 46165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 46166
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45467
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 45511
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45530
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45549
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 45568
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J

    .line 45618
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->memoizedSerializedSize:I

    .line 45467
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45464
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z

    return p1
.end method

.method static synthetic access$87100(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z

    return p1
.end method

.method static synthetic access$87300(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$87500(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$87602(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$87702(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45464
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 45475
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 45492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$86500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 45735
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86800()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 45742
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45715
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45656
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45721
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45727
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45686
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45696
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45671
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45677
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 45483
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 45559
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 45624
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->memoizedSerializedSize:I

    .line 45625
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 45646
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 45627
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 45628
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45629
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 45632
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45633
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45636
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45637
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45640
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45641
    const/16 v2, 0x700

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45644
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 45645
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 45646
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 45578
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 45516
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z

    return v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 45535
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 45554
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 45573
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 45501
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$86600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45585
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45586
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45594
    :cond_0
    :goto_0
    return v0

    .line 45588
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45589
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45591
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45592
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45594
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 45740
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 45748
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 45603
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45604
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 45606
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45607
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 45609
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45610
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 45612
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45613
    const/16 v0, 0x700

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 45615
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 45616
    return-void
.end method
