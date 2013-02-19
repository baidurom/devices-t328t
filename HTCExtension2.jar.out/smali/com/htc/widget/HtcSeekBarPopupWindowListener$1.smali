.class Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;
.super Ljava/lang/Object;
.source "HtcSeekBarPopupWindowListener.java"

# interfaces
.implements Lcom/htc/widget/HtcSeekBarPopupWindowListener$CountPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcSeekBarPopupWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePopupPosition(Landroid/widget/SeekBar;I)I
    .locals 18
    .parameter "seekbar"
    .parameter "progress"

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    invoke-virtual {v15}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getContentView()Landroid/view/View;

    move-result-object v10

    .line 346
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 347
    .local v6, parent:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 348
    .local v13, ww:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 350
    .local v12, wh:I
    if-lez v13, :cond_0

    if-gtz v12, :cond_1

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    #calls: Lcom/htc/widget/HtcSeekBarPopupWindowListener;->getXoff()I
    invoke-static {v15}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->access$000(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)I

    move-result v15

    .line 384
    :goto_0
    return v15

    .line 353
    :cond_1
    shr-int/lit8 v1, v13, 0x1

    .line 355
    .local v1, hww:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v11, v15

    .line 356
    .local v11, w:F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 357
    .local v2, max:I
    if-lez v2, :cond_2

    move/from16 v0, p2

    int-to-float v15, v0

    int-to-float v0, v2

    move/from16 v16, v0

    div-float v9, v15, v16

    .line 358
    .local v9, scale:F
    :goto_1
    mul-float v7, v9, v11

    .line 359
    .local v7, posProgress:F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v15, v7

    int-to-float v0, v1

    move/from16 v16, v0

    sub-float v8, v15, v16

    .line 361
    .local v8, position:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    #getter for: Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I
    invoke-static {v15}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->access$100(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)[I

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 363
    const/4 v14, 0x0

    .line 364
    .local v14, xoff:F
    const/4 v3, 0x0

    .line 365
    .local v3, nArchorOffset:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    #getter for: Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I
    invoke-static {v15}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->access$100(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    neg-int v15, v15

    int-to-float v4, v15

    .line 366
    .local v4, nLeftest:F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/SeekBar;->getRootView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mDrawingLocation:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->access$100(Lcom/htc/widget/HtcSeekBarPopupWindowListener;)[I

    move-result-object v16

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v15, v15, v16

    sub-int/2addr v15, v13

    int-to-float v5, v15

    .line 369
    .local v5, nRightest:F
    cmpl-float v15, v4, v8

    if-lez v15, :cond_3

    .line 370
    move v14, v4

    .line 371
    sub-float v3, v4, v8

    .line 380
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    iget-object v15, v15, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    float-to-int v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/graphic/PopupWindowDrawable;->setOffset(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    iget-object v15, v15, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->mPopupWindowDrawable:Lcom/htc/graphic/PopupWindowDrawable;

    invoke-virtual {v15}, Lcom/htc/graphic/PopupWindowDrawable;->invalidateSelf()V

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcSeekBarPopupWindowListener$1;->this$0:Lcom/htc/widget/HtcSeekBarPopupWindowListener;

    float-to-int v0, v3

    move/from16 v16, v0

    #calls: Lcom/htc/widget/HtcSeekBarPopupWindowListener;->setArchorOff(I)V
    invoke-static/range {v15 .. v16}, Lcom/htc/widget/HtcSeekBarPopupWindowListener;->access$200(Lcom/htc/widget/HtcSeekBarPopupWindowListener;I)V

    .line 384
    float-to-int v15, v14

    goto/16 :goto_0

    .line 357
    .end local v3           #nArchorOffset:F
    .end local v4           #nLeftest:F
    .end local v5           #nRightest:F
    .end local v7           #posProgress:F
    .end local v8           #position:F
    .end local v9           #scale:F
    .end local v14           #xoff:F
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 372
    .restart local v3       #nArchorOffset:F
    .restart local v4       #nLeftest:F
    .restart local v5       #nRightest:F
    .restart local v7       #posProgress:F
    .restart local v8       #position:F
    .restart local v9       #scale:F
    .restart local v14       #xoff:F
    :cond_3
    cmpl-float v15, v8, v5

    if-lez v15, :cond_4

    .line 373
    move v14, v5

    .line 374
    sub-float v3, v5, v8

    goto :goto_2

    .line 376
    :cond_4
    move v14, v8

    .line 377
    const/4 v3, 0x0

    goto :goto_2
.end method
