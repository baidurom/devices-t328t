.class public Lcom/htc/widget/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAlertController$AlertParams;,
        Lcom/htc/widget/HtcAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingSpecified:Z

    .line 110
    iput v0, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    .line 126
    iput v0, p0, Lcom/htc/widget/HtcAlertController;->mCheckedItem:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAlertController;->mTitleDivider:Z

    .line 140
    iput v1, p0, Lcom/htc/widget/HtcAlertController;->mAutoLinkMask:I

    .line 142
    new-instance v0, Lcom/htc/widget/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertController$1;-><init>(Lcom/htc/widget/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 197
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 199
    iput-object p3, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 200
    new-instance v0, Lcom/htc/widget/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/widget/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/widget/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/widget/HtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/htc/widget/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    :goto_0
    return v2

    .line 208
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 209
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 212
    check-cast v1, Landroid/view/ViewGroup;

    .line 213
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 214
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 216
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 217
    invoke-static {p0}, Lcom/htc/widget/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 222
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 13
    .parameter "button"

    .prologue
    const/16 v12, 0x1e0

    const/16 v11, 0xf0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x140

    .line 759
    const v6, 0x3f333333

    .line 760
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 761
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 764
    .local v0, conf:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v11, :cond_1

    :cond_0
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v11, :cond_4

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_4

    .line 766
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_3

    .line 767
    const v6, 0x3f028f5c

    .line 782
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v8, 0x202

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 783
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 784
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 785
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v7, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x2020001

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 790
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 791
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 792
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 795
    return-void

    .line 769
    .end local v2           #leftSpacer:Landroid/view/View;
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_3
    const v6, 0x3f70a3d7

    goto :goto_0

    .line 773
    :cond_4
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v12, :cond_5

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_6

    :cond_5
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_2

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v12, :cond_2

    .line 775
    :cond_6
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_7

    .line 776
    const v6, 0x3f170a3d

    goto :goto_0

    .line 778
    :cond_7
    const v6, 0x3f051eb8

    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 23
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    .line 803
    .local v10, fullDark:I
    if-nez v10, :cond_0

    .line 804
    const/16 v20, 0x0

    const v21, 0x20802f0

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 806
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 807
    .local v17, topDark:I
    if-nez v17, :cond_1

    .line 808
    const/16 v20, 0x1

    const v21, 0x20802f4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 810
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 811
    .local v7, centerDark:I
    if-nez v7, :cond_2

    .line 812
    const/16 v20, 0x2

    const v21, 0x20802ed

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 814
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_dark"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 815
    .local v4, bottomDark:I
    if-nez v4, :cond_3

    .line 816
    const/16 v20, 0x3

    const v21, 0x20802e6

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 818
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_full_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 819
    .local v9, fullBright:I
    if-nez v9, :cond_4

    .line 820
    const/16 v20, 0x4

    const v21, 0x20802ef

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 822
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_top_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 823
    .local v16, topBright:I
    if-nez v16, :cond_5

    .line 824
    const/16 v20, 0x5

    const v21, 0x20802f3

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 826
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 827
    .local v6, centerBright:I
    if-nez v6, :cond_6

    .line 828
    const/16 v20, 0x6

    const v21, 0x20802ec

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 830
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_bright"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 831
    .local v3, bottomBright:I
    if-nez v3, :cond_7

    .line 832
    const/16 v20, 0x7

    const v21, 0x20802e4

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 834
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_bottom_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 835
    .local v5, bottomMedium:I
    if-nez v5, :cond_8

    .line 836
    const/16 v20, 0x8

    const v21, 0x20802e8

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 838
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "popup_center_medium"

    invoke-static/range {v20 .. v21}, Lcom/htc/res/HtcResources;->getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 839
    .local v8, centerMedium:I
    if-nez v8, :cond_9

    .line 840
    const/16 v20, 0x9

    const v21, 0x20802ee

    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 852
    :cond_9
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 853
    .local v19, views:[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Z

    .line 854
    .local v13, light:[Z
    const/4 v12, 0x0

    .line 855
    .local v12, lastView:Landroid/view/View;
    const/4 v11, 0x0

    .line 857
    .local v11, lastLight:Z
    const/4 v14, 0x0

    .line 858
    .local v14, pos:I
    if-eqz p6, :cond_a

    .line 859
    aput-object p1, v19, v14

    .line 860
    const/16 v20, 0x0

    aput-boolean v20, v13, v14

    .line 861
    add-int/lit8 v14, v14, 0x1

    .line 869
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 p2, 0x0

    .end local p2
    :cond_b
    aput-object p2, v19, v14

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    const/16 v20, 0x0

    :goto_0
    aput-boolean v20, v13, v14

    .line 872
    add-int/lit8 v14, v14, 0x1

    .line 873
    if-eqz p3, :cond_c

    .line 874
    aput-object p3, v19, v14

    .line 875
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v13, v14

    .line 876
    add-int/lit8 v14, v14, 0x1

    .line 878
    :cond_c
    if-eqz p4, :cond_d

    .line 879
    aput-object p7, v19, v14

    .line 880
    const/16 v20, 0x1

    aput-boolean v20, v13, v14

    .line 883
    :cond_d
    const/4 v15, 0x0

    .line 884
    .local v15, setView:Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_14

    .line 885
    aget-object v18, v19, v14

    .line 886
    .local v18, v:Landroid/view/View;
    if-nez v18, :cond_f

    .line 884
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 871
    .end local v15           #setView:Z
    .end local v18           #v:Landroid/view/View;
    :cond_e
    const/16 v20, 0x1

    goto :goto_0

    .line 889
    .restart local v15       #setView:Z
    .restart local v18       #v:Landroid/view/View;
    :cond_f
    if-eqz v12, :cond_10

    .line 890
    if-nez v15, :cond_12

    .line 891
    if-eqz v11, :cond_11

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 895
    :goto_4
    const/4 v15, 0x1

    .line 897
    :cond_10
    move-object/from16 v12, v18

    .line 898
    aget-boolean v11, v13, v14

    goto :goto_2

    :cond_11
    move/from16 v20, v17

    .line 891
    goto :goto_3

    .line 893
    :cond_12
    if-eqz v11, :cond_13

    move/from16 v20, v6

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_13
    move/from16 v20, v7

    goto :goto_5

    .line 901
    .end local v18           #v:Landroid/view/View;
    :cond_14
    if-eqz v12, :cond_15

    .line 902
    if-eqz v15, :cond_19

    .line 907
    if-eqz v11, :cond_18

    if-eqz p4, :cond_17

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 939
    .end local v9           #fullBright:I
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAlertController;->mCheckedItem:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelection(I)V

    .line 946
    :cond_16
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v9       #fullBright:I
    :cond_17
    move v5, v3

    .line 907
    goto :goto_6

    :cond_18
    move v5, v4

    goto :goto_6

    .line 910
    :cond_19
    if-eqz v11, :cond_1a

    .end local v9           #fullBright:I
    :goto_8
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v9       #fullBright:I
    :cond_1a
    move v9, v10

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x0

    .line 672
    const/4 v3, 0x0

    .line 673
    .local v3, defaultButton:Landroid/view/View;
    const/4 v2, 0x1

    .line 674
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 675
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 676
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v7, 0x0

    .line 678
    .local v7, whichButtons:I
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x202005a

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 679
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 682
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 684
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x2020057

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 685
    .local v4, padding1:Landroid/view/View;
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 693
    .end local v4           #padding1:Landroid/view/View;
    :goto_0
    iget-boolean v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v8, :cond_0

    .line 694
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const v10, 0x33ffffff

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 695
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 699
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x2020056

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 700
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 703
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 705
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x2020002

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 706
    .local v5, padding2:Landroid/view/View;
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 718
    .end local v5           #padding2:Landroid/view/View;
    :goto_1
    iget-boolean v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v8, :cond_1

    .line 719
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 720
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 724
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x2020058

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 725
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 728
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 730
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x2020059

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 731
    .local v6, padding3:Landroid/view/View;
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 746
    .end local v6           #padding3:Landroid/view/View;
    :goto_2
    if-ne v7, v2, :cond_8

    .line 747
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 754
    :cond_2
    :goto_3
    if-eqz v7, :cond_a

    const/4 v8, 0x1

    :goto_4
    return v8

    .line 687
    :cond_3
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 689
    iget-object v3, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 690
    or-int/2addr v7, v2

    goto/16 :goto_0

    .line 709
    :cond_4
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 712
    if-nez v3, :cond_5

    .line 713
    iget-object v3, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 715
    :cond_5
    or-int/2addr v7, v0

    goto :goto_1

    .line 733
    :cond_6
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v10, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 736
    if-nez v3, :cond_7

    .line 737
    iget-object v3, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 739
    :cond_7
    or-int/2addr v7, v1

    goto :goto_2

    .line 748
    :cond_8
    if-ne v7, v0, :cond_9

    .line 749
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 750
    :cond_9
    if-ne v7, v1, :cond_2

    .line 751
    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_a
    move v8, v9

    .line 754
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "contentPanel"

    .prologue
    const v3, 0x2020050

    const/16 v2, 0x8

    .line 643
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 644
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 647
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x2020051

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 648
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 654
    iget v0, p0, Lcom/htc/widget/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/widget/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 664
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 666
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v8, 0x202004b

    const/4 v7, -0x1

    const/16 v10, 0x8

    .line 574
    const/4 v1, 0x1

    .line 576
    .local v1, hasTitle:Z
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 578
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 585
    .local v4, titleTemplate:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 639
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 588
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    if-lez v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 590
    .local v3, titleExist:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004c

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 591
    if-eqz v3, :cond_7

    .line 594
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004d

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/widget/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 596
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x20803e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 601
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    iget v5, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    if-lez v5, :cond_4

    .line 610
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 588
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v3           #titleExist:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 612
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v3       #titleExist:Z
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 613
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/widget/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 614
    :cond_5
    iget v5, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    if-ne v5, v7, :cond_0

    .line 619
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 623
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 633
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 634
    .restart local v4       #titleTemplate:Landroid/view/View;
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v5, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 15

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x202004f

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 515
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 516
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertController;->setupButtons()Z

    move-result v4

    .line 518
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x202004a

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 524
    .local v1, topPanel:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    .line 526
    .local v11, htcContext:Landroid/content/Context;
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 531
    :goto_0
    const/4 v0, 0x0

    sget-object v12, Lcom/htc/R$styleable;->AlertDialog:[I

    const v13, 0x2010078

    const/4 v14, 0x0

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 535
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 537
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020054

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 538
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 539
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_0
    const/4 v3, 0x0

    .line 543
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020052

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 545
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020053

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 546
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 548
    iget v0, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingLeft:I

    iget v12, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingTop:I

    iget v13, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingRight:I

    iget v14, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 558
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x202004e

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 562
    .local v9, divider:Landroid/view/View;
    iget-boolean v0, p0, Lcom/htc/widget/HtcAlertController;->mTitleDivider:Z

    if-eqz v0, :cond_5

    .line 563
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_3
    :goto_2
    move-object v0, p0

    .line 569
    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 570
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 571
    return-void

    .line 527
    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #hasTitle:Z
    .end local v7           #buttonPanel:Landroid/view/View;
    :catch_0
    move-exception v10

    .line 528
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 552
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v6       #hasTitle:Z
    .restart local v7       #buttonPanel:Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x2020052

    invoke-virtual {v0, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v12, 0x8

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 565
    .restart local v9       #divider:Landroid/view/View;
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 477
    packed-switch p1, :pswitch_data_0

    .line 485
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :pswitch_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 6

    .prologue
    const/high16 v3, 0x2

    .line 235
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 237
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x209000d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x20200ed

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, smile:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 246
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v2, "common_panel_navbar_hightlight"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HtcAlertController;->setupView()V

    .line 248
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 352
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 356
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_0
    iput-object p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 360
    iput-object p4, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 376
    :goto_0
    return-void

    .line 364
    :pswitch_1
    iput-object p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 365
    iput-object p4, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 369
    :pswitch_2
    iput-object p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 370
    iput-object p4, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .parameter "whichButton"
    .parameter "disabled"

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 401
    :goto_0
    return-void

    .line 391
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 395
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/widget/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 273
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 423
    iput p1, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    .line 424
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 425
    if-lez p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/widget/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    if-nez p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 442
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertController;->mForceInverseBackground:Z

    .line 456
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 295
    iput p2, p0, Lcom/htc/widget/HtcAlertController;->mAutoLinkMask:I

    .line 297
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 259
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/widget/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/htc/widget/HtcAlertController;->mTitleDivider:Z

    .line 410
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingSpecified:Z

    .line 314
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController;->mView:Landroid/view/View;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingSpecified:Z

    .line 327
    iput p2, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingLeft:I

    .line 328
    iput p3, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingTop:I

    .line 329
    iput p4, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingRight:I

    .line 330
    iput p5, p0, Lcom/htc/widget/HtcAlertController;->mViewSpacingBottom:I

    .line 331
    return-void
.end method
