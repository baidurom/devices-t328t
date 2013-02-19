.class public abstract Lcom/htc/text/AbstractSocialMarkupRenderer;
.super Ljava/lang/Object;
.source "AbstractSocialMarkupRenderer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;
    }
.end annotation


# static fields
.field private static final BLANK_CHAR:Ljava/lang/String; = " "

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final NEW_LINE_CHAR:Ljava/lang/String; = "\n"

.field public static NOCOLOR:I = 0x0

.field private static final SPANNABLE_PLACE_HOLDER:Ljava/lang/String; = "\ufffc"

.field private static sBitmapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sBoldStyleSpan:Landroid/text/style/StyleSpan;

.field private static sDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPlurkQualifierSpanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/text/style/PlurkQualifierSpan;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultImage:Landroid/graphics/Bitmap;

.field private mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

.field private mQueryKey:Ljava/lang/String;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    const v0, 0x7162534

    sput v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    .line 55
    const-class v0, Lcom/htc/text/AbstractSocialMarkupRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBoldStyleSpan:Landroid/text/style/StyleSpan;

    .line 61
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 62
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 63
    sput-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private endAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V
    .locals 7
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 379
    .local v0, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 382
    .local v5, where:I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 384
    if-eq v5, v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    invoke-virtual {p1, v5, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 387
    .local v2, string:Ljava/lang/CharSequence;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 388
    .local v3, temp:Landroid/text/SpannableStringBuilder;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 389
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 390
    .local v4, tl:I
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 392
    .end local v2           #string:Ljava/lang/CharSequence;
    .end local v3           #temp:Landroid/text/SpannableStringBuilder;
    .end local v4           #tl:I
    :cond_0
    const-string v6, " "

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 394
    :cond_1
    return-void
.end method

.method private endLink(Landroid/text/SpannableStringBuilder;I)V
    .locals 8
    .parameter "text"
    .parameter "size"

    .prologue
    const/16 v7, 0x21

    .line 356
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 357
    .local v1, len:I
    const-class v5, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-static {p1, v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 358
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .local v4, where:I
    move-object v0, v2

    .line 359
    check-cast v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    .line 360
    .local v0, h:Lcom/htc/text/HtcHtmlToSpannedConverter$Href;
    iget-object v3, v0, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    .line 362
    .local v3, uri:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 364
    if-eq v4, v1, :cond_2

    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 366
    new-instance v5, Lcom/htc/text/style/URISpan;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v5, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 369
    :cond_0
    if-lez p2, :cond_1

    .line 370
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v5, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 373
    :cond_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    :cond_2
    return-void
.end method

.method private endText2(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V
    .locals 6
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v5, 0x21

    .line 583
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 584
    .local v0, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 585
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 587
    .local v2, where:I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 589
    if-eq v2, v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v3

    if-lez v3, :cond_0

    .line 591
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_1

    .line 595
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 599
    :cond_1
    return-void
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "background"
    .parameter "foreground"

    .prologue
    const/4 v8, 0x0

    .line 678
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move-object p1, v8

    .line 700
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 680
    .restart local p1
    :cond_1
    if-eqz p0, :cond_0

    .line 682
    if-nez p1, :cond_2

    move-object p1, p0

    .line 683
    goto :goto_0

    .line 685
    :cond_2
    const/4 v3, 0x0

    .line 686
    .local v3, combined:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 688
    .local v7, width:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 690
    .local v6, height:I
    :goto_2
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 692
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 693
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v0, v9, 0x2

    .line 694
    .local v0, backHoriShift:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v1, v9, 0x2

    .line 695
    .local v1, backVertShift:I
    int-to-float v9, v0

    int-to-float v10, v1

    invoke-virtual {v2, p0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v4, v9, 0x2

    .line 697
    .local v4, foreHoriShift:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v5, v9, 0x2

    .line 698
    .local v5, foreVertShift:I
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {v2, p1, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v3

    .line 700
    goto :goto_0

    .line 686
    .end local v0           #backHoriShift:I
    .end local v1           #backVertShift:I
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v4           #foreHoriShift:I
    .end local v5           #foreVertShift:I
    .end local v6           #height:I
    .end local v7           #width:I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    goto :goto_1

    .line 688
    .restart local v7       #width:I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_2
.end method

.method private getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "foreImageResId"
    .parameter "backImageRes"
    .parameter "backImagePkg"
    .parameter "imageSize"

    .prologue
    .line 706
    const/4 v1, 0x0

    .line 707
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 708
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    .line 710
    :cond_0
    const-string v4, "%d-%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 711
    .local v3, key:I
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 712
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 713
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 714
    .local v2, foregroundImage:Landroid/graphics/Bitmap;
    invoke-static {p1, p3, p4, p5, p5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNinePatchBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .local v0, backgroundImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 717
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .end local v0           #backgroundImage:Landroid/graphics/Bitmap;
    .end local v2           #foregroundImage:Landroid/graphics/Bitmap;
    :cond_1
    return-object v1
.end method

.method private getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "res"
    .parameter "pkg"

    .prologue
    const/4 v5, 0x0

    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v5

    .line 511
    :cond_1
    :goto_0
    return-object v0

    .line 493
    :cond_2
    const/4 v0, 0x0

    .line 494
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    if-nez v4, :cond_3

    .line 495
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 497
    :cond_3
    const-string v4, "%s-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 498
    .local v2, key:I
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 499
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 500
    const/4 v3, 0x0

    .line 502
    .local v3, resId:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "drawable"

    invoke-virtual {v4, p1, v6, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 508
    :goto_1
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v3, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    sget-object v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I
    .locals 4
    .parameter "text"
    .parameter "query"

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 568
    .local v1, start:I
    if-gez v1, :cond_0

    .line 569
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, value:Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 573
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static getNinePatchBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "res"
    .parameter "pkg"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 646
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-object v5

    .line 649
    :cond_1
    const/4 v9, 0x0

    .line 650
    .local v9, resId:I
    const/4 v1, 0x0

    .line 652
    .local v1, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 653
    const-string v4, "drawable"

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 657
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    .line 660
    invoke-static {v1, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 661
    .local v2, original:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 664
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 665
    .local v3, chunk:[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 666
    .local v0, np:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v0, v10, v10, p3, p4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 668
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 669
    .local v8, output:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 670
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object v5, v8

    .line 672
    goto :goto_0

    .line 654
    .end local v0           #np:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v2           #original:Landroid/graphics/Bitmap;
    .end local v3           #chunk:[B
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v8           #output:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 655
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 723
    if-nez p0, :cond_0

    .line 724
    const-string p0, ""

    .line 726
    .end local p0
    :cond_0
    return-object p0
.end method

.method private getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;IFF)Lcom/htc/text/style/PlurkQualifierSpan;
    .locals 8
    .parameter "type"
    .parameter "name"
    .parameter "size"
    .parameter "xdim"
    .parameter "ydim"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 630
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 632
    :cond_0
    const-string v1, "%s-%s-%d-%f-%f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    .line 633
    .local v7, key:I
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    check-cast v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .line 634
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    if-nez v0, :cond_1

    .line 635
    new-instance v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    int-to-float v4, p3

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 636
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_1
    return-object v0
.end method

.method private getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TT;>;"
    if-nez p1, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 734
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private handleBr(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNewLineSpanDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 21
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 447
    const-string v17, ""

    const-string v18, "pkg"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 448
    .local v13, pkg:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "res"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 449
    .local v14, res:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "res_alt"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 450
    .local v15, resAlt:Ljava/lang/String;
    const-string v17, ""

    const-string v18, "alg"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, algString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalEmoticonDisplayed()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 454
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 462
    .local v7, d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 463
    .local v4, alg:I
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 465
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 471
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v17

    if-nez v17, :cond_2

    instance-of v0, v7, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v7

    .line 473
    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 474
    .local v6, b:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v10

    .line 475
    .local v10, h:F
    :goto_2
    move v11, v10

    .line 476
    .local v11, height:F
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 477
    .local v16, width:F
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    float-to-int v0, v11

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 479
    .local v8, d2:Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v8

    .line 481
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v8           #d2:Landroid/graphics/drawable/BitmapDrawable;
    .end local v10           #h:F
    .end local v11           #height:F
    .end local v16           #width:F
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 483
    .local v12, len:I
    const-string/jumbo v17, "\ufffc"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 484
    new-instance v17, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x21

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 487
    .end local v12           #len:I
    :cond_3
    return-void

    .line 456
    .end local v4           #alg:I
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 457
    .restart local v7       #d:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 458
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto/16 :goto_0

    .line 466
    .restart local v4       #alg:I
    :catch_0
    move-exception v9

    .line 467
    .local v9, e:Ljava/lang/NumberFormatException;
    sget-object v17, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[NumberFormatException] alg == "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #b:Landroid/graphics/Bitmap;
    :cond_5
    const/high16 v10, 0x41a0

    goto/16 :goto_2
.end method

.method private handleEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "text"
    .parameter "attributes"

    .prologue
    const/16 v8, 0x21

    .line 603
    const-string v5, ""

    const-string v6, "argb"

    invoke-interface {p2, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, argb:Ljava/lang/String;
    const-string v5, ""

    const-string v6, "value"

    invoke-interface {p2, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 607
    .local v1, argbIndex:I
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 615
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 616
    .local v3, len:I
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 617
    if-eqz v1, :cond_2

    .line 618
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v3, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 624
    :cond_1
    :goto_1
    return-void

    .line 610
    .end local v3           #len:I
    :catch_0
    move-exception v2

    .line 611
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NumberFormatException] argb == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #len:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v5

    sget v6, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v5, v6, :cond_1

    .line 621
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v3, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private handleEndTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 265
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleBr(Landroid/text/SpannableStringBuilder;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "lk1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 271
    :cond_2
    const-string v0, "lk2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 273
    :cond_3
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const-string v0, "plq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, "emo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "t2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endText2(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V

    goto :goto_0

    .line 285
    :cond_4
    const-string v0, "emp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "ak1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->endAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "key"

    .prologue
    const/16 v5, 0x21

    .line 549
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 550
    .local v2, textLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 551
    .local v0, keyLength:I
    if-eqz p1, :cond_1

    if-lt v2, v0, :cond_1

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I

    move-result v1

    .line 553
    .local v1, start:I
    if-ltz v1, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_0

    .line 555
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_1

    .line 559
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 564
    .end local v1           #start:I
    :cond_1
    return-void
.end method

.method private handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"
    .parameter "imageGetter"
    .parameter "callback"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    const-string v4, ""

    const-string v5, "uri"

    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, uri:Ljava/lang/String;
    const-string v4, ""

    const-string v5, "pv"

    invoke-interface {p2, v4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, pv:Ljava/lang/String;
    const/4 v0, 0x0

    .line 403
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 404
    invoke-interface {p3, v2}, Lcom/htc/text/HtcHtml$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    :cond_0
    if-nez v0, :cond_1

    .line 408
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultImageResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 412
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 413
    .local v1, len:I
    const-string/jumbo v4, "\ufffc"

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 415
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 416
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 419
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    new-instance v4, Lcom/htc/text/style/URISpan;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 426
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #len:I
    .end local v2           #pv:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 430
    const-string v0, ""

    const-string v3, "type"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, type:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierFontSizeInPixel()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableXDim()F

    move-result v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;IFF)Lcom/htc/text/style/PlurkQualifierSpan;

    move-result-object v7

    .line 437
    .local v7, qspan:Lcom/htc/text/style/PlurkQualifierSpan;
    invoke-virtual {v7}, Lcom/htc/text/style/PlurkQualifierSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 439
    .local v6, len:I
    const-string/jumbo v0, "\ufffc"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 440
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {p1, v7, v6, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 443
    .end local v6           #len:I
    :cond_0
    return-void
.end method

.method private handleProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter "text"
    .parameter "attributes"

    .prologue
    const/4 v4, 0x1

    const/16 v9, 0x21

    .line 316
    const-string v0, ""

    const-string v3, "uri"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, uri:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, name:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name_alt"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, nameAlt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalProfileNameDisplayed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    move-object v2, v7

    .line 330
    .local v2, n:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 331
    .local v6, len:I
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Lcom/htc/text/style/ProfileSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/style/ProfileSpan;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 336
    :cond_1
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBoldStyleSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 337
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v0

    sget v3, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v0, v3, :cond_2

    .line 338
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v0

    if-lez v0, :cond_3

    .line 342
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v0, v6, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 345
    :cond_3
    return-void

    .line 324
    .end local v2           #n:Ljava/lang/String;
    .end local v6           #len:I
    :cond_4
    move-object v2, v8

    .line 325
    .restart local v2       #n:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    move-object v2, v7

    goto :goto_0
.end method

.method private handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "tag"
    .parameter "attributes"

    .prologue
    .line 237
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const-string v0, "pf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "lk1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 243
    :cond_3
    const-string v0, "lk2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 245
    :cond_4
    const-string v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 247
    :cond_5
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Lcom/htc/text/HtcHtml$ImageGetter;Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 249
    :cond_6
    const-string v0, "plq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handlePlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 251
    :cond_7
    const-string v0, "emo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 252
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 253
    :cond_8
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 255
    :cond_9
    const-string v0, "t2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 257
    :cond_a
    const-string v0, "emp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 259
    :cond_b
    const-string v0, "ak1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 516
    const-string v0, ""

    const-string v3, "value"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 518
    .local v11, ts:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 519
    .local v1, old:J
    const-string v0, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 527
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 528
    .local v12, where:I
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0x5265c00

    const v7, 0x40010

    invoke-static/range {v0 .. v7}, Lcom/htc/text/util/HtcDateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v8

    .line 535
    .local v8, converted:Ljava/lang/CharSequence;
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 536
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 538
    .local v10, len:I
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v0

    if-lez v0, :cond_1

    .line 539
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v12, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v0

    sget v3, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v0, v3, :cond_2

    .line 543
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v12, v10, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 546
    :cond_2
    return-void

    .line 522
    .end local v8           #converted:Ljava/lang/CharSequence;
    .end local v10           #len:I
    .end local v12           #where:I
    :catch_0
    move-exception v9

    .line 523
    .local v9, e:Ljava/lang/NumberFormatException;
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NumberFormatException] ts == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense/widget/SNLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private start(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .parameter "text"
    .parameter "mark"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 579
    .local v0, len:I
    const/16 v1, 0x11

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 580
    return-void
.end method

.method private startLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 348
    const-string v2, ""

    const-string v3, "uri"

    invoke-interface {p2, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 351
    .local v1, len:I
    new-instance v2, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;

    invoke-direct {v2, v0}, Lcom/htc/text/HtcHtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 353
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sPlurkQualifierSpanMap:Ljava/util/Map;

    .line 232
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sDrawableMap:Ljava/util/Map;

    .line 233
    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->sBitmapMap:Ljava/util/Map;

    .line 234
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->convert(Landroid/graphics/drawable/Drawable$Callback;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/graphics/drawable/Drawable$Callback;)Landroid/text/Spanned;
    .locals 7
    .parameter "callback"

    .prologue
    .line 199
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 200
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultImageResId()I

    move-result v2

    const-string v3, "fs_bg_loading"

    const-string v4, "com.htc.friendstream"

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 203
    new-instance v0, Lcom/htc/graphics/UrlImageGetter;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/graphics/UrlImageGetter;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mImageGetter:Lcom/htc/text/HtcHtml$ImageGetter;

    .line 205
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 207
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 208
    :catch_0
    move-exception v6

    .line 209
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v6           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v6

    .line 211
    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v6           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v6

    .line 217
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 219
    .local v6, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 220
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleEndTag(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDefaultImageResId()I
.end method

.method protected abstract getEmphasisTextFontColor()I
.end method

.method protected getHighlightBackgroundColor()I
    .locals 1

    .prologue
    .line 860
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getHighlightForegroundColor()I
    .locals 1

    .prologue
    .line 856
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected abstract getImageSize()I
.end method

.method protected getPlurkQualifierDrawableXDim()F
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierDrawableYDim()F
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierFontSizeInPixel()I
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryTextFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected abstract getPrimaryLinkFontSizeInPixel()I
.end method

.method protected abstract getPrimaryTextFontSizeInPixel()I
.end method

.method protected abstract getProfileFontColor()I
.end method

.method protected abstract getProfileFontSizeInPixel()I
.end method

.method protected abstract getSecondaryLinkFontSizeInPixel()I
.end method

.method protected abstract getSecondaryTextFontColor()I
.end method

.method protected abstract getSecondaryTextFontSizeInPixel()I
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method protected isImageDisplayed()Z
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x1

    return v0
.end method

.method protected isNewLineSpanDisplayed()Z
    .locals 1

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v0

    return v0
.end method

.method protected isNormalEmoticonDisplayed()Z
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x1

    return v0
.end method

.method protected isNormalProfileNameDisplayed()Z
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x1

    return v0
.end method

.method protected isSpanClickable()Z
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x1

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 0
    .parameter "source"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 147
    return-void
.end method

.method public setHighlight(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 0
    .parameter "key"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p2, p4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 173
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method
