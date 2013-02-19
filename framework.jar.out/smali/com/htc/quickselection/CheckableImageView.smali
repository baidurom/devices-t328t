.class public Lcom/htc/quickselection/CheckableImageView;
.super Landroid/widget/ImageView;
.source "CheckableImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/htc/quickselection/CheckableImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/htc/quickselection/CheckableImageView;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 123
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 125
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/htc/quickselection/CheckableImageView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/htc/quickselection/CheckableImageView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/htc/quickselection/CheckableImageView;->mergeDrawableStates([I[I)[I

    .line 141
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 273
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    .line 301
    :goto_0
    return v0

    .line 279
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/htc/quickselection/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lcom/htc/quickselection/CheckableImageView;->mChecked:Z

    .line 205
    invoke-virtual {p0}, Lcom/htc/quickselection/CheckableImageView;->refreshDrawableState()V

    .line 209
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/htc/quickselection/CheckableImageView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    .line 163
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
