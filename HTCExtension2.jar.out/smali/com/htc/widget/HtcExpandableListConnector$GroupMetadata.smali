.class Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "HtcExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1074
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1027
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    return-void
.end method

.method static obtain(IIIJ)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .locals 1
    .parameter "flPos"
    .parameter "lastChildFlPos"
    .parameter "gPos"
    .parameter "gId"

    .prologue
    .line 1031
    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;-><init>()V

    .line 1032
    .local v0, gm:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    iput p0, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    .line 1033
    iput p1, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 1034
    iput p2, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    .line 1035
    iput-wide p3, v0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gId:J

    .line 1036
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 1044
    if-nez p1, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1048
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1003
    check-cast p1, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->compareTo(Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1064
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    iget v0, p0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget-wide v0, p0, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1068
    return-void
.end method
