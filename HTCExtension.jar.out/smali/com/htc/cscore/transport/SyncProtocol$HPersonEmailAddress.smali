.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonEmailAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    }
.end annotation


# static fields
.field public static final EMAILADDRESSTYPE_FIELD_NUMBER:I = 0x246

.field public static final EMAILADDRESS_FIELD_NUMBER:I = 0x758

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;


# instance fields
.field private emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field private emailAddress_:Ljava/lang/String;

.field private hasEmailAddress:Z

.field private hasEmailAddressType:Z

.field private hasId:Z

.field private hasPersonId:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41776
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    .line 42648
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 42652
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 42653
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41774
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 41887
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddress_:Ljava/lang/String;

    .line 41906
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 41925
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41944
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 41963
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->priority_:I

    .line 41982
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->timestamp_:J

    .line 42035
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->memoizedSerializedSize:I

    .line 41774
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41771
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;-><init>()V

    return-void
.end method

.method static synthetic access$79602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress:Z

    return p1
.end method

.method static synthetic access$79702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddress_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$79802(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType:Z

    return p1
.end method

.method static synthetic access$79902(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    return-object p1
.end method

.method static synthetic access$80002(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z

    return p1
.end method

.method static synthetic access$80100(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$80102(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$80202(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$80300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41771
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$80302(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$80402(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority:Z

    return p1
.end method

.method static synthetic access$80502(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->priority_:I

    return p1
.end method

.method static synthetic access$80602(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$80702(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41771
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    .prologue
    .line 41782
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 41799
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$79100()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1

    .prologue
    .line 42160
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79400()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 42167
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42130
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42140
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42081
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42091
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42146
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42152
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42111
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42121
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42096
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42102
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;->access$79300(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
    .locals 1

    .prologue
    .line 41790
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 1

    .prologue
    .line 41916
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 41954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 41973
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 42041
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->memoizedSerializedSize:I

    .line 42042
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 42071
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 42044
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 42045
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42046
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 42049
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42050
    const/16 v2, 0x246

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 42053
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42054
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42057
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42058
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42061
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42062
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 42065
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 42066
    const/16 v2, 0x758

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42069
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 42070
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 42071
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 41992
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->timestamp_:J

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 41892
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress:Z

    return v0
.end method

.method public hasEmailAddressType()Z
    .locals 1

    .prologue
    .line 41911
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 41930
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 41949
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 41968
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 41987
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 41808
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$79200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 41999
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42000
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42005
    :cond_0
    :goto_0
    return v0

    .line 42002
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42003
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42005
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1

    .prologue
    .line 42165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;
    .locals 1

    .prologue
    .line 42173
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 41771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$Builder;

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
    .line 42014
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42015
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 42017
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddressType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42018
    const/16 v0, 0x246

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 42020
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42021
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 42023
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42024
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 42026
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42027
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 42029
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42030
    const/16 v0, 0x758

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 42032
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 42033
    return-void
.end method
