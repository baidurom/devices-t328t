.class public Lcom/htc/widget/TaskBar;
.super Landroid/widget/LinearLayout;
.source "TaskBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TaskBar$OnPanelClickListener;
    }
.end annotation


# static fields
.field public static final CENTER_VIEW:I = 0x1

.field public static final INDICATOR_VIEW:I = 0x3

.field public static final LEFT_VIEW:I = 0x0

.field public static final MODE_2TEXT_CENTER:I = 0x2

.field public static final MODE_CENTER_BUTTON:I = 0x0

.field public static final MODE_NO_CENTER:I = 0x3

.field public static final MODE_NO_CENTER_BUTTON:I = 0x1

.field public static final RIGHT_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TaskBar"

.field private static final localLOGV:Z


# instance fields
.field private m2LineText:Landroid/view/View;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowIndicator:Landroid/widget/ImageView;

.field private mArrowLeftButton:Landroid/widget/ImageView;

.field private mArrowRightButton:Landroid/widget/ImageView;

.field private mCenterLength:F

.field private mCenterText:Ljava/lang/String;

.field private mCenterTextColor:I

.field private mCenterTextShadeColor:I

.field private mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

.field private mContext:Landroid/content/Context;

.field private mControlCenterLayout:Landroid/widget/FrameLayout;

.field private mControlPanelCenter:Landroid/view/View;

.field private mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

.field private mControlPanelLeft:Landroid/widget/ImageView;

.field private mControlPanelRight:Landroid/widget/ImageView;

.field private mCountIndicator:Landroid/widget/TextView;

.field private mCurrentMode:I

.field private mPanelTextSize:F

.field private mTextDown:Landroid/widget/TextView;

.field private mTextUp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TaskBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    iput p2, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 110
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    .line 112
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    .line 114
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    .line 116
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 118
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 120
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    .line 122
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    .line 124
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    .line 126
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    .line 128
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    .line 130
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    .line 132
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    .line 134
    const/high16 v1, 0x4190

    iput v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 136
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 138
    const/high16 v1, -0x100

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    .line 140
    iput-object v2, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    .line 146
    const/high16 v1, 0x4348

    iput v1, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 226
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    .line 227
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->checkSize()V

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSize()V
    .locals 6

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    .line 250
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 252
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 253
    .local v0, mDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 255
    :cond_1
    const/high16 v2, 0x4311

    iput v2, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 258
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 13

    .prologue
    const/high16 v12, -0x100

    const/4 v11, 0x0

    const/high16 v10, -0x4080

    const/high16 v9, 0x3f80

    const/16 v8, 0x8

    .line 416
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "smile"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 417
    .local v3, smile_id:I
    const/4 v2, 0x0

    .line 418
    .local v2, smile:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {p0, v3}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 420
    :cond_0
    if-eqz v2, :cond_1

    .line 421
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_panel_navbar_hightlight"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_1
    const v4, 0x2020120

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    .line 424
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 426
    const v4, 0x202011a

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    .line 428
    const v4, 0x202011b

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    .line 429
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 434
    const v4, 0x202011c

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    .line 436
    const v4, 0x2020115

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    .line 437
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "common_notification_on"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_count_text_shadow"

    const v7, -0x99999a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 443
    :cond_3
    const v4, 0x2020112

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    .line 444
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    .line 445
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 449
    const v4, 0x2020119

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    .line 451
    const v4, 0x2020121

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    .line 453
    const v4, 0x2020113

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    .line 454
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    .line 455
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "command_bar_btn"

    invoke-static {v5, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 459
    const v4, 0x202011d

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    .line 460
    const v4, 0x202011e

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    .line 461
    const v4, 0x202011f

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    .line 463
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_6

    .line 464
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "common_main_panel_navbar"

    invoke-static {v4, v5}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_color"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_up_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 467
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_color"

    const v7, -0x59595a

    invoke-static {v5, v6, v7}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v6, "taskbar_down_text_shadow"

    invoke-static {v5, v6, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v9, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 469
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_color"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    .line 470
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const-string v5, "taskbar_center_text_shadow"

    invoke-static {v4, v5, v12}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    .line 475
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 476
    .local v0, in:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    const v5, 0x10a0001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 477
    .local v1, out:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 480
    iget v4, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    packed-switch v4, :pswitch_data_0

    .line 510
    :goto_1
    return-void

    .line 472
    .end local v0           #in:Landroid/view/animation/Animation;
    .end local v1           #out:Landroid/view/animation/Animation;
    :cond_6
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x206005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterColor(I)V

    .line 473
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x206005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v9, v9, v9, v4}, Lcom/htc/widget/TaskBar;->setCenterShadow(FFFI)V

    goto :goto_0

    .line 482
    .restart local v0       #in:Landroid/view/animation/Animation;
    .restart local v1       #out:Landroid/view/animation/Animation;
    :pswitch_0
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 486
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20501d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 487
    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    .line 490
    :pswitch_1
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v11}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    .line 494
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20501da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 495
    iget v4, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->setCenterTextsize(F)V

    goto :goto_1

    .line 498
    :pswitch_2
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 504
    :pswitch_3
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->m2LineText:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v4, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v4, v8}, Landroid/widget/TextSwitcher;->setVisibility(I)V

    goto/16 :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onShowMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .parameter "inputStr"
    .parameter "textSize"

    .prologue
    .line 758
    move-object/from16 v10, p1

    .line 759
    .local v10, outStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v1, v14

    .line 760
    .local v1, MaxLength:I
    new-instance v11, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 761
    .local v11, paint:Landroid/graphics/Paint;
    move/from16 v0, p2

    int-to-float v14, v0

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 762
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 763
    .local v2, chars:[C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 764
    .local v9, length:I
    const/4 v12, 0x0

    .line 767
    .local v12, totalWidth:F
    new-array v13, v9, [F

    .line 768
    .local v13, widths:[F
    const/4 v14, 0x0

    invoke-virtual {v11, v2, v14, v9, v13}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 770
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 772
    aget v14, v13, v8

    add-float/2addr v12, v14

    .line 770
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 775
    :cond_0
    int-to-float v14, v1

    cmpl-float v14, v12, v14

    if-lez v14, :cond_2

    .line 776
    const/4 v12, 0x0

    .line 777
    const-string v3, "..."

    .line 779
    .local v3, end:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 780
    .local v4, endchars:[C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 781
    .local v5, endlength:I
    const/4 v6, 0x0

    .line 783
    .local v6, endtotalWidth:F
    new-array v7, v5, [F

    .line 784
    .local v7, endwidths:[F
    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14, v5, v7}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 786
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    .line 788
    aget v14, v7, v8

    add-float/2addr v6, v14

    .line 786
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 791
    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    .line 792
    aget v14, v13, v8

    add-float/2addr v14, v12

    int-to-float v15, v1

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 793
    const/4 v14, 0x0

    invoke-static {v2, v14, v8}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v10

    .line 794
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 803
    .end local v3           #end:Ljava/lang/String;
    .end local v4           #endchars:[C
    .end local v5           #endlength:I
    .end local v6           #endtotalWidth:F
    .end local v7           #endwidths:[F
    :cond_2
    return-object v10

    .line 798
    .restart local v3       #end:Ljava/lang/String;
    .restart local v4       #endchars:[C
    .restart local v5       #endlength:I
    .restart local v6       #endtotalWidth:F
    .restart local v7       #endwidths:[F
    :cond_3
    aget v14, v13, v8

    add-float/2addr v12, v14

    .line 791
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private setLayout()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, CenterText:Ljava/lang/String;
    const/4 v2, 0x0

    .line 333
    .local v2, indicator:Ljava/lang/String;
    const/4 v4, 0x0

    .line 334
    .local v4, upText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 335
    .local v1, downText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 336
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #CenterText:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 338
    .restart local v0       #CenterText:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #indicator:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 339
    .restart local v2       #indicator:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    .line 345
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 360
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    .line 362
    if-eqz v0, :cond_1

    .line 363
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    if-eqz v2, :cond_2

    .line 365
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :cond_2
    if-eqz v4, :cond_3

    .line 368
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_3
    if-eqz v1, :cond_4

    .line 370
    iget-object v5, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_4
    return-void
.end method

.method private setLayout(I)V
    .locals 8
    .parameter "inputLauoutid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, CenterText:Ljava/lang/String;
    const/4 v2, 0x0

    .line 377
    .local v2, indicator:Ljava/lang/String;
    const/4 v5, 0x0

    .line 378
    .local v5, upText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 379
    .local v1, downText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 380
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #CenterText:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 382
    .restart local v0       #CenterText:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #indicator:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 383
    .restart local v2       #indicator:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/TaskBar;->removeAllViews()V

    .line 389
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 391
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 393
    .local v4, layout:Landroid/view/ViewGroup;
    if-eqz v4, :cond_5

    .line 394
    invoke-virtual {p0, v4}, Lcom/htc/widget/TaskBar;->addView(Landroid/view/View;)V

    .line 399
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->initView()V

    .line 401
    if-eqz v0, :cond_1

    .line 402
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v6, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1
    if-eqz v2, :cond_2

    .line 404
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_2
    if-eqz v5, :cond_3

    .line 407
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_3
    if-eqz v1, :cond_4

    .line 409
    iget-object v6, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_4
    return-void

    .line 396
    :cond_5
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "no theme resource"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getCenterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    return-object v0
.end method

.method public getCenterFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlCenterLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCenterTextLength()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    float-to-int v0, v0

    return v0
.end method

.method public getClickListener()Lcom/htc/widget/TaskBar$OnPanelClickListener;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    return-object v0
.end method

.method public getCountIndicator()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

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
    .line 953
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    return v0
.end method

.method public getLeftButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPanelTextSize()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getRightButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTwoLineDownTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTwoLineUpTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 270
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 273
    :try_start_0
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(II)V
    .locals 1
    .parameter "mode"
    .parameter "layoutId"

    .prologue
    .line 290
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCurrentMode:I

    .line 293
    :try_start_0
    invoke-direct {p0, p2}, Lcom/htc/widget/TaskBar;->setLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 887
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 888
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 889
    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 890
    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 891
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 892
    iget v1, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 894
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenter:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onCenterClick()V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onLeftClick()V

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    invoke-interface {v0}, Lcom/htc/widget/TaskBar$OnPanelClickListener;->onRightClick()V

    goto :goto_0
.end method

.method public onMeasureTextPixel(Ljava/lang/String;)F
    .locals 7
    .parameter "inputStr"

    .prologue
    .line 738
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 739
    .local v3, paint:Landroid/graphics/Paint;
    iget v6, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 740
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 741
    .local v0, chars:[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 742
    .local v2, length:I
    const/4 v4, 0x0

    .line 745
    .local v4, totalWidth:F
    new-array v5, v2, [F

    .line 746
    .local v5, widths:[F
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2, v5}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 748
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 750
    aget v6, v5, v1

    add-float/2addr v4, v6

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return v4
.end method

.method public setArrowDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 1081
    packed-switch p2, :pswitch_data_0

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1083
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1087
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1091
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setArrowIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1026
    :cond_0
    return-void
.end method

.method public setArrowIndicatorVisiable(Z)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1011
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setArrowVisiable(ZI)V
    .locals 2
    .parameter "bool"
    .parameter "viewlocation"

    .prologue
    .line 1041
    if-eqz p1, :cond_1

    .line 1042
    const/4 v0, 0x0

    .line 1046
    .local v0, state:I
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1066
    :cond_0
    :goto_1
    return-void

    .line 1044
    .end local v0           #state:I
    :cond_1
    const/4 v0, 0x4

    .restart local v0       #state:I
    goto :goto_0

    .line 1048
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1063
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1052
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1056
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCenterColor(I)V
    .locals 3
    .parameter "textcolor"

    .prologue
    .line 674
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 675
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 676
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 678
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterShadow(FFFI)V
    .locals 3
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 658
    iput p4, p0, Lcom/htc/widget/TaskBar;->mCenterTextShadeColor:I

    .line 659
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 660
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 662
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    if-eqz v1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    .line 693
    iget v1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/TaskBar;->onShowMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, showText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mControlPanelCenterTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 696
    .end local v0           #showText:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 990
    iput p1, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    .line 991
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 992
    .local v1, tv:Landroid/widget/TextView;
    iget v2, p0, Lcom/htc/widget/TaskBar;->mCenterTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 994
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCenterTextLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 723
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mCenterLength:F

    .line 724
    return-void
.end method

.method public setCenterTextsize(F)V
    .locals 3
    .parameter "fontsize"

    .prologue
    .line 639
    iput p1, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 640
    iget-object v2, p0, Lcom/htc/widget/TaskBar;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    .local v1, tv:Landroid/widget/TextView;
    iget v2, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 643
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCountIndicator(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    return-void
.end method

.method public setCountIndicator(Ljava/lang/String;)V
    .locals 1
    .parameter "num"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method public setCountIndicatorVisibility(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, isDiff:Z
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/htc/widget/TaskBar;->mCenterText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskBar;->setCenterText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0           #isDiff:Z
    :cond_1
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDownText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextDown:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "drawable"
    .parameter "viewlocation"

    .prologue
    .line 610
    packed-switch p2, :pswitch_data_0

    .line 627
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 612
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    goto :goto_0

    .line 616
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mControlPanelRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Lcom/htc/widget/TaskBar$OnPanelClickListener;)V
    .locals 0
    .parameter "panelclicklistener"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/htc/widget/TaskBar;->mClickListener:Lcom/htc/widget/TaskBar$OnPanelClickListener;

    .line 817
    return-void
.end method

.method public setPanelTextSize(I)V
    .locals 1
    .parameter "panelTextSize"

    .prologue
    .line 594
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/widget/TaskBar;->mPanelTextSize:F

    .line 595
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "themestyle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/htc/widget/TaskBar;->setLayout()V

    .line 323
    return-void
.end method

.method public setUpText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/htc/widget/TaskBar;->mTextUp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method
