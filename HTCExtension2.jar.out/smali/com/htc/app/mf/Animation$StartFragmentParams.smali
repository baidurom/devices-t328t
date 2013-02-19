.class public Lcom/htc/app/mf/Animation$StartFragmentParams;
.super Lcom/htc/app/mf/Animation$Params;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartFragmentParams"
.end annotation


# instance fields
.field mDoFadeInOut:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/htc/app/mf/Animation$Params;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/mf/Animation$StartFragmentParams;->mDoFadeInOut:Z

    return-void
.end method


# virtual methods
.method public setDoFadeInOut(Z)Lcom/htc/app/mf/Animation$StartFragmentParams;
    .locals 0
    .parameter "doFadeInOut"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/htc/app/mf/Animation$StartFragmentParams;->mDoFadeInOut:Z

    .line 181
    return-object p0
.end method
