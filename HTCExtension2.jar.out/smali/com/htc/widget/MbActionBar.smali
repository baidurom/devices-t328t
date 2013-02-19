.class public Lcom/htc/widget/MbActionBar;
.super Landroid/widget/RelativeLayout;
.source "MbActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;,
        Lcom/htc/widget/MbActionBar$OnPanelClickListener;
    }
.end annotation


# static fields
.field public static final CENTER_VIEW_1:I = 0x1

.field public static final CENTER_VIEW_2:I = 0x2

.field public static final CENTER_VIEW_3:I = 0x3

.field public static final DEFAULT_MODE:I = 0x2

.field public static final FIVE_BUTTON_MODE:I = 0x5

.field public static final FOUR_BUTTON_MODE:I = 0x4

.field public static final INDICATOR_VIEW:I = 0x5

.field public static final LEFT_VIEW:I = 0x0

.field public static final RIGHT_VIEW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActionBar"

.field public static final THREE_BUTTON_MODE:I = 0x3

.field private static final localLOGV:Z


# instance fields
.field private CENTER_BUTTON_WIDTH:I

.field private LEFT_BUTTON_WIDTH:I

.field private RIGHT_BUTTON_WIDTH:I

.field private mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlPanelCenter1:Landroid/widget/ImageView;

.field private mControlPanelCenter2:Landroid/widget/ImageView;

.field private mControlPanelCenter3:Landroid/widget/ImageView;

.field private mControlPanelLeft:Landroid/widget/ImageView;

.field private mControlPanelRight:Landroid/widget/ImageView;

.field private mCountIndicator:Landroid/widget/TextView;

.field private mCountShadowColor:I

.field private mCountTextColor:I

.field private mCurrentMode:I

.field private mImgCenterBackground:Landroid/graphics/drawable/Drawable;

.field private mImgDivider:Landroid/graphics/drawable/Drawable;

.field private mImgLeftBackground:Landroid/graphics/drawable/Drawable;

.field private mImgNotification:Landroid/graphics/drawable/Drawable;

.field private mImgRightBackground:Landroid/graphics/drawable/Drawable;

.field private mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/MbActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    iput v1, p0, Lcom/htc/widget/MbActionBar;->RIGHT_BUTTON_WIDTH:I

    .line 115
    iput v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    .line 117
    iput v1, p0, Lcom/htc/widget/MbActionBar;->CENTER_BUTTON_WIDTH:I

    .line 121
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 123
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 125
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    .line 129
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    .line 131
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    .line 133
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    .line 134
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    .line 135
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mImgDivider:Landroid/graphics/drawable/Drawable;

    .line 139
    iput-object v0, p0, Lcom/htc/widget/MbActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/MbActionBar;->mCurrentMode:I

    .line 256
    iput-object p1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->init()V

    .line 268
    return-void
.end method

.method private checkSize()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 377
    const v1, 0x2020112

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 378
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_left"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 387
    const v1, 0x2020113

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 388
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_right"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 397
    const v1, 0x2020116

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    .line 398
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 399
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_Center"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 407
    const v1, 0x2020117

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    .line 408
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 409
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_Center"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    .line 410
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 417
    const v1, 0x2020118

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    .line 418
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    .line 419
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "widget_taskbar_button_Center"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgCenterBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    const v1, 0x2020115

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    .line 428
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_6

    .line 429
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "common_notification_on"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 431
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/widget/MbActionBar;->mImgNotification:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_color"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MbActionBar;->mCountTextColor:I

    .line 433
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    const-string v2, "actionbar_count_text_shadow"

    const/high16 v3, -0x100

    invoke-static {v1, v2, v3}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/MbActionBar;->mCountShadowColor:I

    .line 434
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    iget v2, p0, Lcom/htc/widget/MbActionBar;->mCountTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 435
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/widget/MbActionBar;->mCountShadowColor:I

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 441
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x2050074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    .line 442
    const v1, 0x2050076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MbActionBar;->RIGHT_BUTTON_WIDTH:I

    .line 443
    const v1, 0x2050075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/widget/MbActionBar;->CENTER_BUTTON_WIDTH:I

    .line 445
    iget v1, p0, Lcom/htc/widget/MbActionBar;->mCurrentMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/MbActionBar;->setMode(I)V

    .line 446
    return-void
.end method

.method private setLayout()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, indicator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #indicator:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 327
    .restart local v0       #indicator:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->removeAllViews()V

    .line 329
    iget-object v3, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 331
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090059

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 333
    .local v2, layout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {p0, v2}, Lcom/htc/widget/MbActionBar;->addView(Landroid/view/View;)V

    .line 339
    invoke-direct {p0}, Lcom/htc/widget/MbActionBar;->initView()V

    .line 341
    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 344
    :cond_1
    return-void

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setLayout(I)V
    .locals 5
    .parameter "inputLauoutid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, indicator:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #indicator:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 352
    .restart local v0       #indicator:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->removeAllViews()V

    .line 354
    iget-object v3, p0, Lcom/htc/widget/MbActionBar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 356
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 358
    .local v2, layout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 359
    invoke-virtual {p0, v2}, Lcom/htc/widget/MbActionBar;->addView(Landroid/view/View;)V

    .line 364
    invoke-direct {p0}, Lcom/htc/widget/MbActionBar;->initView()V

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 369
    :cond_1
    return-void

    .line 361
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "no theme resource"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCenterButton1()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCenterButton2()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCenterButton3()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClickListener()Lcom/htc/widget/MbActionBar$OnPanelClickListener;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCountIndicatorView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLongClickListener()Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/MbActionBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(I)V
    .locals 1
    .parameter "layoutId"

    .prologue
    .line 309
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/widget/MbActionBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelClickListener;->onLeftClick()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelClickListener;->onCenterClick1()V

    goto :goto_0

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 659
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelClickListener;->onCenterClick2()V

    goto :goto_0

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelClickListener;->onCenterClick3()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    if-eqz v0, :cond_4

    .line 705
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;->onLeftLongClick()Z

    move-result v0

    .line 717
    :goto_0
    return v0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;->onRightLongClick()Z

    move-result v0

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;->onCenterLongClick1()Z

    move-result v0

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;->onCenterLongClick2()Z

    move-result v0

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 714
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    invoke-interface {v0}, Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;->onCenterLongClick3()Z

    move-result v0

    goto :goto_0

    .line 717
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCountIndicator(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 538
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setCountIndicator(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "num"

    .prologue
    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, isDiff:Z
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0           #isDiff:Z
    :cond_1
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 582
    packed-switch p2, :pswitch_data_0

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 584
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 592
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 596
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 600
    :pswitch_4
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 4
    .parameter "Mode"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 463
    iput p1, p0, Lcom/htc/widget/MbActionBar;->mCurrentMode:I

    .line 464
    invoke-virtual {p0}, Lcom/htc/widget/MbActionBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 465
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/htc/widget/MbActionBar;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 499
    :goto_0
    return-void

    .line 467
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    iget v2, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    const-string v1, "ActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionBar DEFAULT_MODE Width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    iget v2, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/MbActionBar;->CENTER_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    const-string v1, "ActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionBar THREE_BUTTON_MODE Width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    iget v2, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/MbActionBar;->CENTER_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 487
    const-string v1, "ActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionBar FOUR_BUTTON_MODE Width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcom/htc/widget/MbActionBar;->mControlPanelCenter3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget v1, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    iget v2, p0, Lcom/htc/widget/MbActionBar;->LEFT_BUTTON_WIDTH:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/MbActionBar;->CENTER_BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 495
    const-string v1, "ActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActionBar FIVE_BUTTON_MODE Width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, v0}, Lcom/htc/widget/MbActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/MbActionBar$OnPanelClickListener;)V
    .locals 0
    .parameter "panelclicklistener"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/htc/widget/MbActionBar;->mClickListener:Lcom/htc/widget/MbActionBar$OnPanelClickListener;

    .line 625
    return-void
.end method

.method public setOnLongClickListener(Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;)V
    .locals 0
    .parameter "panellongclicklistener"

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/widget/MbActionBar;->mLongClickListener:Lcom/htc/widget/MbActionBar$OnPanelLongClickListener;

    .line 677
    return-void
.end method
