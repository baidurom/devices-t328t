.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HRecommendAppsOnPhone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPTYPE_FIELD_NUMBER:I = 0x248

.field public static final APPURL_FIELD_NUMBER:I = 0x389

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final RECOMMENDEDAPPLICATIONICON_FIELD_NUMBER:I = 0x2c3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private appURL_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppType:Z

.field private hasAppURL:Z

.field private hasId:Z

.field private hasName:Z

.field private hasRecommendedApplicationIcon:Z

.field private hasTimestamp:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47389
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 48259
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 48263
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 48264
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47387
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 47431
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;

    .line 47450
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;

    .line 47469
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;

    .line 47488
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47507
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;

    .line 47526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 47545
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J

    .line 47601
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 47387
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47384
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;-><init>()V

    return-void
.end method

.method static synthetic access$90702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z

    return p1
.end method

.method static synthetic access$90802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$90902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z

    return p1
.end method

.method static synthetic access$91002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$91102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z

    return p1
.end method

.method static synthetic access$91202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$91302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z

    return p1
.end method

.method static synthetic access$91400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$91402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$91502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z

    return p1
.end method

.method static synthetic access$91602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$91702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z

    return p1
.end method

.method static synthetic access$91800(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method static synthetic access$91802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object p1
.end method

.method static synthetic access$91902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$92002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47384
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 47395
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47412
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$90200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 47730
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90500()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 47737
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47700
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47710
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47651
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47661
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47716
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47681
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47691
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47666
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47672
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->access$90400(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47460
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appType_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->appURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 47403
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 47498
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47517
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 47536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->recommendedApplicationIcon_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 47607
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->memoizedSerializedSize:I

    .line 47608
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 47641
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 47610
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 47611
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47612
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47615
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47616
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47619
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47620
    const/16 v2, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47623
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47624
    const/16 v2, 0x2c3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47627
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47628
    const/16 v2, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47631
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47632
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47635
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47636
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47639
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 47640
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->memoizedSerializedSize:I

    move v1, v0

    .line 47641
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47555
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->timestamp_:J

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 47436
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId:Z

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 47455
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType:Z

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 47474
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 47493
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 47512
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName:Z

    return v0
.end method

.method public hasRecommendedApplicationIcon()Z
    .locals 1

    .prologue
    .line 47531
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47550
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 47421
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$90300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47562
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47563
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47568
    :cond_0
    :goto_0
    return v0

    .line 47565
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47566
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47568
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 47735
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 47743
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47384
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

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
    .line 47577
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47578
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47580
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47581
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 47583
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47584
    const/16 v0, 0x248

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47586
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasRecommendedApplicationIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47587
    const/16 v0, 0x2c3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getRecommendedApplicationIcon()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 47589
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47590
    const/16 v0, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47592
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47593
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 47595
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47596
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 47598
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 47599
    return-void
.end method
