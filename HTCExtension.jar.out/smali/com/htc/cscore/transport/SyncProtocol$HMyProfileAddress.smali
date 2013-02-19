.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HMyProfileAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    }
.end annotation


# static fields
.field public static final ADDRESSTYPE_FIELD_NUMBER:I = 0x631

.field public static final CITY_FIELD_NUMBER:I = 0x3fc

.field public static final COUNTRY_FIELD_NUMBER:I = 0x570

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final MYPROFILEID_FIELD_NUMBER:I = 0x5a7

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5d6

.field public static final REGION_FIELD_NUMBER:I = 0xd3

.field public static final STATE_FIELD_NUMBER:I = 0x5a3

.field public static final STREET1_FIELD_NUMBER:I = 0x798

.field public static final STREET2_FIELD_NUMBER:I = 0x1c6

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final ZIPCODE_FIELD_NUMBER:I = 0x1a6

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;


# instance fields
.field private addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

.field private city_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasAddressType:Z

.field private hasCity:Z

.field private hasCountry:Z

.field private hasId:Z

.field private hasMyProfileId:Z

.field private hasPriority:Z

.field private hasRegion:Z

.field private hasState:Z

.field private hasStreet1:Z

.field private hasStreet2:Z

.field private hasTimestamp:Z

.field private hasZipCode:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private memoizedSerializedSize:I

.field private myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private priority_:I

.field private region_:Ljava/lang/String;

.field private state_:Ljava/lang/String;

.field private street1_:Ljava/lang/String;

.field private street2_:Ljava/lang/String;

.field private timestamp_:J

.field private zipCode_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25432
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    .line 26722
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 26726
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 26727
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25430
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 25541
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    .line 25560
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->city_:Ljava/lang/String;

    .line 25579
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->country_:Ljava/lang/String;

    .line 25598
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 25617
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 25636
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->priority_:I

    .line 25655
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->region_:Ljava/lang/String;

    .line 25674
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->state_:Ljava/lang/String;

    .line 25693
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street1_:Ljava/lang/String;

    .line 25712
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street2_:Ljava/lang/String;

    .line 25731
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->timestamp_:J

    .line 25750
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->zipCode_:Ljava/lang/String;

    .line 25821
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->memoizedSerializedSize:I

    .line 25430
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25427
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;-><init>()V

    return-void
.end method

.method static synthetic access$48002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType:Z

    return p1
.end method

.method static synthetic access$48102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    return-object p1
.end method

.method static synthetic access$48202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity:Z

    return p1
.end method

.method static synthetic access$48302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->city_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$48402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry:Z

    return p1
.end method

.method static synthetic access$48502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->country_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$48602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z

    return p1
.end method

.method static synthetic access$48700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$48702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$48802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z

    return p1
.end method

.method static synthetic access$48900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$48902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$49002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority:Z

    return p1
.end method

.method static synthetic access$49102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->priority_:I

    return p1
.end method

.method static synthetic access$49202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion:Z

    return p1
.end method

.method static synthetic access$49302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->region_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$49402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState:Z

    return p1
.end method

.method static synthetic access$49502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->state_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$49602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1:Z

    return p1
.end method

.method static synthetic access$49702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street1_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$49802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2:Z

    return p1
.end method

.method static synthetic access$49902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street2_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$50002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$50102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$50202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode:Z

    return p1
.end method

.method static synthetic access$50302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25427
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->zipCode_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    .prologue
    .line 25438
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 25455
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$47500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1

    .prologue
    .line 25970
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47800()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 25977
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25940
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25950
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25891
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25901
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25956
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25962
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25921
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25931
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25906
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25912
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;->access$47700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;
    .locals 1

    .prologue
    .line 25551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->addressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25570
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25589
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;
    .locals 1

    .prologue
    .line 25446
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 25608
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 25627
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 25646
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->priority_:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25665
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 25827
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->memoizedSerializedSize:I

    .line 25828
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 25881
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 25830
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 25831
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25832
    const/16 v2, 0xd3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25835
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25836
    const/16 v2, 0x1a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25839
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25840
    const/16 v2, 0x1c6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25843
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25844
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getTimestamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25847
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 25848
    const/16 v2, 0x3fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25851
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25852
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25855
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 25856
    const/16 v2, 0x570

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25859
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 25860
    const/16 v2, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25863
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25864
    const/16 v2, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25867
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 25868
    const/16 v2, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getPriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25871
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25872
    const/16 v2, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25875
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 25876
    const/16 v2, 0x798

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25879
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 25880
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->memoizedSerializedSize:I

    move v1, v0

    .line 25881
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25684
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street1_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25722
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->street2_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 25741
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->timestamp_:J

    return-wide v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25760
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->zipCode_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddressType()Z
    .locals 1

    .prologue
    .line 25546
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType:Z

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 25565
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 25584
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 25603
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId:Z

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 25622
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId:Z

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 25641
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority:Z

    return v0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 25660
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 25679
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState:Z

    return v0
.end method

.method public hasStreet1()Z
    .locals 1

    .prologue
    .line 25698
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1:Z

    return v0
.end method

.method public hasStreet2()Z
    .locals 1

    .prologue
    .line 25717
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 25736
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp:Z

    return v0
.end method

.method public hasZipCode()Z
    .locals 1

    .prologue
    .line 25755
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 25464
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$47600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25767
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25768
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 25773
    :cond_0
    :goto_0
    return v0

    .line 25770
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25771
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25773
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1

    .prologue
    .line 25975
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;
    .locals 1

    .prologue
    .line 25983
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 25427
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$Builder;

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
    .line 25782
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25783
    const/16 v0, 0xd3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25785
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasZipCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25786
    const/16 v0, 0x1a6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25788
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25789
    const/16 v0, 0x1c6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25791
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25792
    const/16 v0, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 25794
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25795
    const/16 v0, 0x3fc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25797
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25798
    const/16 v0, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25800
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25801
    const/16 v0, 0x570

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25803
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25804
    const/16 v0, 0x5a3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25806
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25807
    const/16 v0, 0x5a7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 25809
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25810
    const/16 v0, 0x5d6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getPriority()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25812
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasAddressType()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25813
    const/16 v0, 0x631

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress$HProfileAddressType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 25815
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->hasStreet1()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25816
    const/16 v0, 0x798

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getStreet1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 25818
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 25819
    return-void
.end method
