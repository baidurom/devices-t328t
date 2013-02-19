.class public Lcom/htc/dlnainterface/DLNAStatusBarData;
.super Ljava/lang/Object;
.source "DLNAStatusBarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAStatusBarData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nFilterType:I

.field public szActionLaunch:Ljava/lang/String;

.field public szAppName:Ljava/lang/String;

.field public szControllerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/htc/dlnainterface/DLNAStatusBarData$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAStatusBarData$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 11
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 11
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAStatusBarData;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 29
    :try_start_0
    iget v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->nFilterType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szControllerName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAStatusBarData;->szActionLaunch:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
