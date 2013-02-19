.class public Lcom/htc/shutdown/ConfigData;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field public audio:Ljava/lang/String;

.field public bgPath:Ljava/lang/String;

.field public fps:I

.field public image:Ljava/lang/String;

.field public pngLandPath:Ljava/lang/String;

.field public pngPath:Ljava/lang/String;

.field public screenX:I

.field public screenY:I

.field public useAudio:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/shutdown/ConfigData;->fps:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/shutdown/ConfigData;->bgPath:Ljava/lang/String;

    .line 61
    iput v1, p0, Lcom/htc/shutdown/ConfigData;->screenX:I

    .line 67
    iput v1, p0, Lcom/htc/shutdown/ConfigData;->screenY:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/shutdown/ConfigData;->useAudio:Z

    return-void
.end method
