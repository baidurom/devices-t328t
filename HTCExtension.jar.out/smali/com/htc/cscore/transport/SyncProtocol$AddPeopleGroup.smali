.class public final Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddPeopleGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    }
.end annotation


# static fields
.field public static final PEOPLEGROUP_FIELD_NUMBER:I = 0x6e3

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;


# instance fields
.field private hasPeopleGroup:Z

.field private memoizedSerializedSize:I

.field private peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35582
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 36002
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 36006
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 36007
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35580
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 35624
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 35658
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->memoizedSerializedSize:I

    .line 35580
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35577
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;-><init>()V

    return-void
.end method

.method static synthetic access$68902(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35577
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z

    return p1
.end method

.method static synthetic access$69000(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method static synthetic access$69002(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35577
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 35588
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 35605
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$68400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 35763
    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68700()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 35770
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35733
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35743
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35684
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35694
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35749
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35755
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35714
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35724
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35699
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35705
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;->access$68600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 35596
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 35634
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->peopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 35664
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->memoizedSerializedSize:I

    .line 35665
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 35674
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 35667
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 35668
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35669
    const/16 v2, 0x6e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35672
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 35673
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 35674
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasPeopleGroup()Z
    .locals 1

    .prologue
    .line 35629
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35614
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$68500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35641
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup:Z

    if-nez v1, :cond_1

    .line 35643
    :cond_0
    :goto_0
    return v0

    .line 35642
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35643
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 35768
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 35776
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup$Builder;

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
    .line 35652
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->hasPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35653
    const/16 v0, 0x6e3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 35655
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 35656
    return-void
.end method
