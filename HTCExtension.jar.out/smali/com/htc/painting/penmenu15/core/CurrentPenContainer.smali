.class public Lcom/htc/painting/penmenu15/core/CurrentPenContainer;
.super Ljava/lang/Object;
.source "CurrentPenContainer.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
    }
.end annotation


# static fields
.field public static final KEY_ALL:Ljava/lang/String; = "all_config"

.field public static final KEY_COLOR:Ljava/lang/String; = "color"

.field public static final KEY_PENTYPE:Ljava/lang/String; = "penType"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu15/core/PenRepresentation;Landroid/content/Context;)V
    .locals 1
    .parameter "pen"
    .parameter "ctx"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mListeners:Ljava/util/List;

    .line 43
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setCurPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 44
    iput-object p2, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private clonePen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0, p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    return-object v0
.end method

.method private notifyCurrentPenChangedListeners(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 3
    .parameter "key"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;

    .line 173
    .local v1, list:Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;->onCurrentPenChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    goto :goto_0

    .line 175
    .end local v1           #list:Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;
    :cond_0
    return-void
.end method

.method private setCurPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "pen"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->setObserver(Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;)V

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    .line 52
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0, p0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->setObserver(Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;)V

    .line 53
    return-void
.end method


# virtual methods
.method public addCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getColor()I

    move-result v0

    return v0
.end method

.method public getCurrentPenIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getCurrentPenIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLastUsedTime()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getLastUsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPenRepresentation()Lcom/htc/painting/penmenu15/core/PenRepresentation;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    return-object v0
.end method

.method public getPenType()Lcom/htc/painting/penmenu15/core/PenType;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getPenType()Lcom/htc/painting/penmenu15/core/PenType;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getSize()I

    move-result v0

    return v0
.end method

.method public markLastUsed(J)V
    .locals 1
    .parameter "usedtime"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->markLastUsed(J)V

    .line 62
    return-void
.end method

.method public onPenConfigChanged(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "key"
    .parameter "before"

    .prologue
    .line 191
    const-string v0, "all_config"

    .line 192
    .local v0, curPenKey:Ljava/lang/String;
    const-string v1, "color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v0, "color"

    .line 198
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-direct {p0, v0, p2, v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->notifyCurrentPenChangedListeners(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 199
    return-void

    .line 194
    :cond_1
    const-string v1, "size"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v0, "size"

    goto :goto_0
.end method

.method public removeCurrentPenChangedListener(Lcom/htc/painting/penmenu15/core/CurrentPenContainer$CurrentPenChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getColor()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0, p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->setColor(I)V

    goto :goto_0
.end method

.method public setPenRepresentation(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V
    .locals 2
    .parameter "pen"

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->clonePen(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;

    move-result-object v0

    .line 138
    .local v0, oldPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->setCurPen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    .line 139
    const-string v1, "penType"

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->notifyCurrentPenChangedListeners(Ljava/lang/String;Lcom/htc/painting/penmenu15/core/PenRepresentation;Lcom/htc/painting/penmenu15/core/PenRepresentation;)V

    goto :goto_0
.end method

.method public setPenSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->getSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/core/CurrentPenContainer;->mCurPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

    invoke-interface {v0, p1}, Lcom/htc/painting/penmenu15/core/PenRepresentation;->setPenSize(I)V

    goto :goto_0
.end method
