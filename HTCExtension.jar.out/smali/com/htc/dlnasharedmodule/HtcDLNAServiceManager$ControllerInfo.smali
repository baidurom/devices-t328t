.class public final Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# instance fields
.field public curContentID:Ljava/lang/String;

.field public mAlbum:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mDate:Ljava/lang/String;

.field public mDuration:J

.field public mFileSize:J

.field public mIndex:J

.field public mMute:Z

.field public mPlayState:I

.field public mPosition:J

.field public mRendererID:Ljava/lang/String;

.field public mRendererName:Ljava/lang/String;

.field public mRepeat:I

.field public mShuffle:Z

.field public mThumbnailPath:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTotal:J

.field public mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 199
    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 205
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    return-void
.end method
