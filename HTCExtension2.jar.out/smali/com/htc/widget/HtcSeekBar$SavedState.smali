.class Lcom/htc/widget/HtcSeekBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "HtcSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/widget/HtcSeekBar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDisplayThumb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/htc/widget/HtcSeekBar$SavedState$1;

    invoke-direct {v0}, Lcom/htc/widget/HtcSeekBar$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/widget/HtcSeekBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    .line 549
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/widget/HtcSeekBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcSeekBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 540
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 541
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 553
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 554
    iget v0, p0, Lcom/htc/widget/HtcSeekBar$SavedState;->mDisplayThumb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return-void
.end method
