.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfilePhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$HProfilePhoneNumberType;
    }
.end annotation


# static fields
.field public static final CANONICALPHONENUMBER_FIELD_NUMBER:I = 0x4c8

.field public static final DISPLAYPHONENUMBER_FIELD_NUMBER:I = 0x3eb

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PHONENUMBERTYPE_FIELD_NUMBER:I = 0x609

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;


# instance fields
.field private canonicalPhoneNumber_:J

.field private displayPhoneNumber_:Ljava/lang/String;

.field private hasCanonicalPhoneNumber:Z

.field private hasDisplayPhoneNumber:Z

.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasPhoneNumberType:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private phoneNumberType_:I

.field private priority_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32055
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    .line 33009
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 33013
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 33014
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 32053
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 32190
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J

    .line 32209
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    .line 32228
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32247
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32266
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I

    .line 32285
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I

    .line 32304
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J

    .line 32360
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->memoizedSerializedSize:I

    .line 32053
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32050
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;-><init>()V

    return-void
.end method

.method static synthetic access$61502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z

    return p1
.end method

.method static synthetic access$61602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J

    return-wide p1
.end method

.method static synthetic access$61702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z

    return p1
.end method

.method static synthetic access$61802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$61902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z

    return p1
.end method

.method static synthetic access$62000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$62002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$62102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$62200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$62202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$62302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z

    return p1
.end method

.method static synthetic access$62402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I

    return p1
.end method

.method static synthetic access$62502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z

    return p1
.end method

.method static synthetic access$62602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I

    return p1
.end method

.method static synthetic access$62702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$62802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32050
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    .prologue
    .line 32061
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32078
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$61000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    .prologue
    .line 32489
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61300()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 32496
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32459
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32469
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32410
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32420
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32475
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32481
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32440
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32450
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32425
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32431
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;->access$61200(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCanonicalPhoneNumber()J
    .locals 2

    .prologue
    .line 32200
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->canonicalPhoneNumber_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;
    .locals 1

    .prologue
    .line 32069
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32219
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->displayPhoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 32238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 32257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPhoneNumberType()I
    .locals 1

    .prologue
    .line 32276
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->phoneNumberType_:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 32295
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 32366
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->memoizedSerializedSize:I

    .line 32367
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 32400
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 32369
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 32370
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32371
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 32374
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32375
    const/16 v2, 0x3eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32378
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32379
    const/16 v2, 0x4c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 32382
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32383
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32386
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32387
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32390
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 32391
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32394
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32395
    const/16 v2, 0x609

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32398
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 32399
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->memoizedSerializedSize:I

    move v1, v0

    .line 32400
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 32314
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->timestamp_:J

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    .prologue
    .line 32195
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber:Z

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    .prologue
    .line 32214
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 32233
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 32252
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId:Z

    return v0
.end method

.method public hasPhoneNumberType()Z
    .locals 1

    .prologue
    .line 32271
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 32290
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 32309
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 32087
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$61100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32321
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32322
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32327
    :cond_0
    :goto_0
    return v0

    .line 32324
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32325
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32327
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    .prologue
    .line 32494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;
    .locals 1

    .prologue
    .line 32502
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32050
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber$Builder;

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
    .line 32336
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32337
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 32339
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32340
    const/16 v0, 0x3eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 32342
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32343
    const/16 v0, 0x4c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getCanonicalPhoneNumber()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 32345
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32346
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 32348
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32349
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 32351
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32352
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32354
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->hasPhoneNumberType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32355
    const/16 v0, 0x609

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getPhoneNumberType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 32357
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 32358
    return-void
.end method
