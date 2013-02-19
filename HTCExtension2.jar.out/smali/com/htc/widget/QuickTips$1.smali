.class Lcom/htc/widget/QuickTips$1;
.super Landroid/widget/FrameLayout;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/QuickTips;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bp:Landroid/graphics/Paint;

.field private foreground:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/widget/QuickTips;


# direct methods
.method constructor <init>(Lcom/htc/widget/QuickTips;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "x0"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/QuickTipsAnimationView;->setImage(Landroid/graphics/Bitmap;)V

    .line 275
    iget-object v0, p0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "c"

    .prologue
    .line 204
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredWidth()I

    move-result v19

    .line 208
    .local v19, mw:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$002(I)I

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredHeight()I

    move-result v18

    .line 210
    .local v18, mh:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v19

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_3

    .line 211
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    .line 215
    const-string v3, "QuickTips"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    const-string v3, "QuickTips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create foreground "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to draw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredWidth()I

    move-result v3

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$200(Lcom/htc/widget/QuickTips;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v9, v3, v4

    .line 220
    .local v9, CloseButtonBitmapLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredWidth()I

    move-result v3

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v4

    sub-int v10, v3, v4

    .line 221
    .local v10, CloseButtonBitmapRight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/htc/widget/QuickTips;->access$100()I

    move-result v4

    add-int v11, v3, v4

    .line 222
    .local v11, CloseButtonBitmapTop:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$200(Lcom/htc/widget/QuickTips;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int v8, v11, v3

    .line 224
    .local v8, CloseButtonBitmapBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v9, v11, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    #setter for: Lcom/htc/widget/QuickTips;->mCloseRegion:Landroid/graphics/Rect;
    invoke-static {v3, v4}, Lcom/htc/widget/QuickTips;->access$402(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$200(Lcom/htc/widget/QuickTips;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->mCloseRegion:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$400(Lcom/htc/widget/QuickTips;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    const/4 v13, 0x0

    .line 227
    .local v13, CloseButtonPressLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredWidth()I

    move-result v14

    .line 228
    .local v14, CloseButtonPressRight:I
    const/4 v15, 0x0

    .line 229
    .local v15, CloseButtonPressTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/QuickTips$1;->getMeasuredHeight()I

    move-result v12

    .line 230
    .local v12, CloseButtonPressBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v13, v15, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    #setter for: Lcom/htc/widget/QuickTips;->mClosePressRegion:Landroid/graphics/Rect;
    invoke-static {v3, v4}, Lcom/htc/widget/QuickTips;->access$502(Lcom/htc/widget/QuickTips;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 233
    .end local v8           #CloseButtonBitmapBottom:I
    .end local v9           #CloseButtonBitmapLeft:I
    .end local v10           #CloseButtonBitmapRight:I
    .end local v11           #CloseButtonBitmapTop:I
    .end local v12           #CloseButtonPressBottom:I
    .end local v13           #CloseButtonPressLeft:I
    .end local v14           #CloseButtonPressRight:I
    .end local v15           #CloseButtonPressTop:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 236
    .local v17, foregroundWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 237
    .local v16, foregroundHeight:I
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v2, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$600(Lcom/htc/widget/QuickTips;)I

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$600(Lcom/htc/widget/QuickTips;)I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_8

    .line 241
    const-string v3, "QuickTips"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    const-string v3, "QuickTips"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bgBackgroundOverlay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I
    invoke-static {v5}, Lcom/htc/widget/QuickTips;->access$600(Lcom/htc/widget/QuickTips;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->bgBackgroundOverlay:I
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$600(Lcom/htc/widget/QuickTips;)I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    const-string v3, "QuickTips"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    int-to-float v4, v4

    move/from16 v0, v19

    int-to-float v5, v0

    div-int/lit8 v6, v18, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 253
    div-int/lit8 v3, v19, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    div-int/lit8 v5, v19, 0x2

    int-to-float v5, v5

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 256
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$700(Lcom/htc/widget/QuickTips;)Lcom/htc/widget/QuickTips$Tips;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    #calls: Lcom/htc/widget/QuickTips$Tips;->setBounds(IIII)V
    invoke-static {v3, v4, v5, v0, v1}, Lcom/htc/widget/QuickTips$Tips;->access$800(Lcom/htc/widget/QuickTips$Tips;IIII)V

    .line 257
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    const/16 v20, 0x1

    .line 258
    .local v20, portrait:Z
    :goto_1
    if-nez v20, :cond_6

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$700(Lcom/htc/widget/QuickTips;)Lcom/htc/widget/QuickTips$Tips;

    move-result-object v3

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    div-float/2addr v4, v5

    #calls: Lcom/htc/widget/QuickTips$Tips;->setMarginRatio(F)V
    invoke-static {v3, v4}, Lcom/htc/widget/QuickTips$Tips;->access$900(Lcom/htc/widget/QuickTips$Tips;F)V

    .line 260
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$700(Lcom/htc/widget/QuickTips;)Lcom/htc/widget/QuickTips$Tips;

    move-result-object v4

    #calls: Lcom/htc/widget/QuickTips$Tips;->clear()Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v4}, Lcom/htc/widget/QuickTips$Tips;->access$1000(Lcom/htc/widget/QuickTips$Tips;)Lcom/htc/widget/QuickTips$Tips;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/QuickTips;->prepareTips(ZLcom/htc/widget/QuickTips$Tips;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->tips:Lcom/htc/widget/QuickTips$Tips;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$700(Lcom/htc/widget/QuickTips;)Lcom/htc/widget/QuickTips$Tips;

    move-result-object v3

    #calls: Lcom/htc/widget/QuickTips$Tips;->draw(Landroid/graphics/Canvas;)V
    invoke-static {v3, v2}, Lcom/htc/widget/QuickTips$Tips;->access$1100(Lcom/htc/widget/QuickTips$Tips;Landroid/graphics/Canvas;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->CloseButtonBitmap:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/widget/QuickTips;->access$200(Lcom/htc/widget/QuickTips;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    invoke-virtual {v3}, Lcom/htc/widget/QuickTips;->onShow()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 266
    invoke-static {}, Lcom/htc/widget/QuickTips;->access$1200()Lcom/htc/view/animation/QuickTipsAnimationView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/QuickTips$1;->foreground:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/view/animation/QuickTipsAnimationView;->setImage(Landroid/graphics/Bitmap;)V

    .line 268
    :cond_7
    return-void

    .line 247
    .end local v20           #portrait:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/QuickTips$1;->bp:Landroid/graphics/Paint;

    const/high16 v4, -0x6700

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 257
    :cond_9
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->startTime:J
    invoke-static {v4}, Lcom/htc/widget/QuickTips;->access$1300(Lcom/htc/widget/QuickTips;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->mClosePressRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/widget/QuickTips;->access$500(Lcom/htc/widget/QuickTips;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->mClosePressRegion:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/widget/QuickTips;->access$500(Lcom/htc/widget/QuickTips;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/widget/QuickTips;->access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    #getter for: Lcom/htc/widget/QuickTips;->host:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/widget/QuickTips;->access$300(Lcom/htc/widget/QuickTips;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 288
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_0
    :goto_0
    const-string v2, "QuickTips"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    const-string v2, "QuickTips"

    const-string v3, "Close button press"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    invoke-virtual {v2}, Lcom/htc/widget/QuickTips;->onClose()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    const-string v2, "QuickTips"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    const-string v2, "QuickTips"

    const-string v3, "Tips Close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/QuickTips$1;->this$0:Lcom/htc/widget/QuickTips;

    invoke-virtual {v2}, Lcom/htc/widget/QuickTips;->userClose()V

    .line 306
    :cond_3
    :goto_1
    return v1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 290
    :catch_0
    move-exception v2

    goto :goto_0
.end method
