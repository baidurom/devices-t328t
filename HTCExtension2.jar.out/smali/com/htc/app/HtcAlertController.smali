.class public Lcom/htc/app/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/HtcAlertController$AlertParams;,
        Lcom/htc/app/HtcAlertController$ButtonHandler;
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

.field private mIsAutoMotive:Z

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mPadding1:Landroid/view/View;

.field private mPadding2:Landroid/view/View;

.field private mPadding3:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

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
    .locals 4
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 113
    iput v2, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    .line 126
    iput-boolean v3, p0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 131
    iput v2, p0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    .line 142
    iput-boolean v3, p0, Lcom/htc/app/HtcAlertController;->mTitleDivider:Z

    .line 143
    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    .line 146
    iput v0, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    .line 151
    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    .line 155
    iput-object v1, p0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 156
    iput-object v1, p0, Lcom/htc/app/HtcAlertController;->mPadding2:Landroid/view/View;

    .line 157
    iput-object v1, p0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 160
    new-instance v0, Lcom/htc/app/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcAlertController$1;-><init>(Lcom/htc/app/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 217
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 219
    iput-object p3, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 220
    new-instance v0, Lcom/htc/app/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/app/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/app/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/app/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/app/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/app/HtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    :goto_0
    return v2

    .line 228
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 229
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 232
    check-cast v1, Landroid/view/ViewGroup;

    .line 233
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 234
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 235
    add-int/lit8 v0, v0, -0x1

    .line 236
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 237
    invoke-static {p0}, Lcom/htc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 242
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 10
    .parameter "button"

    .prologue
    const/4 v9, 0x0

    .line 914
    const/4 v6, 0x0

    .line 915
    .local v6, weight:F
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 916
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 968
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v8, 0x202

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 969
    .local v2, leftSpacer:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 970
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 971
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x2020001

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 976
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 977
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 978
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 981
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_full_dark"

    const v21, 0x20802f0

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 989
    .local v9, fullDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_top_dark"

    const v21, 0x20802f4

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 990
    .local v16, topDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_center_dark"

    const v21, 0x20802ed

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 991
    .local v6, centerDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_bottom_dark"

    const v21, 0x20802e6

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 992
    .local v3, bottomDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_full_bright"

    const v21, 0x20802ef

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 993
    .local v8, fullBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_top_bright"

    const v21, 0x20802f3

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 994
    .local v15, topBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_center_bright"

    const v21, 0x20802ec

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 995
    .local v5, centerBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_bottom_bright"

    const v21, 0x20802e4

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 996
    .local v2, bottomBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_bottom_medium"

    const v21, 0x20802e8

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 997
    .local v4, bottomMedium:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "popup_center_medium"

    const v21, 0x20802ee

    invoke-static/range {v19 .. v21}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 1008
    .local v7, centerMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 1009
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 1010
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 1011
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 1013
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 1014
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 1015
    aput-object p1, v18, v13

    .line 1016
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 1017
    add-int/lit8 v13, v13, 0x1

    .line 1025
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v18, v13

    .line 1029
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 1031
    add-int/lit8 v13, v13, 0x1

    .line 1032
    if-eqz p3, :cond_2

    .line 1033
    aput-object p3, v18, v13

    .line 1034
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 1035
    add-int/lit8 v13, v13, 0x1

    .line 1037
    :cond_2
    if-nez p4, :cond_3

    if-eqz p6, :cond_4

    .line 1038
    :cond_3
    aput-object p7, v18, v13

    .line 1039
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 1042
    :cond_4
    const/4 v14, 0x0

    .line 1043
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 1044
    aget-object v17, v18, v13

    .line 1045
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 1043
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1048
    :cond_5
    if-eqz v11, :cond_6

    .line 1049
    if-nez v14, :cond_8

    .line 1050
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1054
    :goto_3
    const/4 v14, 0x1

    .line 1056
    :cond_6
    move-object/from16 v11, v17

    .line 1057
    aget-boolean v10, v12, v13

    goto :goto_1

    :cond_7
    move/from16 v19, v16

    .line 1050
    goto :goto_2

    .line 1052
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v5

    :goto_4
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    move/from16 v19, v6

    goto :goto_4

    .line 1060
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_c

    .line 1061
    if-eqz v14, :cond_10

    .line 1066
    if-eqz v10, :cond_f

    if-eqz p4, :cond_e

    .end local v4           #bottomMedium:I
    :cond_b
    :goto_5
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1099
    .end local v8           #fullBright:I
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 1106
    :cond_d
    return-void

    .restart local v4       #bottomMedium:I
    .restart local v8       #fullBright:I
    :cond_e
    move v4, v2

    .line 1066
    goto :goto_5

    :cond_f
    if-nez p4, :cond_b

    move v4, v3

    goto :goto_5

    .line 1070
    :cond_10
    if-eqz v10, :cond_11

    .end local v8           #fullBright:I
    :goto_7
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v8       #fullBright:I
    :cond_11
    move v8, v9

    goto :goto_7
.end method

.method private setupButtons()Z
    .locals 22

    .prologue
    .line 731
    const/4 v9, 0x0

    .line 732
    .local v9, defaultButton:Landroid/view/View;
    const/4 v4, 0x1

    .line 733
    .local v4, BIT_BUTTON_POSITIVE:I
    const/4 v2, 0x2

    .line 734
    .local v2, BIT_BUTTON_NEGATIVE:I
    const/4 v3, 0x4

    .line 735
    .local v3, BIT_BUTTON_NEUTRAL:I
    const/16 v18, 0x0

    .line 736
    .local v18, whichButtons:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x202005a

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020057

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 743
    .local v13, padding1:Landroid/view/View;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 751
    .end local v13           #padding1:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x33ffffff

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020056

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020002

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 764
    .local v14, padding2:Landroid/view/View;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 776
    .end local v14           #padding2:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x106000c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 782
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020058

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020059

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 789
    .local v15, padding3:Landroid/view/View;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 804
    .end local v15           #padding3:Landroid/view/View;
    :goto_2
    move/from16 v0, v18

    if-ne v0, v4, :cond_a

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 812
    :cond_2
    :goto_3
    const/4 v8, 0x0

    .line 814
    .local v8, context:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 825
    :goto_4
    if-eqz v8, :cond_4

    .line 827
    const-string v19, "popup_bottom_left_rest"

    const v20, 0x20802e7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 828
    .local v11, left_bkg:I
    const-string v19, "popup_bottom_center_rest"

    const v20, 0x20802e5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 829
    .local v7, center_bkg:I
    const-string v19, "popup_bottom_right_rest"

    const v20, 0x20802ea

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v17

    .line 830
    .local v17, right_bkg:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 831
    .local v12, mRes:Landroid/content/res/Resources;
    const-string v19, "title_primary"

    const v20, 0x2060099

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 833
    .local v6, button_skin:Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 834
    const v5, 0x203007c

    .line 840
    .local v5, button_font_style:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020057

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020002

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mPadding2:Landroid/view/View;

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020059

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x2020055

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 844
    .local v16, padding4:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x2080036

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding2:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x2080036

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding2:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x2080036

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 850
    if-eqz v16, :cond_3

    .line 851
    const v19, 0x2080036

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 852
    const/16 v19, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_3
    move/from16 v0, v18

    if-ne v0, v4, :cond_d

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 909
    .end local v5           #button_font_style:I
    .end local v6           #button_skin:Landroid/content/res/ColorStateList;
    .end local v7           #center_bkg:I
    .end local v11           #left_bkg:I
    .end local v12           #mRes:Landroid/content/res/Resources;
    .end local v16           #padding4:Landroid/view/View;
    .end local v17           #right_bkg:I
    :cond_4
    :goto_6
    if-eqz v18, :cond_13

    const/16 v19, 0x1

    :goto_7
    return v19

    .line 745
    .end local v8           #context:Landroid/content/Context;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 748
    or-int v18, v18, v4

    goto/16 :goto_0

    .line 767
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    if-nez v9, :cond_7

    .line 771
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 773
    :cond_7
    or-int v18, v18, v2

    goto/16 :goto_1

    .line 791
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 794
    if-nez v9, :cond_9

    .line 795
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 797
    :cond_9
    or-int v18, v18, v3

    goto/16 :goto_2

    .line 806
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 808
    :cond_b
    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/app/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 815
    .restart local v8       #context:Landroid/content/Context;
    :catch_0
    move-exception v10

    .line 816
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 836
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #button_skin:Landroid/content/res/ColorStateList;
    .restart local v7       #center_bkg:I
    .restart local v11       #left_bkg:I
    .restart local v12       #mRes:Landroid/content/res/Resources;
    .restart local v17       #right_bkg:I
    :cond_c
    const v5, 0x20300e9

    .restart local v5       #button_font_style:I
    goto/16 :goto_5

    .line 860
    .restart local v16       #padding4:Landroid/view/View;
    :cond_d
    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    .line 865
    :cond_e
    move/from16 v0, v18

    if-ne v0, v3, :cond_f

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    .line 870
    :cond_f
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 878
    :cond_10
    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 886
    :cond_11
    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 894
    :cond_12
    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v5}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 909
    .end local v5           #button_font_style:I
    .end local v6           #button_skin:Landroid/content/res/ColorStateList;
    .end local v7           #center_bkg:I
    .end local v11           #left_bkg:I
    .end local v12           #mRes:Landroid/content/res/Resources;
    .end local v16           #padding4:Landroid/view/View;
    .end local v17           #right_bkg:I
    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_7
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "contentPanel"

    .prologue
    const v6, 0x2020050

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 692
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 693
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 696
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x2020051

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 697
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    const v2, 0x2030087

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 711
    iget v0, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 719
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 721
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 725
    :cond_4
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v10, 0x202004b

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 617
    const/4 v1, 0x1

    .line 619
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 621
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 624
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 628
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 688
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 630
    :cond_1
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, 0x1

    .line 632
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004c

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 633
    if-eqz v0, :cond_8

    .line 636
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004d

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 638
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/internal/widget/DialogTitle;

    if-eqz v4, :cond_2

    .line 639
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/internal/widget/DialogTitle;

    invoke-virtual {v4}, Lcom/android/internal/widget/DialogTitle;->setNotChangeTextSize()V

    .line 643
    :cond_2
    iget-boolean v4, p0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_3

    .line 644
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 645
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    const v7, 0x203007c

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 650
    :cond_3
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget v4, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    if-lez v4, :cond_6

    .line 657
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 675
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 676
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_5
    move v0, v5

    .line 630
    goto :goto_1

    .line 659
    .restart local v0       #hasTextTitle:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 660
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 662
    :cond_7
    iget v4, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    if-nez v4, :cond_4

    .line 667
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 671
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 682
    :cond_8
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 683
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 20

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x202004f

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 527
    .local v5, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/app/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/htc/app/HtcAlertController;->setupButtons()Z

    move-result v7

    .line 530
    .local v7, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x202004a

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 536
    .local v4, topPanel:Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    .line 538
    .local v14, htcContext:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 543
    :goto_0
    const/4 v3, 0x0

    sget-object v17, Lcom/htc/R$styleable;->AlertDialog:[I

    const v18, 0x2010078

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 547
    .local v8, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/app/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v9

    .line 548
    .local v9, hasTitle:Z
    if-nez v9, :cond_0

    .line 549
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x2020054

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 552
    .local v10, buttonPanel:Landroid/view/View;
    if-nez v7, :cond_1

    if-nez v9, :cond_1

    .line 553
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_1
    const/4 v6, 0x0

    .line 557
    .local v6, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x2020052

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #customPanel:Landroid/widget/FrameLayout;
    check-cast v6, Landroid/widget/FrameLayout;

    .line 559
    .restart local v6       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x2020053

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 560
    .local v11, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_2

    .line 562
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/HtcAlertController;->mViewSpacingBottom:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v3, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 565
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 566
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 575
    .end local v11           #custom:Landroid/widget/FrameLayout;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 576
    .local v12, dm:Landroid/util/DisplayMetrics;
    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v17, 0x1e0

    move/from16 v0, v17

    if-ne v3, v0, :cond_4

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v17, 0x320

    move/from16 v0, v17

    if-eq v3, v0, :cond_7

    :cond_4
    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v17, 0x320

    move/from16 v0, v17

    if-ne v3, v0, :cond_5

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v17, 0x1e0

    move/from16 v0, v17

    if-eq v3, v0, :cond_7

    :cond_5
    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v17, 0x400

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v17, 0x258

    move/from16 v0, v17

    if-eq v3, v0, :cond_7

    :cond_6
    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v17, 0x258

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v17, 0x400

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    .line 581
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x2020053

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 582
    .restart local v11       #custom:Landroid/widget/FrameLayout;
    const v3, 0x102000d

    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 584
    .local v16, prog:Landroid/view/View;
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    .line 586
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v15, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 587
    .local v15, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    const/16 v17, 0x0

    const/16 v18, 0xf

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v3, v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 588
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    if-eqz v11, :cond_8

    .line 590
    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v3, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 602
    .end local v11           #custom:Landroid/widget/FrameLayout;
    .end local v15           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16           #prog:Landroid/view/View;
    :cond_8
    :goto_2
    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 603
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x202004e

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    :cond_a
    move-object/from16 v3, p0

    .line 612
    invoke-direct/range {v3 .. v10}, Lcom/htc/app/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 613
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 614
    return-void

    .line 539
    .end local v6           #customPanel:Landroid/widget/FrameLayout;
    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v9           #hasTitle:Z
    .end local v10           #buttonPanel:Landroid/view/View;
    .end local v12           #dm:Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v13

    .line 540
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 569
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #customPanel:Landroid/widget/FrameLayout;
    .restart local v8       #a:Landroid/content/res/TypedArray;
    .restart local v9       #hasTitle:Z
    .restart local v10       #buttonPanel:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v17, 0x2020052

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 593
    .restart local v11       #custom:Landroid/widget/FrameLayout;
    .restart local v12       #dm:Landroid/util/DisplayMetrics;
    .restart local v16       #prog:Landroid/view/View;
    :cond_c
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v3, :cond_8

    .line 594
    if-eqz v11, :cond_8

    .line 595
    const/4 v3, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v3, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 474
    packed-switch p1, :pswitch_data_0

    .line 482
    :cond_0
    :goto_0
    return-object v0

    .line 476
    :pswitch_0
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v1, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 474
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
    .line 467
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mPadding1:Landroid/view/View;

    return-object v0
.end method

.method public getPadding2()Landroid/view/View;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mPadding2:Landroid/view/View;

    return-object v0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mPadding3:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 10

    .prologue
    const/high16 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 251
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 253
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v4}, Lcom/htc/app/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 258
    :cond_1
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x209000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 259
    invoke-direct {p0}, Lcom/htc/app/HtcAlertController;->setupView()V

    .line 261
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x202004a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 262
    .local v2, topPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 263
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 264
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-boolean v4, p0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_3

    .line 265
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x2020049

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, parentPanel:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    :cond_2
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3f6147ae

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 270
    .local v3, width:I
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3, v8}, Landroid/view/Window;->setLayout(II)V

    .line 279
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #parentPanel:Landroid/view/View;
    .end local v3           #width:I
    :goto_0
    return-void

    .line 271
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_3
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_4

    .line 272
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 274
    :cond_4
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 278
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_5
    iget-object v4, p0, Lcom/htc/app/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 491
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
    .line 498
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 499
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
    .line 359
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 363
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :pswitch_0
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 367
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 383
    :goto_0
    return-void

    .line 371
    :pswitch_1
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 372
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 376
    :pswitch_2
    iput-object p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 377
    iput-object p4, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 363
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
    .line 391
    packed-switch p1, :pswitch_data_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 408
    :goto_0
    return-void

    .line 398
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 402
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/app/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 391
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
    .line 295
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 296
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 434
    iput p1, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    .line 435
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 436
    if-lez p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/app/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    if-nez p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 450
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mForceInverseBackground:Z

    .line 461
    return-void
.end method

.method public setIsAutoMotive(Z)V
    .locals 0
    .parameter "isAutoMotive"

    .prologue
    .line 1119
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mIsAutoMotive:Z

    .line 1120
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 303
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 314
    iput p2, p0, Lcom/htc/app/HtcAlertController;->mAutoLinkMask:I

    .line 316
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 318
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 286
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/app/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mTitleCenter:Z

    .line 425
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/htc/app/HtcAlertController;->mTitleDivider:Z

    .line 417
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 329
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
    .line 336
    iput-object p1, p0, Lcom/htc/app/HtcAlertController;->mView:Landroid/view/View;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingSpecified:Z

    .line 338
    iput p2, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingLeft:I

    .line 339
    iput p3, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingTop:I

    .line 340
    iput p4, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingRight:I

    .line 341
    iput p5, p0, Lcom/htc/app/HtcAlertController;->mViewSpacingBottom:I

    .line 342
    return-void
.end method
