.class public Lcom/htc/painting/penmenu15/view/ColorPickerSector;
.super Lcom/htc/painting/penmenu15/view/ColorPickerView;
.source "ColorPickerSector.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/transition/Transitionable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PenMenuNew"


# instance fields
.field private mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/painting/penmenu15/view/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 26
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/penmenu15/view/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setDrawingCacheEnabled(Z)V

    .line 38
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setDrawingCacheQuality(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public endDrag()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/DragDropManager;->endDrag()V

    .line 107
    :cond_0
    return-void
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->getSwatchColors()[I

    move-result-object v0

    return-object v0
.end method

.method public onTransitionIn()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "PenMenuNew"

    const-string v1, " ColorPickerSector onTransitionIn "

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->startDrag()V

    .line 80
    return-void
.end method

.method public onTransitionOut()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "PenMenuNew"

    const-string v1, " ColorPickerSector onTransitionOut "

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->endDrag()V

    .line 89
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->setSwatchColors([I)Z

    .line 56
    return-void
.end method

.method public setDragDropManager(Lcom/htc/painting/penmenu15/core/DragDropManager;)V
    .locals 0
    .parameter "DragDropManager"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    .line 47
    return-void
.end method

.method public startDrag()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/painting/penmenu15/view/ColorPickerSector;->mDragDropManager:Lcom/htc/painting/penmenu15/core/DragDropManager;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/DragDropManager;->startDrag()V

    .line 98
    :cond_0
    return-void
.end method
