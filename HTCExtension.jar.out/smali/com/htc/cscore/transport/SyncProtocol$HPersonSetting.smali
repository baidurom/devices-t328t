.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPersonSetting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final PERSONID_FIELD_NUMBER:I = 0x4a2

.field public static final PERSONSETTINGTYPE_FIELD_NUMBER:I = 0x7e2

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final VALUE_FIELD_NUMBER:I = 0x78e

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;


# instance fields
.field private hasId:Z

.field private hasName:Z

.field private hasPersonId:Z

.field private hasPersonSettingType:Z

.field private hasPriority:Z

.field private hasTimestamp:Z

.field private hasValue:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field private priority_:I

.field private timestamp_:J

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44514
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    .line 45456
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 45460
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 45461
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44512
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 44625
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44644
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->name_:Ljava/lang/String;

    .line 44663
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 44682
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 44701
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->priority_:I

    .line 44720
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->timestamp_:J

    .line 44739
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->value_:Ljava/lang/String;

    .line 44795
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->memoizedSerializedSize:I

    .line 44512
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44509
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;-><init>()V

    return-void
.end method

.method static synthetic access$85102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z

    return p1
.end method

.method static synthetic access$85200(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$85202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$85302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName:Z

    return p1
.end method

.method static synthetic access$85402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$85502(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z

    return p1
.end method

.method static synthetic access$85600(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$85602(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$85702(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType:Z

    return p1
.end method

.method static synthetic access$85802(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    return-object p1
.end method

.method static synthetic access$85902(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority:Z

    return p1
.end method

.method static synthetic access$86002(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->priority_:I

    return p1
.end method

.method static synthetic access$86102(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$86202(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$86302(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue:Z

    return p1
.end method

.method static synthetic access$86402(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44509
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->value_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    .prologue
    .line 44520
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44537
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$84600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1

    .prologue
    .line 44924
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84900()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 44931
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44894
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44845
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44855
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44910
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44916
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44875
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44885
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44860
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44866
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;->access$84800(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
    .locals 1

    .prologue
    .line 44528
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 44635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44654
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 44673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 1

    .prologue
    .line 44692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->personSettingType_:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 44711
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->priority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 44801
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->memoizedSerializedSize:I

    .line 44802
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 44835
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 44804
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 44805
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44806
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44809
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44810
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 44813
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44814
    const/16 v2, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44817
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44818
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44821
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44822
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 44825
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 44826
    const/16 v2, 0x78e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44829
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44830
    const/16 v2, 0x7e2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 44833
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 44834
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->memoizedSerializedSize:I

    move v1, v0

    .line 44835
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 44730
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->timestamp_:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 44630
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 44649
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName:Z

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 44668
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId:Z

    return v0
.end method

.method public hasPersonSettingType()Z
    .locals 1

    .prologue
    .line 44687
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 44706
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 44725
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 44744
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 44546
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$84700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44756
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44757
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 44762
    :cond_0
    :goto_0
    return v0

    .line 44759
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44760
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44762
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1

    .prologue
    .line 44929
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;
    .locals 1

    .prologue
    .line 44937
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$Builder;

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
    .line 44771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44772
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 44774
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44775
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 44777
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44778
    const/16 v0, 0x4a2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 44780
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44781
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 44783
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44784
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 44786
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44787
    const/16 v0, 0x78e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 44789
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->hasPersonSettingType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44790
    const/16 v0, 0x7e2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getPersonSettingType()Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44792
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 44793
    return-void
.end method
