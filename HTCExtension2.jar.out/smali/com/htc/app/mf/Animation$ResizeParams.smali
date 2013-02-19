.class public Lcom/htc/app/mf/Animation$ResizeParams;
.super Lcom/htc/app/mf/Animation$Params;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResizeParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;
    }
.end annotation


# instance fields
.field mAutoStart:Z

.field mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

.field mUseViewCache:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/htc/app/mf/Animation$Params;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mAutoStart:Z

    .line 124
    sget-object v0, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    iput-object v0, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mUseViewCache:Z

    .line 128
    return-void
.end method


# virtual methods
.method public setAutoStart(Z)Lcom/htc/app/mf/Animation$ResizeParams;
    .locals 0
    .parameter "autoStart"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mAutoStart:Z

    .line 140
    return-object p0
.end method

.method public bridge synthetic setDuration(I)Lcom/htc/app/mf/Animation$Params;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/htc/app/mf/Animation$ResizeParams;->setDuration(I)Lcom/htc/app/mf/Animation$ResizeParams;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)Lcom/htc/app/mf/Animation$ResizeParams;
    .locals 0
    .parameter "duration"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/htc/app/mf/Animation$Params;->setDuration(I)Lcom/htc/app/mf/Animation$Params;

    .line 159
    return-object p0
.end method

.method public bridge synthetic setRefresh(I)Lcom/htc/app/mf/Animation$Params;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/htc/app/mf/Animation$ResizeParams;->setRefresh(I)Lcom/htc/app/mf/Animation$ResizeParams;

    move-result-object v0

    return-object v0
.end method

.method public setRefresh(I)Lcom/htc/app/mf/Animation$ResizeParams;
    .locals 0
    .parameter "refresh"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/htc/app/mf/Animation$Params;->setRefresh(I)Lcom/htc/app/mf/Animation$Params;

    .line 164
    return-object p0
.end method

.method public setResizeTiming(Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;)Lcom/htc/app/mf/Animation$ResizeParams;
    .locals 0
    .parameter "timing"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    .line 145
    return-object p0
.end method

.method public setUseViewCache(Z)Lcom/htc/app/mf/Animation$ResizeParams;
    .locals 0
    .parameter "use"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/htc/app/mf/Animation$ResizeParams;->mUseViewCache:Z

    .line 154
    return-object p0
.end method
