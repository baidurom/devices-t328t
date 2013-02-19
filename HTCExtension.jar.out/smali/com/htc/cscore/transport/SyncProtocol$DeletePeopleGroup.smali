.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeletePeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final PEOPLEGROUPID_FIELD_NUMBER:I = 0x7f7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x732

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;


# instance fields
.field private hasPeopleGroupId:Z

.field private hasTimestamp:Z

.field private memoizedSerializedSize:I

.field private peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37434
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 37922
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 37926
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 37927
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37432
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 37476
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    .line 37533
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    .line 37432
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37429
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$71402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37429
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    return p1
.end method

.method static synthetic access$71500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$71502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37429
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$71602(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37429
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$71702(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37429
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 37440
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 37457
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$70900()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 37642
    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 37649
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37612
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37622
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37563
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37573
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37628
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37634
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37593
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37603
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37578
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37584
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;->access$71100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 37448
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 37539
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    .line 37540
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 37553
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 37542
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 37543
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37544
    const/16 v2, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 37547
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37548
    const/16 v2, 0x7f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37551
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 37552
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 37553
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37505
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->timestamp_:J

    return-wide v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 37481
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 37500
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 37466
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$71000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37512
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId:Z

    if-nez v1, :cond_1

    .line 37515
    :cond_0
    :goto_0
    return v0

    .line 37513
    :cond_1
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 37514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37515
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 37647
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;
    .locals 1

    .prologue
    .line 37655
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37429
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup$Builder;

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
    .line 37524
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37525
    const/16 v0, 0x732

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 37527
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37528
    const/16 v0, 0x7f7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 37530
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 37531
    return-void
.end method
