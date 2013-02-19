.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HFootprint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x756

.field public static final CREATEDATE_FIELD_NUMBER:I = 0x39d

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x652

.field public static final FOOTPRINTCATEGORIESUPDATED_FIELD_NUMBER:I = 0x7a5

.field public static final FOOTPRINTCATEGORIES_FIELD_NUMBER:I = 0x661

.field public static final FOOTPRINTIMAGESUPDATED_FIELD_NUMBER:I = 0xe3

.field public static final FOOTPRINTIMAGES_FIELD_NUMBER:I = 0xd9

.field public static final FOOTPRINTMEMO_FIELD_NUMBER:I = 0x3f3

.field public static final ID_FIELD_NUMBER:I = 0x512

.field public static final IMAGEURL_FIELD_NUMBER:I = 0x64c

.field public static final ISPRIVATE_FIELD_NUMBER:I = 0x34f

.field public static final LATITUDE_FIELD_NUMBER:I = 0x223

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x6d

.field public static final NAME_FIELD_NUMBER:I = 0x1dc

.field public static final NOTE_FIELD_NUMBER:I = 0x2d8

.field public static final PHONENUMBER_FIELD_NUMBER:I = 0x5cd

.field public static final RATING_FIELD_NUMBER:I = 0x19f

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x211

.field public static final VOICEMEMOTIME_FIELD_NUMBER:I = 0x7d9

.field public static final WEBSITEURL_FIELD_NUMBER:I = 0x79

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;


# instance fields
.field private address_:Ljava/lang/String;

.field private createDate_:J

.field private description_:Ljava/lang/String;

.field private footprintCategoriesUpdated_:Z

.field private footprintCategories_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private footprintImagesUpdated_:Z

.field private footprintImages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;"
        }
    .end annotation
.end field

.field private footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

.field private hasAddress:Z

.field private hasCreateDate:Z

.field private hasDescription:Z

.field private hasFootprintCategoriesUpdated:Z

.field private hasFootprintImagesUpdated:Z

.field private hasFootprintMemo:Z

.field private hasId:Z

.field private hasImageUrl:Z

.field private hasIsPrivate:Z

.field private hasLatitude:Z

.field private hasLongitude:Z

.field private hasName:Z

.field private hasNote:Z

.field private hasPhoneNumber:Z

.field private hasRating:Z

.field private hasTimestamp:Z

.field private hasVoiceMemoTime:Z

.field private hasWebsiteURL:Z

.field private id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

.field private imageUrl_:Ljava/lang/String;

.field private isPrivate_:Z

.field private latitude_:D

.field private longitude_:D

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/String;

.field private note_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field private rating_:I

.field private timestamp_:J

.field private voiceMemoTime_:I

.field private websiteURL_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8782
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    .line 10682
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 10686
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 10687
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 8780
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 8824
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    .line 8843
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    .line 8862
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    .line 8880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    .line 8909
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    .line 8927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    .line 8956
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    .line 8975
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    .line 8994
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9013
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    .line 9032
    iput-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    .line 9051
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    .line 9070
    iput-wide v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    .line 9089
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    .line 9108
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    .line 9127
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    .line 9146
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    .line 9165
    iput-wide v4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    .line 9184
    iput v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    .line 9203
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    .line 9306
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    .line 8780
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8777
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;-><init>()V

    return-void
.end method

.method static synthetic access$16900(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z

    return p1
.end method

.method static synthetic access$17202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z

    return p1
.end method

.method static synthetic access$17402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    return-wide p1
.end method

.method static synthetic access$17502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z

    return p1
.end method

.method static synthetic access$17602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    return p1
.end method

.method static synthetic access$17802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    return p1
.end method

.method static synthetic access$17902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    return p1
.end method

.method static synthetic access$18002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    return p1
.end method

.method static synthetic access$18102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z

    return p1
.end method

.method static synthetic access$18200(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method static synthetic access$18202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p1
.end method

.method static synthetic access$18302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z

    return p1
.end method

.method static synthetic access$18400(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8777
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method static synthetic access$18402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z

    return p1
.end method

.method static synthetic access$18602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z

    return p1
.end method

.method static synthetic access$18802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    return p1
.end method

.method static synthetic access$18902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z

    return p1
.end method

.method static synthetic access$19002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$19102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$19302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z

    return p1
.end method

.method static synthetic access$19402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z

    return p1
.end method

.method static synthetic access$19602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19702(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$19902(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z

    return p1
.end method

.method static synthetic access$20002(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    return p1
.end method

.method static synthetic access$20102(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z

    return p1
.end method

.method static synthetic access$20202(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-wide p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$20302(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z

    return p1
.end method

.method static synthetic access$20402(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    return p1
.end method

.method static synthetic access$20502(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z

    return p1
.end method

.method static synthetic access$20602(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8777
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 8788
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$16400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 9487
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16700()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9457
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9467
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9408
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9418
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9473
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9479
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9438
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9448
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9423
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9429
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;->access$16600(Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 8853
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->createDate_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;
    .locals 1

    .prologue
    .line 8796
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getFootprintCategories(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "index"

    .prologue
    .line 8899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    return-object v0
.end method

.method public getFootprintCategoriesCount()I
    .locals 1

    .prologue
    .line 8893
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFootprintCategoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategories_:Ljava/util/List;

    return-object v0
.end method

.method public getFootprintCategoriesUpdated()Z
    .locals 1

    .prologue
    .line 8919
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintCategoriesUpdated_:Z

    return v0
.end method

.method public getFootprintImages(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "index"

    .prologue
    .line 8946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method public getFootprintImagesCount()I
    .locals 1

    .prologue
    .line 8940
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFootprintImagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImages_:Ljava/util/List;

    return-object v0
.end method

.method public getFootprintImagesUpdated()Z
    .locals 1

    .prologue
    .line 8966
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintImagesUpdated_:Z

    return v0
.end method

.method public getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    .prologue
    .line 8985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->footprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 9004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 9042
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->isPrivate_:Z

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 9061
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 9080
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->longitude_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->note_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 9156
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->rating_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 9312
    iget v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    .line 9313
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 9398
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 9315
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 9316
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9317
    const/16 v4, 0x6d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 9320
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9321
    const/16 v4, 0x79

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9324
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9325
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    const/16 v4, 0xd9

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 9328
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9329
    const/16 v4, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9332
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9333
    const/16 v4, 0x19f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 9336
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 9337
    const/16 v4, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9340
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9341
    const/16 v4, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9344
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 9345
    const/16 v4, 0x223

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v4

    add-int/2addr v2, v4

    .line 9348
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9349
    const/16 v4, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9352
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9353
    const/16 v4, 0x34f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9356
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 9357
    const/16 v4, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9360
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 9361
    const/16 v4, 0x3f3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9364
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 9365
    const/16 v4, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9368
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 9369
    const/16 v4, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9372
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 9373
    const/16 v4, 0x64c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9376
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 9377
    const/16 v4, 0x652

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9380
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 9381
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    const/16 v4, 0x661

    invoke-static {v4, v0}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_2

    .line 9384
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 9385
    const/16 v4, 0x756

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9388
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 9389
    const/16 v4, 0x7a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9392
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 9393
    const/16 v4, 0x7d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 9396
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 9397
    iput v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->memoizedSerializedSize:I

    move v3, v2

    .line 9398
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 9175
    iget-wide v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->timestamp_:J

    return-wide v0
.end method

.method public getVoiceMemoTime()I
    .locals 1

    .prologue
    .line 9194
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->voiceMemoTime_:I

    return v0
.end method

.method public getWebsiteURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9213
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->websiteURL_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 8829
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress:Z

    return v0
.end method

.method public hasCreateDate()Z
    .locals 1

    .prologue
    .line 8848
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 8867
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription:Z

    return v0
.end method

.method public hasFootprintCategoriesUpdated()Z
    .locals 1

    .prologue
    .line 8914
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    return v0
.end method

.method public hasFootprintImagesUpdated()Z
    .locals 1

    .prologue
    .line 8961
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    return v0
.end method

.method public hasFootprintMemo()Z
    .locals 1

    .prologue
    .line 8980
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 8999
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 9018
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl:Z

    return v0
.end method

.method public hasIsPrivate()Z
    .locals 1

    .prologue
    .line 9037
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate:Z

    return v0
.end method

.method public hasLatitude()Z
    .locals 1

    .prologue
    .line 9056
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .prologue
    .line 9075
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 9094
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName:Z

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 9113
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .locals 1

    .prologue
    .line 9132
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber:Z

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 9151
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 9170
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp:Z

    return v0
.end method

.method public hasVoiceMemoTime()Z
    .locals 1

    .prologue
    .line 9189
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime:Z

    return v0
.end method

.method public hasWebsiteURL()Z
    .locals 1

    .prologue
    .line 9208
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8814
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$16500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9220
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated:Z

    if-nez v3, :cond_1

    .line 9234
    :cond_0
    :goto_0
    return v2

    .line 9221
    :cond_1
    iget-boolean v3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated:Z

    if-eqz v3, :cond_0

    .line 9222
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 9223
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 9225
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9226
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 9228
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 9229
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9231
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 9232
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9234
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 9492
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;
    .locals 1

    .prologue
    .line 9500
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HFootprint;)Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8777
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HFootprint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9243
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLongitude()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9244
    const/16 v2, 0x6d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9246
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasWebsiteURL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9247
    const/16 v2, 0x79

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getWebsiteURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9249
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9250
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    const/16 v2, 0xd9

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 9252
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintImagesUpdated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9253
    const/16 v2, 0xe3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintImagesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9255
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasRating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9256
    const/16 v2, 0x19f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9258
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9259
    const/16 v2, 0x1dc

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9261
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9262
    const/16 v2, 0x211

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9264
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasLatitude()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9265
    const/16 v2, 0x223

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9267
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasNote()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9268
    const/16 v2, 0x2d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getNote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9270
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasIsPrivate()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9271
    const/16 v2, 0x34f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getIsPrivate()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9273
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasCreateDate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9274
    const/16 v2, 0x39d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getCreateDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9276
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintMemo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9277
    const/16 v2, 0x3f3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 9279
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasId()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9280
    const/16 v2, 0x512

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 9282
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9283
    const/16 v2, 0x5cd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9285
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 9286
    const/16 v2, 0x64c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9288
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 9289
    const/16 v2, 0x652

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9291
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 9292
    .local v0, element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    const/16 v2, 0x661

    invoke-virtual {p1, v2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_1

    .line 9294
    .end local v0           #element:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9295
    const/16 v2, 0x756

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9297
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasFootprintCategoriesUpdated()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 9298
    const/16 v2, 0x7a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getFootprintCategoriesUpdated()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9300
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->hasVoiceMemoTime()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9301
    const/16 v2, 0x7d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getVoiceMemoTime()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9303
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprint;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 9304
    return-void
.end method
