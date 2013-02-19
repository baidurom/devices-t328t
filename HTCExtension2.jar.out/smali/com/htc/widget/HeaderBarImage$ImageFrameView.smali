.class Lcom/htc/widget/HeaderBarImage$ImageFrameView;
.super Landroid/widget/ImageView;
.source "HeaderBarImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HeaderBarImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFrameView"
.end annotation


# instance fields
.field private bitmapContent:Landroid/graphics/Bitmap;

.field private bitmapMask:Landroid/graphics/Bitmap;

.field private canvasContent:Landroid/graphics/Canvas;

.field private erasePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1198
    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    .line 1199
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1191
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    .line 1193
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1194
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1195
    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 1203
    const v0, 0x2080040

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->setBackgroundResource(I)V

    .line 1205
    #getter for: Lcom/htc/widget/HeaderBarImage;->currentMode:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1206
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)I

    move-result v1

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->initMaskEnvironment()V

    .line 1211
    return-void

    .line 1208
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v1

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initMaskEnvironment()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1215
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #calls: Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$300(Lcom/htc/widget/HeaderBarImage;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_2

    .line 1220
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    .line 1221
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1225
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 1227
    const/4 v1, 0x0

    .line 1228
    .local v1, contentWidth:I
    const/4 v0, 0x0

    .line 1229
    .local v0, contentHeight:I
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->currentMode:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 1230
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 1231
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameButtonSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 1240
    :goto_1
    const-string v5, "HeaderBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo frame content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const-string v5, "HeaderBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo frame padding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingRight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingBottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1245
    .local v2, tempMaskBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1249
    .local v3, tempMaskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208017e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1250
    .local v4, tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1251
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1253
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1254
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1258
    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #tempMaskBitmap:Landroid/graphics/Bitmap;
    .end local v3           #tempMaskCanvas:Landroid/graphics/Canvas;
    .end local v4           #tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 1259
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v6}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1261
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-nez v5, :cond_0

    .line 1262
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    goto/16 :goto_0

    .line 1233
    .restart local v0       #contentHeight:I
    .restart local v1       #contentWidth:I
    :cond_5
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 1234
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$200(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingBottom:I

    sub-int v0, v5, v6

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 1269
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1272
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1274
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1275
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1279
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 1286
    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->initMaskEnvironment()V

    .line 1287
    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->invalidate()V

    .line 1288
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1293
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 1296
    const-string v0, "HeaderBar"

    const-string v1, "photo frame mask recycle bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1302
    iput-object v2, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1308
    iput-object v2, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 1311
    :cond_1
    iput-object v2, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 1312
    return-void
.end method
