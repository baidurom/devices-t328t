.class public final Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HNewItemNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    }
.end annotation


# static fields
.field public static final LASTVIEWDASHBOARDS_FIELD_NUMBER:I = 0x10b

.field public static final LASTVIEWFOOTPRINTS_FIELD_NUMBER:I = 0x40e

.field public static final LASTVIEWRECOMMENDS_FIELD_NUMBER:I = 0xee

.field public static final NEWDASHBOARDCOUNT_FIELD_NUMBER:I = 0x657

.field public static final NEWFOOTPRINTCOUNT_FIELD_NUMBER:I = 0xeb

.field public static final NEWMESSAGESCOUNT_FIELD_NUMBER:I = 0x3d7

.field public static final NEWPEOPLECOUNT_FIELD_NUMBER:I = 0x12

.field public static final NEWRECOMMENDSCOUNT_FIELD_NUMBER:I = 0x4bc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;


# instance fields
.field private hasLastViewDashboards:Z

.field private hasLastViewFootprints:Z

.field private hasLastViewRecommends:Z

.field private hasNewDashboardCount:Z

.field private hasNewFootprintCount:Z

.field private hasNewMessagesCount:Z

.field private hasNewPeopleCount:Z

.field private hasNewRecommendsCount:Z

.field private lastViewDashboards_:J

.field private lastViewFootprints_:J

.field private lastViewRecommends_:J

.field private memoizedSerializedSize:I

.field private newDashboardCount_:I

.field private newFootprintCount_:I

.field private newMessagesCount_:I

.field private newPeopleCount_:I

.field private newRecommendsCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33762
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    .line 34617
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 34621
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 34622
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 33760
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 33804
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    .line 33823
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    .line 33842
    iput-wide v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    .line 33861
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    .line 33880
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    .line 33899
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    .line 33918
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    .line 33937
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    .line 33990
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    .line 33760
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33757
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;-><init>()V

    return-void
.end method

.method static synthetic access$64902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z

    return p1
.end method

.method static synthetic access$65002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    return-wide p1
.end method

.method static synthetic access$65102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z

    return p1
.end method

.method static synthetic access$65202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    return-wide p1
.end method

.method static synthetic access$65302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z

    return p1
.end method

.method static synthetic access$65402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    return-wide p1
.end method

.method static synthetic access$65502(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z

    return p1
.end method

.method static synthetic access$65602(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    return p1
.end method

.method static synthetic access$65702(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z

    return p1
.end method

.method static synthetic access$65802(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    return p1
.end method

.method static synthetic access$65902(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z

    return p1
.end method

.method static synthetic access$66002(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    return p1
.end method

.method static synthetic access$66102(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z

    return p1
.end method

.method static synthetic access$66202(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    return p1
.end method

.method static synthetic access$66302(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z

    return p1
.end method

.method static synthetic access$66402(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33757
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    .prologue
    .line 33768
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33785
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$64400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    .prologue
    .line 34123
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64700()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 34130
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34093
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34103
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34044
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34054
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34109
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34115
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34074
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34084
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34059
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34065
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;->access$64600(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;
    .locals 1

    .prologue
    .line 33776
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;

    move-result-object v0

    return-object v0
.end method

.method public getLastViewDashboards()J
    .locals 2

    .prologue
    .line 33814
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewDashboards_:J

    return-wide v0
.end method

.method public getLastViewFootprints()J
    .locals 2

    .prologue
    .line 33833
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewFootprints_:J

    return-wide v0
.end method

.method public getLastViewRecommends()J
    .locals 2

    .prologue
    .line 33852
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->lastViewRecommends_:J

    return-wide v0
.end method

.method public getNewDashboardCount()I
    .locals 1

    .prologue
    .line 33871
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newDashboardCount_:I

    return v0
.end method

.method public getNewFootprintCount()I
    .locals 1

    .prologue
    .line 33890
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newFootprintCount_:I

    return v0
.end method

.method public getNewMessagesCount()I
    .locals 1

    .prologue
    .line 33909
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newMessagesCount_:I

    return v0
.end method

.method public getNewPeopleCount()I
    .locals 1

    .prologue
    .line 33928
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newPeopleCount_:I

    return v0
.end method

.method public getNewRecommendsCount()I
    .locals 1

    .prologue
    .line 33947
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newRecommendsCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 33996
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    .line 33997
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 34034
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 33999
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 34000
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34001
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34004
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34005
    const/16 v2, 0xeb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34008
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34009
    const/16 v2, 0xee

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34012
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34013
    const/16 v2, 0x10b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34016
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34017
    const/16 v2, 0x3d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34020
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 34021
    const/16 v2, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 34024
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34025
    const/16 v2, 0x4bc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34028
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 34029
    const/16 v2, 0x657

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34032
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 34033
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->memoizedSerializedSize:I

    move v1, v0

    .line 34034
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public hasLastViewDashboards()Z
    .locals 1

    .prologue
    .line 33809
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards:Z

    return v0
.end method

.method public hasLastViewFootprints()Z
    .locals 1

    .prologue
    .line 33828
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints:Z

    return v0
.end method

.method public hasLastViewRecommends()Z
    .locals 1

    .prologue
    .line 33847
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends:Z

    return v0
.end method

.method public hasNewDashboardCount()Z
    .locals 1

    .prologue
    .line 33866
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount:Z

    return v0
.end method

.method public hasNewFootprintCount()Z
    .locals 1

    .prologue
    .line 33885
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount:Z

    return v0
.end method

.method public hasNewMessagesCount()Z
    .locals 1

    .prologue
    .line 33904
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount:Z

    return v0
.end method

.method public hasNewPeopleCount()Z
    .locals 1

    .prologue
    .line 33923
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount:Z

    return v0
.end method

.method public hasNewRecommendsCount()Z
    .locals 1

    .prologue
    .line 33942
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 33794
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$64500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 33954
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    .prologue
    .line 34128
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;
    .locals 1

    .prologue
    .line 34136
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;)Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification$Builder;

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
    .line 33963
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewPeopleCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33964
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewPeopleCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33966
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewFootprintCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33967
    const/16 v0, 0xeb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewFootprintCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33969
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewRecommends()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33970
    const/16 v0, 0xee

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewRecommends()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33972
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewDashboards()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33973
    const/16 v0, 0x10b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewDashboards()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33975
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewMessagesCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33976
    const/16 v0, 0x3d7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewMessagesCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33978
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasLastViewFootprints()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33979
    const/16 v0, 0x40e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getLastViewFootprints()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 33981
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewRecommendsCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33982
    const/16 v0, 0x4bc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewRecommendsCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33984
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->hasNewDashboardCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33985
    const/16 v0, 0x657

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getNewDashboardCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 33987
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 33988
    return-void
.end method
