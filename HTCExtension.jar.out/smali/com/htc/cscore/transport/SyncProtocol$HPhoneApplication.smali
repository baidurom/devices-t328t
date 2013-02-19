.class public final Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HPhoneApplication"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x75f

.field public static final APPURL_FIELD_NUMBER:I = 0x389

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;


# instance fields
.field private appId_:Ljava/lang/String;

.field private appURL_:Ljava/lang/String;

.field private hasAppId:Z

.field private hasAppURL:Z

.field private hasName:Z

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46174
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    .line 46703
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 46707
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 46708
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46172
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 46216
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appId_:Ljava/lang/String;

    .line 46235
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appURL_:Ljava/lang/String;

    .line 46254
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->name_:Ljava/lang/String;

    .line 46292
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->memoizedSerializedSize:I

    .line 46172
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46169
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;-><init>()V

    return-void
.end method

.method static synthetic access$88302(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId:Z

    return p1
.end method

.method static synthetic access$88402(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$88502(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL:Z

    return p1
.end method

.method static synthetic access$88602(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appURL_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$88702(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName:Z

    return p1
.end method

.method static synthetic access$88802(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46169
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->name_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1

    .prologue
    .line 46180
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46197
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$87800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1

    .prologue
    .line 46405
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88100()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 46412
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46375
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46385
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46326
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46336
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46391
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46397
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46356
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46366
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46341
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46347
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;->access$88000(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46226
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->appURL_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;
    .locals 1

    .prologue
    .line 46188
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 46298
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->memoizedSerializedSize:I

    .line 46299
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 46316
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 46301
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 46302
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46303
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46306
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46307
    const/16 v2, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46310
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46311
    const/16 v2, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46314
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 46315
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->memoizedSerializedSize:I

    move v1, v0

    .line 46316
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 46221
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId:Z

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 46240
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 46259
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 46206
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$87900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 46271
    const/4 v0, 0x1

    return v0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1

    .prologue
    .line 46410
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;
    .locals 1

    .prologue
    .line 46418
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;)Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46169
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication$Builder;

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
    .line 46280
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46281
    const/16 v0, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 46283
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46284
    const/16 v0, 0x389

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 46286
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46287
    const/16 v0, 0x75f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 46289
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 46290
    return-void
.end method
